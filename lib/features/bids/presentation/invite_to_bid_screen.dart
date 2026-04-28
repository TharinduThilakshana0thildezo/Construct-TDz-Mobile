import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InviteToBidScreen extends StatefulWidget {
  const InviteToBidScreen({super.key, required this.projectId});
  final String projectId;

  @override
  State<InviteToBidScreen> createState() => _InviteToBidScreenState();
}

class _InviteToBidScreenState extends State<InviteToBidScreen> {
  final _emailController = TextEditingController();
  final _amountController = TextEditingController();
  final _timelineController = TextEditingController();
  final _messageController = TextEditingController();
  bool _sending = false;

  @override
  void dispose() {
    _emailController.dispose();
    _amountController.dispose();
    _timelineController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _sendInvite() async {
    final email = _emailController.text.trim();
    final amount = int.tryParse(_amountController.text.trim());
    final timeline = int.tryParse(_timelineController.text.trim());
    final message = _messageController.text.trim();

    if (email.isEmpty || !email.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enter a valid contractor email.')),
      );
      return;
    }
    if (amount == null || timeline == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enter a valid amount and timeline.')),
      );
      return;
    }

    setState(() => _sending = true);
    try {
      await FirebaseFirestore.instance.collection('bids').add({
        'projectId': widget.projectId,
        'projectTitle': 'Project',
        'contractorEmail': email,
        'contractorId': null,
        'amountLkr': amount,
        'timelineMonths': timeline,
        'message': message,
        'status': 'under_review',
        'createdAt': FieldValue.serverTimestamp(),
      });

      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invite created. Contractors can respond.')),
      );
    } finally {
      if (mounted) setState(() => _sending = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('Invite to Bid')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Text(
                'Project: ${widget.projectId}',
                style: const TextStyle(color: Colors.black54),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Contractor Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Proposed Amount (LKR)',
                  prefixIcon: Icon(Icons.attach_money_outlined),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _timelineController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Timeline (months)',
                  prefixIcon: Icon(Icons.calendar_month_outlined),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _messageController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'Message (optional)',
                  hintText: 'Add constraints, drawings notes, or requirements.',
                ),
              ),
              const SizedBox(height: 18),
              FilledButton(
                onPressed: _sending ? null : _sendInvite,
                child: _sending
                    ? const SizedBox(
                        height: 18,
                        width: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Send Invite'),
              ),
            ],
          ),
        ),
      ),
    );
}
