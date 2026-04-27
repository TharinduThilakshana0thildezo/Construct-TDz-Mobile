import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'terms_privacy_screen.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/theme/theme_service_scope.dart';
import '../../../core/theme/theme_service.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<void> _sendPasswordReset(BuildContext context) async {
    final email = FirebaseAuth.instance.currentUser?.email;
    if (email == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No email found for this account.')),
      );
      return;
    }

    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    if (!context.mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Password reset email sent.')));
  }

  @override
  Widget build(BuildContext context) {
    final themeService = ThemeServiceScope.of(context);
    return AnimatedBuilder(
      animation: themeService,
      builder: (context, _) {
        final mode = themeService.themeMode;
        final onSurfaceVariant = Theme.of(context).colorScheme.onSurfaceVariant;

        return Scaffold(
          appBar: AppBar(title: const Text('Settings')),
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.brightness_6_outlined),
                  title: const Text('Appearance'),
                  subtitle: Text(
                    mode == ThemeMode.system
                        ? 'System'
                        : (mode == ThemeMode.dark ? 'Dark' : 'Light'),
                    style: TextStyle(color: onSurfaceVariant),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => SafeArea(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                'Select theme',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ),
                            _themeOption(
                              context: context,
                              mode: mode,
                              value: ThemeMode.system,
                              label: 'System',
                              themeService: themeService,
                            ),
                            _themeOption(
                              context: context,
                              mode: mode,
                              value: ThemeMode.light,
                              label: 'Light',
                              themeService: themeService,
                            ),
                            _themeOption(
                              context: context,
                              mode: mode,
                              value: ThemeMode.dark,
                              label: 'Dark',
                              themeService: themeService,
                            ),
                            const SizedBox(height: 6),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.lock_reset_outlined),
                  title: const Text('Reset Password'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _sendPasswordReset(context),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.privacy_tip_outlined),
                  title: const Text('Terms & Privacy'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const TermsPrivacyScreen(),
                      ),
                    );
                  },
                ),
                const Divider(height: 24),
                const Text(
                  'Account and support',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                Text(
                  '• View verification and account status\n'
                  '• Manage privacy, security, and theme preferences\n'
                  '• Read support and legal policies\n',
                  style: TextStyle(color: onSurfaceVariant),
                ),
                const SizedBox(height: 16),
                Card(
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppTheme.gold.withValues(alpha: 0.12),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.support_agent_outlined,
                        color: AppTheme.gold,
                      ),
                    ),
                    title: const Text('Support response time'),
                    subtitle: Text(
                      'Typically under 2 hours during business days',
                      style: TextStyle(color: onSurfaceVariant),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _themeOption({
    required BuildContext context,
    required ThemeMode mode,
    required ThemeMode value,
    required String label,
    required ThemeService themeService,
  }) => ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(label),
    trailing: Icon(
      mode == value ? Icons.check_circle : Icons.radio_button_unchecked,
      color: mode == value ? Theme.of(context).colorScheme.primary : null,
    ),
    onTap: () {
      themeService.setThemeMode(value);
      if (!context.mounted) return;
      Navigator.of(context).pop();
    },
  );
}
