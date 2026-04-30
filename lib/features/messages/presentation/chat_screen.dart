import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../utils/chat_title_resolver.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
    required this.chatId,
    this.title,
    this.subtitle,
  });
  final String chatId;
  final String? title;
  final String? subtitle;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messageController = TextEditingController();
  bool _sending = false;
  late final Future<String> _resolvedTitleFuture = _loadResolvedTitle();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  encrypt.Encrypter _encrypter() {
    final digest = sha256.convert(utf8.encode(widget.chatId)).bytes;
    final key = encrypt.Key(Uint8List.fromList(digest));
    return encrypt.Encrypter(encrypt.AES(key, mode: encrypt.AESMode.cbc));
  }

  Future<String> _loadResolvedTitle() async {
    final userId = FirebaseAuth.instance.currentUser?.uid;
    final chatSnapshot = await FirebaseFirestore.instance
        .collection('chats')
        .doc(widget.chatId)
        .get();
    final chatData = chatSnapshot.data();
    if (chatData == null) {
      return widget.title ?? widget.chatId.replaceAll('_', ' ');
    }

    return resolveChatTitle(
      chatData: chatData,
      chatId: widget.chatId,
      currentUserId: userId,
    );
  }

  String? _decryptFromFirestore(Map<String, dynamic> data) {
    final encryptedText = data['encryptedText'] as String?;
    final ivBase64 = data['iv'] as String?;
    if (encryptedText == null || ivBase64 == null) return null;

    try {
      final iv = encrypt.IV.fromBase64(ivBase64);
      final decrypted = _encrypter().decrypt(
        encrypt.Encrypted.fromBase64(encryptedText),
        iv: iv,
      );
      return decrypted;
    } catch (_) {
      return null;
    }
  }

  Future<void> _send() async {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    setState(() => _sending = true);
    try {
      final encrypter = _encrypter();
      final iv = encrypt.IV.fromSecureRandom(16);
      final encrypted = encrypter.encrypt(text, iv: iv);

      await FirebaseFirestore.instance
          .collection('chats')
          .doc(widget.chatId)
          .collection('messages')
          .add({
            'senderId': user.uid,
            'encryptedText': encrypted.base64,
            'iv': iv.base64,
            'createdAt': FieldValue.serverTimestamp(),
          });

      _messageController.clear();
    } finally {
      if (mounted) setState(() => _sending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final headerSubtitle = widget.subtitle ?? 'Secure encrypted channel';

    return FutureBuilder<String>(
      future: _resolvedTitleFuture,
      builder: (context, titleSnapshot) {
        final headerTitle =
            titleSnapshot.data ??
            widget.title ??
            widget.chatId.replaceAll('_', ' ');

        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, size: 18),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Column(
              children: [
                Text(headerTitle, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 2),
                Text(
                  headerSubtitle,
                  style: const TextStyle(
                    fontSize: 10,
                    color: AppTheme.gold,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            centerTitle: true,
            actions: [
              IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  stream: FirebaseFirestore.instance
                      .collection('chats')
                      .doc(widget.chatId)
                      .collection('messages')
                      .orderBy('createdAt', descending: true)
                      .limit(50)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'Failed to load messages: ${snapshot.error}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      );
                    }
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(color: AppTheme.gold),
                      );
                    }

                    final docs = snapshot.data!.docs;
                    if (docs.isEmpty) {
                      return Center(
                        child: Text(
                          'No messages yet. Send the first encrypted message.',
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withAlpha(138),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    }

                    // Firestore query is descending; however, ListView defaults to top-down.
                    // We'll use reverse: true on the ListView to make it start from bottom.
                    return ListView.builder(
                      reverse: true,
                      padding: const EdgeInsets.all(16),
                      itemCount: docs.length,
                      itemBuilder: (context, index) {
                        final data = docs[index].data();
                        final messageText =
                            _decryptFromFirestore(data) ??
                            'Unable to decrypt message.';
                        final isMe = (data['senderId'] ?? '') == user?.uid;

                        return Align(
                          alignment: isMe
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.75,
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: isMe
                                  ? AppTheme.gold
                                  : Theme.of(context).cardTheme.color,
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(16),
                                topRight: const Radius.circular(16),
                                bottomLeft: isMe
                                    ? const Radius.circular(16)
                                    : Radius.zero,
                                bottomRight: isMe
                                    ? Radius.zero
                                    : const Radius.circular(16),
                              ),
                              border: isMe
                                  ? null
                                  : Border.all(
                                      color:
                                          Theme.of(
                                            context,
                                          ).dividerTheme.color ??
                                          Colors.transparent,
                                    ),
                            ),
                            child: Text(
                              messageText,
                              style: TextStyle(
                                color: isMe
                                    ? Colors.black
                                    : Theme.of(context).colorScheme.onSurface,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardTheme.color,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color:
                                  Theme.of(context).dividerTheme.color ??
                                  Colors.transparent,
                            ),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.attach_file,
                                  color: AppTheme.mutedOnSurface(context),
                                ),
                                onPressed: () {},
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _messageController,
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurface,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Message $headerTitle...',
                                    hintStyle: TextStyle(
                                      color: AppTheme.mutedOnSurface(
                                        context,
                                        opacity: 0.24,
                                      ),
                                      fontSize: 13,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: _sending ? null : _send,
                        child: Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            color: AppTheme.gold,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: _sending
                              ? SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color:
                                        Theme.of(context)
                                            .filledButtonTheme
                                            .style
                                            ?.foregroundColor
                                            ?.resolve({}) ??
                                        Colors.black,
                                  ),
                                )
                              : const Icon(
                                  Icons.send_rounded,
                                  color: Colors.black,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
