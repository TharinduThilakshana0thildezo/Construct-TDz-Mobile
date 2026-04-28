import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ApprovePayScreen extends StatefulWidget {
  const ApprovePayScreen({super.key, required this.bidId});
  final String bidId;

  @override
  State<ApprovePayScreen> createState() => _ApprovePayScreenState();
}

class _ApprovePayScreenState extends State<ApprovePayScreen> {
  bool _processing = false;

  Future<void> _approve() async {
    setState(() => _processing = true);
    try {
      final bidSnap =
          await FirebaseFirestore.instance.collection('bids').doc(widget.bidId).get();
      final bid = bidSnap.data();
      final amount = bid?['amountLkr'];
      final projectId = bid?['projectId'];

      await FirebaseFirestore.instance.collection('payments').add({
        'bidId': widget.bidId,
        'projectId': projectId,
        'amountLkr': amount,
        'status': 'approved',
        'createdAt': FieldValue.serverTimestamp(),
      });

      await FirebaseFirestore.instance.collection('bids').doc(widget.bidId).set({
        'status': 'approved',
        'updatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Approved & payment recorded (demo).')),
      );
    } finally {
      if (mounted) setState(() => _processing = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('Approve & Pay')),
      body: SafeArea(
        child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          future: FirebaseFirestore.instance.collection('bids').doc(widget.bidId).get(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('Failed to load payment: ${snapshot.error}'));
            }
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            final data = snapshot.data!.data();
            final amount = data?['amountLkr'];
            final projectTitle = (data?['projectTitle'] ?? 'Project') as String;

            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(
                  projectTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10),
                Text(
                  'Payment amount: ${amount == null ? '-' : 'LKR $amount'}',
                  style: const TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 16),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Text(
                      'Demo note: This screen records an approval in Firestore. If you need real payments, integrate Stripe/PayHere and store only the transaction reference.',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                FilledButton.icon(
                  onPressed: _processing ? null : _approve,
                  icon: const Icon(Icons.check_circle_outline),
                  label: _processing
                      ? const SizedBox(
                          height: 18,
                          width: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Approve & Pay'),
                ),
              ],
            );
          },
        ),
      ),
    );
}

