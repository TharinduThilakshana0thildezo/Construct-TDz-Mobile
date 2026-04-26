import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/root_app.dart';
import 'core/utils/logger.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Setup error handlers
  WidgetsFlutterBinding.ensureInitialized();

  // Catch synchronous errors
  FlutterError.onError = (FlutterErrorDetails details) {
    appLogger.error('Flutter Error', details.exception, details.stack);
  };

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  appLogger.info('🚀 ConstructionLK app starting...');

  runApp(const ProviderScope(child: RootApp()));
}
