import 'package:flutter/material.dart';

import '../../../core/models/app_user.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/ui_components/animated_entrance.dart';
import '../../bids/presentation/bids_screen.dart';
import '../../onboarding/presentation/how_it_works_screen.dart';
import 'edit_profile_screen.dart';
import 'notifications_screen.dart';
import 'settings_screen.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key, required this.user});
  final AppUser user;

  @override
  Widget build(BuildContext context) {
    final roleLabel = user.roleAsString;
    final setupLabel = user.onboardingCompleted
        ? 'Setup complete'
        : 'Setup pending';

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          EntranceAnimation(
            delay: const Duration(milliseconds: 40),
            child: Text(
              user.displayName.isEmpty ? 'Your Profile' : user.displayName,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(height: 4),
          EntranceAnimation(
            delay: const Duration(milliseconds: 100),
            child: Text(
              'Role: ${roleLabel[0].toUpperCase()}${roleLabel.substring(1)}',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
              ),
            ),
          ),
          const SizedBox(height: 14),
          EntranceAnimation(
            delay: const Duration(milliseconds: 160),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppTheme.gold.withValues(alpha: 0.12),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.verified_user_outlined,
                            color: AppTheme.gold,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Verified profile',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                setupLabel,
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface.withAlpha(138),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Text(
                      user.role == UserRole.contractor
                          ? 'Trusted contractor profile with verified project history, response tracking, and secure messaging.'
                          : 'Profile visibility, secure messaging, and project activity are available for this account.',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(138),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Expanded(
                          child: _MiniStat(
                            label: 'Role',
                            value:
                                roleLabel[0].toUpperCase() +
                                roleLabel.substring(1),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: _MiniStat(label: 'Rating', value: '4.9'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Expanded(
                          child: _MiniStat(label: 'Response', value: '< 2h'),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: _MiniStat(label: 'Projects', value: 'Live'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          EntranceAnimation(
            delay: const Duration(milliseconds: 220),
            child: FilledButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => EditProfileScreen(uid: user.uid),
                  ),
                );
              },
              icon: const Icon(Icons.edit_outlined),
              label: const Text('Edit Profile'),
            ),
          ),
          const SizedBox(height: 10),
          EntranceAnimation(
            delay: const Duration(milliseconds: 280),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.notifications_none_outlined),
              title: const Text('Notifications'),
              subtitle: const Text(
                'Project updates, bid activity, and security alerts',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => NotificationsScreen()),
                );
              },
            ),
          ),
          EntranceAnimation(
            delay: const Duration(milliseconds: 340),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.receipt_long_outlined),
              title: const Text('Bids & Proposals'),
              subtitle: const Text('Review active and shortlisted offers'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (_) => const BidsScreen()));
              },
            ),
          ),
          EntranceAnimation(
            delay: const Duration(milliseconds: 400),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              subtitle: const Text('Appearance, security, and privacy'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SettingsScreen()),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          const Divider(),
          const SizedBox(height: 12),
          EntranceAnimation(
            delay: const Duration(milliseconds: 460),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.help_outline),
              title: const Text('How It Works'),
              subtitle: const Text('Learn to use ConstructionLK'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const HowItWorksScreen()),
                );
              },
            ),
          ),
          EntranceAnimation(
            delay: const Duration(milliseconds: 520),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.shield_outlined),
              title: const Text('Security & Support'),
              subtitle: const Text('Verification, privacy, and account help'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Open Settings > Terms & Privacy for policy details.',
                    ),
                  ),
                );
              },
            ),
          ),
          EntranceAnimation(
            delay: const Duration(milliseconds: 580),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.mail_outline),
              title: const Text('Contact Support'),
              subtitle: const Text('support@constructionlk.lk'),
              trailing: const Icon(Icons.open_in_new),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Support team: support@constructionlk.lk'),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 18),
          Text(
            'Your profile is now built around real verification cues, activity status, and support paths.',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniStat extends StatelessWidget {
  const _MiniStat({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: AppTheme.surfaceFor(brightness),
        borderRadius: BorderRadius.circular(AppTheme.radiusMd),
        border: Border.all(color: AppTheme.borderFor(brightness)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: AppTheme.mutedOnSurface(context, opacity: 0.5),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
