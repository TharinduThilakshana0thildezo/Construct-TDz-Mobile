import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/models/app_user.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/ui_components/animated_entrance.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key, required this.uid});
  final String uid;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _step = 0;
  UserRole? _role;
  bool _isSaving = false;

  String _roleToString(UserRole role) {
    switch (role) {
      case UserRole.admin:
        return 'admin';
      case UserRole.contractor:
        return 'contractor';
      case UserRole.engineer:
        return 'engineer';
      case UserRole.client:
        return 'client';
    }
  }

  Future<void> _finish() async {
    final role = _role;
    if (role == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select your role to continue.')),
        );
      }
      return;
    }

    setState(() => _isSaving = true);
    try {
      final authUser = FirebaseAuth.instance.currentUser;
      final email = authUser?.email ?? '';
      final displayName = email.isEmpty ? '' : email.split('@').first.trim();

      await FirebaseFirestore.instance.collection('users').doc(widget.uid).set({
        'uid': widget.uid,
        'email': email,
        'displayName': displayName,
        'role': _roleToString(role),
        'onboardingCompleted': true,
        'createdAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Failed to save setup: $e')));
      }
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          if (_step > 0) setState(() => _step--);
        },
      ),
      actions: [
        if (_step == 0)
          TextButton(
            onPressed: () => setState(() => _step = 1),
            child: Text(
              'Skip',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                fontSize: 12,
              ),
            ),
          ),
      ],
    ),
    body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (_step == 0) ...[
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 40),
                    child: _buildStepHeader(
                      context,
                      1,
                      'Why choose ConstructionLK',
                    ),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 120),
                    child: _heroBlock(context),
                  ),
                  const SizedBox(height: 24),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 180),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        children: const [
                          TextSpan(text: 'Build with '),
                          TextSpan(
                            text: 'confidence',
                            style: TextStyle(color: AppTheme.gold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 220),
                    child: Text(
                      'Securely post projects, review proposals, and manage trusted professionals.',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(138),
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 280),
                    child: _infoCard(
                      icon: Icons.lock_outline,
                      title: 'Post Projects Securely',
                      description:
                          'Create your project details are protected with high-level encryption and privacy protocols.',
                    ),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 340),
                    child: _infoCard(
                      icon: Icons.verified_user_outlined,
                      title: 'Verified Contractors',
                      description:
                          "Access an exclusive network of Sri Lanka's top-tier contractors and tradesmen.",
                    ),
                  ),
                  const SizedBox(height: 48),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 400),
                    child: FilledButton(
                      onPressed: () => setState(() => _step = 1),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Get started '),
                          Icon(Icons.arrow_forward_ios, size: 14),
                        ],
                      ),
                    ),
                  ),
                ] else if (_step == 1) ...[
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 40),
                    child: _buildStepHeader(context, 2, 'Choose your role'),
                  ),
                  const SizedBox(height: 12),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 120),
                    child: _heroBlock(context),
                  ),
                  const SizedBox(height: 24),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 180),
                    child: Text(
                      'Tell us how you use ConstructionLK',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(138),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 220),
                    child: Text(
                      'I am here as a...',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 260),
                    child: Text(
                      'We will tailor projects, suggestions, and support for your role.',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(138),
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 320),
                    child: _roleTile(
                      label: 'Client',
                      description:
                          'Building my dream project, I want to hire professionals.',
                      selected: _role == UserRole.client,
                      icon: Icons.home_work_outlined,
                      onTap: () => setState(() => _role = UserRole.client),
                    ),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 380),
                    child: _roleTile(
                      label: 'Contractor',
                      description:
                          'Executing construction work, I want to find projects.',
                      selected: _role == UserRole.contractor,
                      icon: Icons.construction_outlined,
                      onTap: () => setState(() => _role = UserRole.contractor),
                    ),
                  ),
                  const SizedBox(height: 48),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 440),
                    child: FilledButton(
                      onPressed: _role == null
                          ? null
                          : () => setState(() => _step = 2),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Continue'),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, size: 18),
                        ],
                      ),
                    ),
                  ),
                ] else ...[
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 40),
                    child: _buildStepHeader(context, 3, 'Finish setup'),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 120),
                    child: _heroBlock(context),
                  ),
                  const SizedBox(height: 24),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 180),
                    child: Text(
                      'Almost there',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 220),
                    child: Text(
                      'Finish onboarding so we can personalize your feed and security settings.',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(138),
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 280),
                    child: FilledButton(
                      onPressed: _isSaving ? null : _finish,
                      child: _isSaving
                          ? SizedBox(
                              height: 18,
                              width: 18,
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
                          : const Text('Finish setup'),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    ),
  );

  Widget _infoCard({
    required IconData icon,
    required String title,
    required String description,
  }) => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Theme.of(context).cardTheme.color,
      borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      border: Border.all(
        color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppTheme.gold, size: 28),
        const SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(
            fontSize: 13,
            color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
            height: 1.4,
          ),
        ),
      ],
    ),
  );

  Widget _roleTile({
    required String label,
    required String description,
    required bool selected,
    required IconData icon,
    required VoidCallback onTap,
  }) => InkWell(
    borderRadius: BorderRadius.circular(AppTheme.radiusLg),
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(AppTheme.radiusLg),
        border: Border.all(
          color: selected
              ? AppTheme.gold
              : (Theme.of(context).dividerTheme.color ?? Colors.transparent),
          width: selected ? 2 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: selected
                    ? AppTheme.gold
                    : Theme.of(context).colorScheme.onSurface.withAlpha(138),
                size: 24,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: selected
                        ? AppTheme.gold
                        : Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              if (selected)
                const Icon(Icons.check_circle, color: AppTheme.gold),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: TextStyle(
              fontSize: 13,
              color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildStepHeader(BuildContext context, int stepNumber, String title) =>
      Row(
        children: [
          Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppTheme.gold.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Text(
              '$stepNumber',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppTheme.gold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
            ),
          ),
        ],
      );

  Widget _heroBlock(BuildContext context) => Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppTheme.gold.withAlpha(26),
          Theme.of(context).cardTheme.color ?? Colors.white,
        ],
      ),
      borderRadius: BorderRadius.circular(AppTheme.radiusXl),
      border: Border.all(color: AppTheme.gold.withAlpha(48)),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: AppTheme.gold,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.construction_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trusted construction workflows',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Post, bid, chat, and manage work from one secure workspace.',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
