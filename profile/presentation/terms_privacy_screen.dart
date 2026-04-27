import 'package:flutter/material.dart';

class TermsPrivacyScreen extends StatelessWidget {
  const TermsPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('Terms & Privacy')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: const [
              Text(
                '1) Secure project posting',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text(
                'Your project details are protected using Firebase security rules. Attachments are stored securely in Firebase Storage.',
              ),
              SizedBox(height: 16),
              Text(
                '2) Encrypted channels (demo)',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text(
                'This starter app demonstrates encrypted message storage. For real end-to-end encryption, implement robust key exchange and verification.',
              ),
              SizedBox(height: 16),
              Text(
                '3) Verified contractors',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text(
                'Contractors are verified by authority checks. Verification status can be managed in Firestore.',
              ),
            ],
          ),
        ),
      ),
    );
}

