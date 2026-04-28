import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/ui_components/animated_entrance.dart';
import '../../../core/ui_components/empty_state.dart';
import '../utils/chat_title_resolver.dart';
import 'chat_screen.dart';

class MessagesTab extends StatelessWidget {
  const MessagesTab({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, authSnapshot) {
          final user = authSnapshot.data;
          final chatsQuery = user == null
              ? FirebaseFirestore.instance.collection('chats')
              : FirebaseFirestore.instance
                    .collection('chats')
                    .where('participants', arrayContains: user.uid);

          return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: chatsQuery.snapshots(),
            builder: (context, chatsSnapshot) {
              final docs = chatsSnapshot.data?.docs.toList() ?? [];
              docs.sort((left, right) {
                final leftTime = _timestampValue(left.data()['lastMessageAt']);
                final rightTime = _timestampValue(
                  right.data()['lastMessageAt'],
                );
                return rightTime.compareTo(leftTime);
              });

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Live Conversations',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Active project chats and collaboration threads appear here in real time.',
                    style: TextStyle(
                      color: AppTheme.mutedOnSurface(context),
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: chatsSnapshot.hasError
                        ? Center(
                            child: Text(
                              'Unable to load conversations.',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                          )
                        : docs.isEmpty
                        ? const EmptyState(
                            icon: Icons.chat_bubble_outline,
                            title: 'No conversations yet',
                            description:
                                'Start a project or connect with a professional to open a secure chat.',
                          )
                        : ListView.separated(
                            itemCount: docs.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 12),
                            itemBuilder: (context, index) {
                              final data = docs[index].data();
                              final chatId = docs[index].id;
                              final subtitle = _threadSubtitle(data);
                              final lastMessageAt = _formatThreadTime(
                                data['lastMessageAt'],
                              );

                              return FutureBuilder<String>(
                                future: resolveChatTitle(
                                  chatData: data,
                                  chatId: chatId,
                                  currentUserId: user?.uid,
                                ),
                                builder: (context, titleSnapshot) {
                                  final title =
                                      titleSnapshot.data ??
                                      _threadTitle(data, chatId);

                                  return EntranceAnimation(
                                    delay: Duration(milliseconds: 60 * index),
                                    child: _channelTile(
                                      context: context,
                                      title: title,
                                      subtitle: subtitle,
                                      trailingLabel: lastMessageAt,
                                      onTap: () {
                                        Navigator.of(context).push(
                                          PageRouteBuilder(
                                            pageBuilder:
                                                (
                                                  _,
                                                  animation,
                                                  secondaryAnimation,
                                                ) => ChatScreen(
                                                  chatId: chatId,
                                                  title: title,
                                                  subtitle: subtitle,
                                                ),
                                            transitionsBuilder:
                                                (
                                                  context,
                                                  animation,
                                                  secondaryAnimation,
                                                  child,
                                                ) {
                                                  final curve = CurvedAnimation(
                                                    parent: animation,
                                                    curve: Curves.easeOutCubic,
                                                  );
                                                  return FadeTransition(
                                                    opacity: curve,
                                                    child: SlideTransition(
                                                      position: Tween<Offset>(
                                                        begin: const Offset(
                                                          0.04,
                                                          0,
                                                        ),
                                                        end: Offset.zero,
                                                      ).animate(curve),
                                                      child: child,
                                                    ),
                                                  );
                                                },
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                  ),
                ],
              );
            },
          );
        },
      ),
    ),
  );

  Widget _channelTile({
    required BuildContext context,
    required String title,
    required String subtitle,
    required String trailingLabel,
    required VoidCallback onTap,
  }) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(AppTheme.radiusLg),
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(AppTheme.radiusLg),
        border: Border.all(
          color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppTheme.gold.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.lock_person_outlined,
              color: AppTheme.gold,
              size: 22,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    if (trailingLabel.isNotEmpty)
                      Text(
                        trailingLabel,
                        style: TextStyle(
                          color: AppTheme.mutedOnSurface(
                            context,
                            opacity: 0.38,
                          ),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: AppTheme.mutedOnSurface(context),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.white24, size: 14),
        ],
      ),
    ),
  );

  String _threadTitle(Map<String, dynamic> data, String chatId) {
    final title = data['title'] ?? data['projectTitle'] ?? data['projectName'];
    if (title is String && title.trim().isNotEmpty) return title;
    return chatId.replaceAll('_', ' ');
  }

  String _threadSubtitle(Map<String, dynamic> data) {
    final lastMessage = data['lastMessage'];
    if (lastMessage is String && lastMessage.trim().isNotEmpty) {
      return lastMessage;
    }

    final projectId = data['projectId'];
    if (projectId is String && projectId.isNotEmpty) return 'Project thread';

    return 'Secure channel';
  }

  int _timestampValue(dynamic value) {
    if (value is Timestamp) return value.millisecondsSinceEpoch;
    if (value is DateTime) return value.millisecondsSinceEpoch;
    return 0;
  }

  String _formatThreadTime(dynamic value) {
    final timestamp = _timestampValue(value);
    if (timestamp == 0) return '';
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    final hour = date.hour % 12 == 0 ? 12 : date.hour % 12;
    final minute = date.minute.toString().padLeft(2, '0');
    final period = date.hour >= 12 ? 'PM' : 'AM';
    return '${date.month}/${date.day} $hour:$minute $period';
  }
}
