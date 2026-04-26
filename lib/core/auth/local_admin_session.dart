import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalAdminSession {
  const LocalAdminSession._();

  static const String _key = 'local_admin_session_active';
  static final ValueNotifier<int> revision = ValueNotifier<int>(0);

  static Future<void> activate() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key, true);
    revision.value++;
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
    revision.value++;
  }

  static Future<bool> isActive() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_key) ?? false;
  }
}
