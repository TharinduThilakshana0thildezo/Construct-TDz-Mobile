/// App-wide constants and configuration
class AppConstants {
  // API & Firebase
  static const String firebaseProjectId = 'construction-lk-prod';

  // Stripe
  static const String stripePublishableKey = 'pk_live_xxxxx'; // Set from env
  static const String stripeSecretKey = 'sk_live_xxxxx'; // Set from env

  // Payment
  static const double platformCommissionPercent = 2.5;
  static const double insuranceFeesPercent = 1;

  // Project Budget Thresholds
  static const int smallProjectMaxBudget = 500000; // LKR
  static const int mediumProjectMaxBudget = 2000000;
  static const int largeProjectMaxBudget = 10000000;

  // Pagination
  static const int pageSize = 20;
  static const int initialPageSize = 10;

  // Cache Duration
  static const Duration cacheDuration = Duration(hours: 24);
  static const Duration shortCacheDuration = Duration(minutes: 15);

  // Timeouts
  static const Duration apiTimeout = Duration(seconds: 30);
  static const Duration syncTimeout = Duration(minutes: 5);

  // Rating Thresholds
  static const double topRatedThreshold = 4.7;
  static const double trustedThreshold = 4.5;
  static const int minReviewsForBadge = 10;

  // Notification
  static const int notificationBatchingDelayMs = 500;

  // UI
  static const double standardPadding = 16;
  static const double largeSpacing = 24;
  static const double borderRadius = 12;

  // Colors
  static const String goldAccentHex = '#E5A824';

  // Feature Flags
  static const bool enablePayments = true;
  static const bool enableAIFeatures = false; // Gradual rollout
  static const bool enableAR = false;
}

class EnvironmentConfig {
  static bool get isProduction =>
      const bool.fromEnvironment('PRODUCTION', defaultValue: false);
  static bool get isDevelopment => !isProduction;
  static String get flavorName =>
      const String.fromEnvironment('FLAVOR', defaultValue: 'dev');
}
