import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../features/auth/presentation/login_screen.dart';
import '../features/auth/presentation/onboarding_screen.dart';
import '../features/main/presentation/main_tab_scaffold.dart';
import '../core/auth/local_admin_session.dart';
import '../core/constants/admin_config.dart';
import '../core/models/app_user.dart';
import '../core/theme/app_theme.dart';
import '../core/theme/theme_service.dart';
import '../core/theme/theme_service_scope.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  final _themeService = ThemeService();

  @override
  void initState() {
    super.initState();
    _themeService.load();
  }

  ThemeData _baseTheme(Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      primaryColor: AppTheme.gold,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppTheme.gold,
        brightness: brightness,
        primary: AppTheme.gold,
        onPrimary: Colors.black,
        surface: AppTheme.surfaceFor(brightness),
        onSurface: brightness == Brightness.dark ? Colors.white : Colors.black,
        surfaceContainerHighest: brightness == Brightness.dark
            ? Colors.white10
            : Colors.black.withAlpha(12),
      ),
      scaffoldBackgroundColor: AppTheme.backgroundFor(brightness),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: brightness == Brightness.dark
            ? AppTheme.gold
            : Colors.black87,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: brightness == Brightness.dark ? AppTheme.gold : Colors.black87,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      cardTheme: CardThemeData(
        color: AppTheme.surfaceFor(brightness),
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusLg),
          side: BorderSide(color: AppTheme.borderFor(brightness), width: 1),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: brightness == Brightness.dark
            ? AppTheme.darkSurface
            : Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusMd),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusMd),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusMd),
          borderSide: const BorderSide(color: AppTheme.gold, width: 1.5),
        ),
        labelStyle: TextStyle(
          color: brightness == Brightness.dark
              ? Colors.white54
              : Colors.black54,
        ),
        prefixIconColor: AppTheme.gold,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppTheme.gold,
          foregroundColor: Colors.black, // Dark text on gold button
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.radiusMd),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppTheme.gold,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: brightness == Brightness.dark ? Colors.white12 : Colors.black12,
      ),
    );
  }

  ThemeData _lightTheme() => _baseTheme(Brightness.light);
  ThemeData _darkTheme() => _baseTheme(Brightness.dark);

  @override
  Widget build(BuildContext context) {
    final lightTheme = _lightTheme();
    final darkTheme = _darkTheme();

    return ThemeServiceScope(
      notifier: _themeService,
      child: AnimatedBuilder(
        animation: _themeService,
        builder: (context, _) => MaterialApp(
          title: 'ConstructionLK',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: _themeService.themeMode,
          debugShowCheckedModeBanner: false,
          home: const _AuthGate(),
        ),
      ),
    );
  }
}

class _AuthGate extends StatelessWidget {
  const _AuthGate();

  Future<void> _ensureAdminProfile(User user) async {
    await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
      'uid': user.uid,
      'email': user.email?.toLowerCase() ?? AdminConfig.adminEmail,
      'displayName': AdminConfig.adminDisplayName,
      'role': 'admin',
      'onboardingCompleted': true,
      'updatedAt': FieldValue.serverTimestamp(),
      'createdAt': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));

    await FirebaseFirestore.instance.collection('admins').doc(user.uid).set({
      'uid': user.uid,
      'email': user.email?.toLowerCase() ?? AdminConfig.adminEmail,
      'active': true,
      'updatedAt': FieldValue.serverTimestamp(),
      'createdAt': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));
  }

  Stream<AppUser?> _userStream(String uid) => FirebaseFirestore.instance
      .collection('users')
      .doc(uid)
      .snapshots()
      .map((snap) {
        if (!snap.exists) return null;
        return AppUser.fromFirestore(snap.data() ?? const {});
      });

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<int>(
    valueListenable: LocalAdminSession.revision,
    builder: (context, revision, child) => FutureBuilder<bool>(
      future: LocalAdminSession.isActive(),
      builder: (context, localAdminSnapshot) {
        if (localAdminSnapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (localAdminSnapshot.data == true) {
          return const MainTabScaffold(
            user: AppUser(
              uid: 'local-admin',
              email: AdminConfig.adminEmail,
              role: UserRole.admin,
              displayName: AdminConfig.adminDisplayName,
              onboardingCompleted: true,
            ),
          );
        }

        return StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, authSnapshot) {
            if (authSnapshot.connectionState == ConnectionState.waiting) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }

            final user = authSnapshot.data;
            if (user == null) {
              return const LoginScreen();
            }

            final isAdminEmail =
                (user.email ?? '').toLowerCase() == AdminConfig.adminEmail;
            if (isAdminEmail) {
              return FutureBuilder<void>(
                future: _ensureAdminProfile(user),
                builder: (context, adminSnapshot) {
                  if (adminSnapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Scaffold(
                      body: Center(child: CircularProgressIndicator()),
                    );
                  }

                  return MainTabScaffold(
                    user: AppUser(
                      uid: user.uid,
                      email: user.email ?? AdminConfig.adminEmail,
                      role: UserRole.admin,
                      displayName: AdminConfig.adminDisplayName,
                      onboardingCompleted: true,
                    ),
                  );
                },
              );
            }

            return StreamBuilder<AppUser?>(
              stream: _userStream(user.uid),
              builder: (context, userSnapshot) {
                if (userSnapshot.connectionState == ConnectionState.waiting) {
                  return const Scaffold(
                    body: Center(child: CircularProgressIndicator()),
                  );
                }

                final appUser = userSnapshot.data;

                // No Firestore profile yet -> onboarding.
                if (appUser == null || appUser.onboardingCompleted != true) {
                  return OnboardingScreen(uid: user.uid);
                }

                return MainTabScaffold(user: appUser);
              },
            );
          },
        );
      },
    ),
  );
}
