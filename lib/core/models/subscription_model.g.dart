// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      subscriptionId: json['subscriptionId'] as String,
      userId: json['userId'] as String,
      tier: $enumDecode(_$SubscriptionTierEnumMap, json['tier']),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isActive: json['isActive'] as bool,
      monthlyPriceLkr: (json['monthlyPriceLkr'] as num).toInt(),
      stripePriceId: json['stripePriceId'] as String?,
      stripeSubscriptionId: json['stripeSubscriptionId'] as String?,
      nextBillingDate: DateTime.parse(json['nextBillingDate'] as String),
      autoRenew: json['autoRenew'] as bool,
      features: (json['features'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      additionalBenefits: json['additionalBenefits'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'userId': instance.userId,
      'tier': _$SubscriptionTierEnumMap[instance.tier]!,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isActive': instance.isActive,
      'monthlyPriceLkr': instance.monthlyPriceLkr,
      'stripePriceId': instance.stripePriceId,
      'stripeSubscriptionId': instance.stripeSubscriptionId,
      'nextBillingDate': instance.nextBillingDate.toIso8601String(),
      'autoRenew': instance.autoRenew,
      'features': instance.features,
      'additionalBenefits': instance.additionalBenefits,
    };

const _$SubscriptionTierEnumMap = {
  SubscriptionTier.free: 'free',
  SubscriptionTier.pro: 'pro',
  SubscriptionTier.business: 'business',
  SubscriptionTier.enterprise: 'enterprise',
  SubscriptionTier.premiumContractor: 'premiumContractor',
};

_$SubscriptionTierDetailsImpl _$$SubscriptionTierDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$SubscriptionTierDetailsImpl(
  tier: $enumDecode(_$SubscriptionTierEnumMap, json['tier']),
  monthlyPriceLkr: (json['monthlyPriceLkr'] as num).toInt(),
  description: json['description'] as String,
  features: (json['features'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  maxFeaturedListings: (json['maxFeaturedListings'] as num).toInt(),
  maxBidsPerMonth: (json['maxBidsPerMonth'] as num).toInt(),
  analyticsAccess: json['analyticsAccess'] as bool,
  apiAccess: json['apiAccess'] as bool,
  supportLevel: json['supportLevel'] as String,
);

Map<String, dynamic> _$$SubscriptionTierDetailsImplToJson(
  _$SubscriptionTierDetailsImpl instance,
) => <String, dynamic>{
  'tier': _$SubscriptionTierEnumMap[instance.tier]!,
  'monthlyPriceLkr': instance.monthlyPriceLkr,
  'description': instance.description,
  'features': instance.features,
  'maxFeaturedListings': instance.maxFeaturedListings,
  'maxBidsPerMonth': instance.maxBidsPerMonth,
  'analyticsAccess': instance.analyticsAccess,
  'apiAccess': instance.apiAccess,
  'supportLevel': instance.supportLevel,
};

_$UserAnalyticsImpl _$$UserAnalyticsImplFromJson(Map<String, dynamic> json) =>
    _$UserAnalyticsImpl(
      userId: json['userId'] as String,
      profileViews: (json['profileViews'] as num).toInt(),
      searchAppearances: (json['searchAppearances'] as num).toInt(),
      projectInquiries: (json['projectInquiries'] as num).toInt(),
      successfulProjects: (json['successfulProjects'] as num).toInt(),
      totalEarnings: (json['totalEarnings'] as num).toDouble(),
      totalSpent: (json['totalSpent'] as num).toDouble(),
      topSkillsDemand: (json['topSkillsDemand'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      earnings: (json['earnings'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), (e as num).toInt()),
      ),
      conversionRate: (json['conversionRate'] as num).toDouble(),
      avgResponseTime: (json['avgResponseTime'] as num).toInt(),
    );

Map<String, dynamic> _$$UserAnalyticsImplToJson(
  _$UserAnalyticsImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'profileViews': instance.profileViews,
  'searchAppearances': instance.searchAppearances,
  'projectInquiries': instance.projectInquiries,
  'successfulProjects': instance.successfulProjects,
  'totalEarnings': instance.totalEarnings,
  'totalSpent': instance.totalSpent,
  'topSkillsDemand': instance.topSkillsDemand,
  'earnings': instance.earnings.map((k, e) => MapEntry(k.toIso8601String(), e)),
  'conversionRate': instance.conversionRate,
  'avgResponseTime': instance.avgResponseTime,
};

_$GamificationStatsImpl _$$GamificationStatsImplFromJson(
  Map<String, dynamic> json,
) => _$GamificationStatsImpl(
  userId: json['userId'] as String,
  totalPoints: (json['totalPoints'] as num).toInt(),
  currentLevel: json['currentLevel'] as String,
  levelProgress: (json['levelProgress'] as num).toInt(),
  earnedBadges: (json['earnedBadges'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  currentStreak: (json['currentStreak'] as num).toInt(),
  bestStreak: (json['bestStreak'] as num).toInt(),
  achievementProgress: Map<String, int>.from(
    json['achievementProgress'] as Map,
  ),
  leaderboardRank: (json['leaderboardRank'] as num).toInt(),
  rewardsEarned: (json['rewardsEarned'] as num).toInt(),
  pointsRedeemed: (json['pointsRedeemed'] as num).toInt(),
);

Map<String, dynamic> _$$GamificationStatsImplToJson(
  _$GamificationStatsImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'totalPoints': instance.totalPoints,
  'currentLevel': instance.currentLevel,
  'levelProgress': instance.levelProgress,
  'earnedBadges': instance.earnedBadges,
  'currentStreak': instance.currentStreak,
  'bestStreak': instance.bestStreak,
  'achievementProgress': instance.achievementProgress,
  'leaderboardRank': instance.leaderboardRank,
  'rewardsEarned': instance.rewardsEarned,
  'pointsRedeemed': instance.pointsRedeemed,
};

_$ReferralRewardImpl _$$ReferralRewardImplFromJson(Map<String, dynamic> json) =>
    _$ReferralRewardImpl(
      referralId: json['referralId'] as String,
      referrerId: json['referrerId'] as String,
      refereeId: json['refereeId'] as String,
      rewardAmountLkr: (json['rewardAmountLkr'] as num).toInt(),
      isCompleted: json['isCompleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$$ReferralRewardImplToJson(
  _$ReferralRewardImpl instance,
) => <String, dynamic>{
  'referralId': instance.referralId,
  'referrerId': instance.referrerId,
  'refereeId': instance.refereeId,
  'rewardAmountLkr': instance.rewardAmountLkr,
  'isCompleted': instance.isCompleted,
  'createdAt': instance.createdAt.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
};

_$ReputationLevelImpl _$$ReputationLevelImplFromJson(
  Map<String, dynamic> json,
) => _$ReputationLevelImpl(
  levelId: json['levelId'] as String,
  levelName: json['levelName'] as String,
  minPoints: (json['minPoints'] as num).toInt(),
  maxPoints: (json['maxPoints'] as num).toInt(),
  badge: json['badge'] as String,
  unlockedFeatures: (json['unlockedFeatures'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  discountPercent: (json['discountPercent'] as num).toDouble(),
);

Map<String, dynamic> _$$ReputationLevelImplToJson(
  _$ReputationLevelImpl instance,
) => <String, dynamic>{
  'levelId': instance.levelId,
  'levelName': instance.levelName,
  'minPoints': instance.minPoints,
  'maxPoints': instance.maxPoints,
  'badge': instance.badge,
  'unlockedFeatures': instance.unlockedFeatures,
  'discountPercent': instance.discountPercent,
};
