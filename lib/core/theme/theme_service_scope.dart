import 'package:flutter/material.dart';

import 'theme_service.dart';

class ThemeServiceScope extends InheritedNotifier<ThemeService> {
  const ThemeServiceScope({
    required ThemeService notifier, required super.child, super.key,
  }) : super(notifier: notifier);

  static ThemeService of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<ThemeServiceScope>();
    if (scope == null) {
      throw StateError('ThemeServiceScope not found. Wrap your app with it.');
    }

    final service = scope.notifier;
    if (service == null) {
      throw StateError('ThemeServiceScope not found. Wrap your app with it.');
    }

    return service;
  }
}

