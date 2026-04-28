import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../messages/presentation/chat_screen.dart';
import 'approve_pay_screen.dart';
import 'invite_to_bid_screen.dart';

class BidDetailScreen extends StatelessWidget {
  const BidDetailScreen({super.key, required this.bidId});
  final String bidId;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('Bid Details')),
      body: SafeArea(
        child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          future: FirebaseFirestore.instance.collection('bids').doc(bidId).get(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('Failed to load bid: ${snapshot.error}'));
            }
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            final data = snapshot.data!.data();
            if (data == null) {
              return const Center(child: Text('Bid not found.'));
            }

            final projectTitle = (data['projectTitle'] ?? 'Project') as String;
            final amount = data['amountLkr'];
            final timeline = data['timelineMonths'];
            final status = (data['status'] ?? 'unknown') as String;
            final projectId = data['projectId'] as String?;

            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(projectTitle, style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                Text(
                  'Status: ${status.replaceAll('_', ' ')}',
                  style: const TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 14),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Amount: ${amount == null ? '-' : 'LKR $amount'}'),
                        const SizedBox(height: 6),
                        Text('Timeline: ${timeline == null ? '-' : '$timeline months'}'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                FilledButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(chatId: bidId),
                      ),
                    );
                  },
                  icon: const Icon(Icons.chat_bubble_outline),
                  label: const Text('Secure Chat'),
                ),
                const SizedBox(height: 10),
                OutlinedButton.icon(
                  onPressed: projectId == null
                      ? null
                      : () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => InviteToBidScreen(projectId: projectId),
                            ),
                          );
                        },
                  icon: const Icon(Icons.send_outlined),
                  label: const Text('Invite / Request Update'),
                ),
                const SizedBox(height: 10),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ApprovePayScreen(bidId: bidId),
                      ),
                    );
                  },
                  icon: const Icon(Icons.payment_outlined),
                  label: const Text('Approve & Pay'),
                ),
              ],
            );
          },
        ),
      ),
    );
}

