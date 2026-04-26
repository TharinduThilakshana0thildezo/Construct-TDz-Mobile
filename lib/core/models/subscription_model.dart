import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

enum SubscriptionTier { free, pro, business, enterprise, premiumContractor }

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    required String subscriptionId,
    required String userId,
    required SubscriptionTier tier,
    required DateTime startDate,
    required DateTime? endDate,
    required bool isActive,
    required int monthlyPriceLkr,
    required String? stripePriceId,
    required String? stripeSubscriptionId,
    required DateTime nextBillingDate,
    required bool autoRenew,
    required List<String> features,
    required Map<String, dynamic>? additionalBenefits,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}

@freezed
class SubscriptionTierDetails with _$SubscriptionTierDetails {
  const factory SubscriptionTierDetails({
    required SubscriptionTier tier,
    required int monthlyPriceLkr,
    required String description,
    required List<String> features,
    required int maxFeaturedListings,
    required int maxBidsPerMonth,
    required bool analyticsAccess,
    required bool apiAccess,
    required String supportLevel,
  }) = _SubscriptionTierDetails;

  factory SubscriptionTierDetails.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTierDetailsFromJson(json);
}

@freezed
class UserAnalytics with _$UserAnalytics {
  const factory UserAnalytics({
    required String userId,
    required int profileViews,
    required int searchAppearances,
    required int projectInquiries,
    required int successfulProjects,
    required double totalEarnings,
    required double totalSpent,
    required List<String> topSkillsDemand,
    required Map<DateTime, int> earnings,
    required double conversionRate,
    required int avgResponseTime,
  }) = _UserAnalytics;

  factory UserAnalytics.fromJson(Map<String, dynamic> json) =>
      _$UserAnalyticsFromJson(json);
}

@freezed
class GamificationStats with _$GamificationStats {
  const factory GamificationStats({
    required String userId,
    required int totalPoints,
    required String currentLevel,
    required int levelProgress,
    required List<String> earnedBadges,
    required int currentStreak,
    required int bestStreak,
    required Map<String, int> achievementProgress,
    required int leaderboardRank,
    required int rewardsEarned,
    required int pointsRedeemed,
  }) = _GamificationStats;

  factory GamificationStats.fromJson(Map<String, dynamic> json) =>
      _$GamificationStatsFromJson(json);
}

@freezed
class ReferralReward with _$ReferralReward {
  const factory ReferralReward({
    required String referralId,
    required String referrerId,
    required String refereeId,
    required int rewardAmountLkr,
    required bool isCompleted,
    required DateTime createdAt,
    required DateTime? completedAt,
  }) = _ReferralReward;

  factory ReferralReward.fromJson(Map<String, dynamic> json) =>
      _$ReferralRewardFromJson(json);
}

@freezed
class ReputationLevel with _$ReputationLevel {
  const factory ReputationLevel({
    required String levelId,
    required String levelName,
    required int minPoints,
    required int maxPoints,
    required String badge,
    required List<String> unlockedFeatures,
    required double discountPercent,
  }) = _ReputationLevel;

  factory ReputationLevel.fromJson(Map<String, dynamic> json) =>
      _$ReputationLevelFromJson(json);
}
