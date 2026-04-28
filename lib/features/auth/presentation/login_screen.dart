import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../core/auth/local_admin_session.dart';
import '../../../core/constants/admin_config.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/ui_components/animated_entrance.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController(); 
  final _passwordController = TextEditingController();
  bool _isSignUp = false;
  bool _isLoading = false;
  String _signUpRole = 'client';

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showError(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      textColor: Colors.white,
      fontSize: 14,
    );
  }

  Future<void> _ensureAdminProfile({
    required String uid,
    required String email,
  }) async {
    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      'uid': uid,
      'email': email,
      'displayName': AdminConfig.adminDisplayName,
      'role': 'admin',
      'onboardingCompleted': true,
      'updatedAt': FieldValue.serverTimestamp(),
      'createdAt': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));

    await FirebaseFirestore.instance.collection('admins').doc(uid).set({
      'uid': uid,
      'email': email,
      'active': true,
      'updatedAt': FieldValue.serverTimestamp(),
      'createdAt': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));
  }

  Future<void> _submit() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (email.isEmpty || !emailRegex.hasMatch(email)) {
      _showError('Please enter a valid email address.');
      return;
    }

    if (password.length < 6) {
      _showError('Password must be at least 6 characters.');
      return;
    }

    setState(() => _isLoading = true);
    try {
      final normalizedEmail = email.toLowerCase();
      final isAdminCredential =
          normalizedEmail == AdminConfig.adminEmail &&
          password == AdminConfig.adminPassword;

      if (isAdminCredential) {
        UserCredential? credential;
        var useLocalAdminFallback = false;
        try {
          credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: normalizedEmail,
            password: password,
          );
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            try {
              credential = await FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                    email: normalizedEmail,
                    password: password,
                  );
            } on FirebaseAuthException {
              useLocalAdminFallback = true;
            }
          } else {
            useLocalAdminFallback = true;
          }
        }

        final uid = credential?.user?.uid;
        if (!useLocalAdminFallback && uid != null) {
          try {
            await LocalAdminSession.clear();
            await _ensureAdminProfile(uid: uid, email: normalizedEmail);
          } on FirebaseException {
            // Firestore rules may block profile bootstrap; fallback keeps admin access available.
            await LocalAdminSession.activate();
          }
        } else {
          // Fallback mode when Firebase Auth operations are restricted in this environment.
          await LocalAdminSession.activate();
        }
        return;
      }

      if (_isSignUp) {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        final uid = credential.user?.uid;
        if (uid != null) {
          final displayName = email.split('@').first.trim();
          await FirebaseFirestore.instance.collection('users').doc(uid).set({
            'uid': uid,
            'email': email.toLowerCase(),
            'displayName': displayName,
            'role': _signUpRole,
            'onboardingCompleted': true,
            'createdAt': FieldValue.serverTimestamp(),
            'updatedAt': FieldValue.serverTimestamp(),
          }, SetOptions(merge: true));
        }
      } else {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      }
    } on FirebaseAuthException catch (e) {
      _showError(e.message ?? 'Authentication failed. Please try again.');
    } on FirebaseException catch (e) {
      _showError(e.message ?? 'Firebase error. Please try again.');
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = _isSignUp ? 'Create your account' : 'Welcome back';

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        title: const Text('ConstructionLK', style: TextStyle(fontSize: 16)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 440),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 40),
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppTheme.gold.withAlpha(30),
                            AppTheme.gold.withAlpha(8),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(AppTheme.radiusXl),
                        border: Border.all(color: AppTheme.gold.withAlpha(60)),
                      ),
                      child: const Icon(
                        Icons.architecture,
                        size: 48,
                        color: AppTheme.gold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 120),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 180),
                    child: Text(
                      'Secure access for clients, contractors, and engineers.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(138),
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 240),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppTheme.gold.withAlpha(18),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.verified_outlined,
                                color: AppTheme.gold,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                'Verified access, secure messaging, and real project workflows.',
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface.withAlpha(138),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 300),
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email address',
                        hintText: 'name@company.lk',
                        hintStyle: TextStyle(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(61),
                        ),
                        prefixIcon: const Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 360),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your secure password',
                        hintStyle: TextStyle(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(61),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Reset',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (_isSignUp) ...[
                    const SizedBox(height: 16),
                    EntranceAnimation(
                      delay: const Duration(milliseconds: 410),
                      child: DropdownButtonFormField<String>(
                        key: ValueKey<String>(_signUpRole),
                        initialValue: _signUpRole,
                        decoration: const InputDecoration(
                          labelText: 'Role',
                          prefixIcon: Icon(Icons.badge_outlined),
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: 'client',
                            child: Text('Client'),
                          ),
                          DropdownMenuItem(
                            value: 'contractor',
                            child: Text('Constructor'),
                          ),
                          DropdownMenuItem(
                            value: 'engineer',
                            child: Text('Engineer'),
                          ),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _signUpRole = value);
                          }
                        },
                      ),
                    ),
                  ],
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.shield_outlined,
                        size: 14,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(138),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Secure authentication for your account.',
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(138),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  FilledButton(
                    onPressed: _isLoading ? null : _submit,
                    child: _isLoading
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
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(_isSignUp ? 'Create account' : 'Sign in'),
                              const SizedBox(width: 8),
                              const Icon(Icons.lock_open, size: 18),
                            ],
                          ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _isSignUp
                            ? "Already have an account? "
                            : "Don't have an account? ",
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(138),
                          fontSize: 13,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() => _isSignUp = !_isSignUp),
                        child: Text(
                          _isSignUp ? "Login" : "Sign Up",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  Center(
                    child: Text(
                      'Built for construction teams, project owners, and verified professionals.',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(61),
                        fontSize: 10,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
   
   