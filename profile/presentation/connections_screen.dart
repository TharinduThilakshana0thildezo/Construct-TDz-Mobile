import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/theme/app_theme.dart';
import '../../messages/presentation/chat_screen.dart';

class ConnectionsScreen extends StatefulWidget {
  const ConnectionsScreen({super.key});

  @override
  State<ConnectionsScreen> createState() => _ConnectionsScreenState();
}

class _ConnectionsScreenState extends State<ConnectionsScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  bool _showMyNetwork = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String _connectionId(String clientId, String professionalId) =>
      '${clientId}_$professionalId';

  String _chatIdFor(String left, String right) {
    final pair = [left, right]..sort();
    return 'direct_${pair[0]}_${pair[1]}';
  }

  Future<void> _connectWithProfessional({
    required String clientId,
    required String professionalId,
    required String professionalName,
  }) async {
    final connectionId = _connectionId(clientId, professionalId);

    await FirebaseFirestore.instance
        .collection('connections')
        .doc(connectionId)
        .set({
          'connectionId': connectionId,
          'clientId': clientId,
          'professionalId': professionalId,
          'professionalName': professionalName,
          'status': 'accepted',
          'createdAt': FieldValue.serverTimestamp(),
          'updatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));

    await FirebaseFirestore.instance.collection('users').doc(clientId).set({
      'connectedProfessionalIds': FieldValue.arrayUnion([professionalId]),
      'updatedAt': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));

    await FirebaseFirestore.instance
        .collection('users')
        .doc(professionalId)
        .set({
          'followerClientIds': FieldValue.arrayUnion([clientId]),
          'updatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
  }

  Future<void> _openDirectChat({
    required String currentUid,
    required String currentRole,
    required String professionalId,
    required String professionalName,
  }) async {
    final chatId = _chatIdFor(currentUid, professionalId);

    await FirebaseFirestore.instance.collection('chats').doc(chatId).set({
      'chatId': chatId,
      'participants': [currentUid, professionalId],
      'title': professionalName,
      'projectId': null,
      'chatType': 'direct_connection',
      'openedByRole': currentRole,
      'lastMessage': null,
      'lastMessageAt': FieldValue.serverTimestamp(),
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));

    if (!mounted) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ChatScreen(
          chatId: chatId,
          title: professionalName,
          subtitle: 'Direct connection chat',
        ),
      ),
    );
  }

  Future<void> _showRatingDialog({
    required String reviewerId,
    required String revieweeId,
    required String revieweeName,
  }) async {
    var rating = 5.0;
    final noteController = TextEditingController();

    final submitted = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (dialogContext, setDialogState) => AlertDialog(
            title: Text('Rate $revieweeName'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rating: ${rating.toStringAsFixed(0)} / 5'),
                Slider(
                  value: rating,
                  min: 1,
                  max: 5,
                  divisions: 4,
                  label: rating.toStringAsFixed(0),
                  onChanged: (value) {
                    setDialogState(() => rating = value);
                  },
                ),
                TextField(
                  controller: noteController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: 'Review note',
                    hintText: 'Share your experience...',
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(false),
                child: const Text('Cancel'),
              ),
              FilledButton(
                onPressed: () => Navigator.of(dialogContext).pop(true),
                child: const Text('Submit'),
              ),
            ],
          ),
        );
      },
    );

    if (submitted != true) return;

    final score = rating.round();
    final reviewId = FirebaseFirestore.instance.collection('reviews').doc().id;
    await FirebaseFirestore.instance.collection('reviews').doc(reviewId).set({
      'reviewId': reviewId,
      'projectId': 'connection_$revieweeId',
      'reviewerId': reviewerId,
      'revieweId': revieweeId,
      'qualityRating': score,
      'punctualityRating': score,
      'communicationRating': score,
      'professionalismRating': score,
      'narrative': noteController.text.trim().isEmpty
          ? null
          : noteController.text.trim(),
      'photoUrls': <String>[],
      'isVerified': true,
      'helpful': false,
      'response': null,
      'responseAt': null,
      'createdAt': FieldValue.serverTimestamp(),
      'source': 'social_connection',
    });

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Rating submitted successfully.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Discover Professionals',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: currentUser == null
          ? const Center(child: Text('Please sign in to manage connections.'))
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: _viewToggle(
                              label: 'Discover',
                              selected: !_showMyNetwork,
                              onTap: () =>
                                  setState(() => _showMyNetwork = false),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: _viewToggle(
                              label: 'My Network',
                              selected: _showMyNetwork,
                              onTap: () =>
                                  setState(() => _showMyNetwork = true),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search constructors, engineers...',
                          prefixIcon: const Icon(Icons.search, size: 20),
                          suffixIcon: _searchQuery.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear, size: 18),
                                  onPressed: () {
                                    _searchController.clear();
                                    setState(() => _searchQuery = '');
                                  },
                                )
                              : null,
                        ),
                        onChanged: (val) =>
                            setState(() => _searchQuery = val.toLowerCase()),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _showMyNetwork
                      ? _myNetworkList(currentUser.uid)
                      : _discoverList(currentUser.uid),
                ),
              ],
            ),
    );
  }

  Widget _viewToggle({
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: selected ? AppTheme.gold : Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(AppTheme.radiusMd),
          border: Border.all(
            color: selected
                ? Colors.transparent
                : (Theme.of(context).dividerTheme.color ?? Colors.transparent),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: selected
                ? Colors.black
                : Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }

  Widget _discoverList(String currentUid) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
          .collection('users')
          .doc(currentUid)
          .snapshots(),
      builder: (context, meSnapshot) {
        final myRole = (meSnapshot.data?.data()?['role'] ?? 'client')
            .toString();

        return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance
              .collection('users')
              .where('role', whereIn: ['contractor', 'engineer'])
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Error: ${snapshot.error}',
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              );
            }
            if (!snapshot.hasData) {
              return _buildShimmerList();
            }

            final docs = snapshot.data!.docs.where((doc) {
              if (doc.id == currentUid) return false;
              if (_searchQuery.isEmpty) return true;
              final name = (doc.data()['displayName'] ?? '')
                  .toString()
                  .toLowerCase();
              return name.contains(_searchQuery);
            }).toList();

            if (docs.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_search_outlined,
                      size: 64,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withAlpha(61),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No professionals found.',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(138),
                      ),
                    ),
                  ],
                ),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: docs.length,
              itemBuilder: (context, index) {
                final doc = docs[index];
                final data = doc.data();
                final professionalId = doc.id;
                final name = (data['displayName'] ?? 'Professional') as String;
                final role = (data['role'] ?? 'contractor').toString();
                final email = (data['email'] ?? '') as String;

                return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                  stream: FirebaseFirestore.instance
                      .collection('connections')
                      .doc(_connectionId(currentUid, professionalId))
                      .snapshots(),
                  builder: (context, connectionSnapshot) {
                    final isConnected =
                        connectionSnapshot.data?.exists ?? false;

                    return Card(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppTheme.gold.withAlpha(30),
                                  child: Text(
                                    name.isNotEmpty
                                        ? name[0].toUpperCase()
                                        : 'P',
                                    style: const TextStyle(
                                      color: AppTheme.gold,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        role == 'contractor'
                                            ? 'CONSTRUCTOR'
                                            : role.toUpperCase(),
                                        style: const TextStyle(
                                          color: AppTheme.gold,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        email,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withAlpha(138),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            if (myRole == 'client')
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: [
                                  FilledButton(
                                    onPressed: isConnected
                                        ? null
                                        : () async {
                                            await _connectWithProfessional(
                                              clientId: currentUid,
                                              professionalId: professionalId,
                                              professionalName: name,
                                            );
                                            if (!context.mounted) return;
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Added $name to your network.',
                                                ),
                                              ),
                                            );
                                          },
                                    style: FilledButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      minimumSize: Size.zero,
                                    ),
                                    child: Text(isConnected ? 'Added' : 'Add'),
                                  ),
                                  OutlinedButton(
                                    onPressed: () => _openDirectChat(
                                      currentUid: currentUid,
                                      currentRole: myRole,
                                      professionalId: professionalId,
                                      professionalName: name,
                                    ),
                                    child: const Text('Chat'),
                                  ),
                                  OutlinedButton(
                                    onPressed: () => _showRatingDialog(
                                      reviewerId: currentUid,
                                      revieweeId: professionalId,
                                      revieweeName: name,
                                    ),
                                    child: const Text('Rate'),
                                  ),
                                ],
                              )
                            else
                              Text(
                                'Only clients can connect, chat, and rate professionals.',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface.withAlpha(138),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _myNetworkList(String currentUid) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
          .collection('connections')
          .where('clientId', isEqualTo: currentUid)
          .where('status', isEqualTo: 'accepted')
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error: ${snapshot.error}',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          );
        }
        if (!snapshot.hasData) {
          return _buildShimmerList();
        }

        final connections = snapshot.data!.docs;
        if (connections.isEmpty) {
          return Center(
            child: Text(
              'Your network is empty. Add professionals from Discover.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
              ),
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: connections.length,
          itemBuilder: (context, index) {
            final connectionData = connections[index].data();
            final professionalId =
                (connectionData['professionalId'] ?? '') as String;

            return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              future: FirebaseFirestore.instance
                  .collection('users')
                  .doc(professionalId)
                  .get(),
              builder: (context, userSnapshot) {
                if (!userSnapshot.hasData || !userSnapshot.data!.exists) {
                  return const SizedBox.shrink();
                }

                final data =
                    userSnapshot.data!.data() ?? const <String, dynamic>{};
                final name = (data['displayName'] ?? 'Professional') as String;
                final role = (data['role'] ?? 'contractor').toString();

                if (_searchQuery.isNotEmpty &&
                    !name.toLowerCase().contains(_searchQuery)) {
                  return const SizedBox.shrink();
                }

                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: CircleAvatar(
                      backgroundColor: AppTheme.gold.withAlpha(30),
                      child: Text(
                        name.isNotEmpty ? name[0].toUpperCase() : 'P',
                        style: const TextStyle(
                          color: AppTheme.gold,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      role == 'contractor' ? 'CONSTRUCTOR' : role.toUpperCase(),
                      style: const TextStyle(
                        color: AppTheme.gold,
                        fontSize: 11,
                      ),
                    ),
                    trailing: OutlinedButton(
                      onPressed: () => _openDirectChat(
                        currentUid: currentUid,
                        currentRole: 'client',
                        professionalId: professionalId,
                        professionalName: name,
                      ),
                      child: const Text('Chat'),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Shimmer.fromColors(
          baseColor: Theme.of(context).cardTheme.color ?? Colors.grey.shade300,
          highlightColor: Theme.of(context).scaffoldBackgroundColor,
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              color: Theme.of(context).cardTheme.color,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
