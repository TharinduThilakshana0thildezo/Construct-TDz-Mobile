// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectReviewImpl _$$ProjectReviewImplFromJson(Map<String, dynamic> json) =>
    _$ProjectReviewImpl(
      reviewId: json['reviewId'] as String,
      projectId: json['projectId'] as String,
      reviewerId: json['reviewerId'] as String,
      revieweId: json['revieweId'] as String,
      qualityRating: (json['qualityRating'] as num).toInt(),
      punctualityRating: (json['punctualityRating'] as num).toInt(),
      communicationRating: (json['communicationRating'] as num).toInt(),
      professionalismRating: (json['professionalismRating'] as num).toInt(),
      narrative: json['narrative'] as String?,
      photoUrls: (json['photoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isVerified: json['isVerified'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      helpful: json['helpful'] as bool,
      response: json['response'] as String?,
      responseAt: json['responseAt'] == null
          ? null
          : DateTime.parse(json['responseAt'] as String),
    );

Map<String, dynamic> _$$ProjectReviewImplToJson(_$ProjectReviewImpl instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'projectId': instance.projectId,
      'reviewerId': instance.reviewerId,
      'revieweId': instance.revieweId,
      'qualityRating': instance.qualityRating,
      'punctualityRating': instance.punctualityRating,
      'communicationRating': instance.communicationRating,
      'professionalismRating': instance.professionalismRating,
      'narrative': instance.narrative,
      'photoUrls': instance.photoUrls,
      'isVerified': instance.isVerified,
      'createdAt': instance.createdAt.toIso8601String(),
      'helpful': instance.helpful,
      'response': instance.response,
      'responseAt': instance.responseAt?.toIso8601String(),
    };

_$UserRatingStatsImpl _$$UserRatingStatsImplFromJson(
  Map<String, dynamic> json,
) => _$UserRatingStatsImpl(
  userId: json['userId'] as String,
  avgQualityRating: (json['avgQualityRating'] as num).toDouble(),
  avgPunctualityRating: (json['avgPunctualityRating'] as num).toDouble(),
  avgCommunicationRating: (json['avgCommunicationRating'] as num).toDouble(),
  avgProfessionalismRating: (json['avgProfessionalismRating'] as num)
      .toDouble(),
  totalReviews: (json['totalReviews'] as num).toInt(),
  completedProjects: (json['completedProjects'] as num).toInt(),
  overallRating: (json['overallRating'] as num).toDouble(),
  badges: (json['badges'] as List<dynamic>).map((e) => e as String).toList(),
  isTrusted: json['isTrusted'] as bool,
  isTopRated: json['isTopRated'] as bool,
  isResponsive: json['isResponsive'] as bool,
);

Map<String, dynamic> _$$UserRatingStatsImplToJson(
  _$UserRatingStatsImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'avgQualityRating': instance.avgQualityRating,
  'avgPunctualityRating': instance.avgPunctualityRating,
  'avgCommunicationRating': instance.avgCommunicationRating,
  'avgProfessionalismRating': instance.avgProfessionalismRating,
  'totalReviews': instance.totalReviews,
  'completedProjects': instance.completedProjects,
  'overallRating': instance.overallRating,
  'badges': instance.badges,
  'isTrusted': instance.isTrusted,
  'isTopRated': instance.isTopRated,
  'isResponsive': instance.isResponsive,
};

_$UserBadgeImpl _$$UserBadgeImplFromJson(Map<String, dynamic> json) =>
    _$UserBadgeImpl(
      badgeId: json['badgeId'] as String,
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
      description: json['description'] as String,
      requirement: json['requirement'] as String,
      awardedAt: DateTime.parse(json['awardedAt'] as String),
    );

Map<String, dynamic> _$$UserBadgeImplToJson(_$UserBadgeImpl instance) =>
    <String, dynamic>{
      'badgeId': instance.badgeId,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'description': instance.description,
      'requirement': instance.requirement,
      'awardedAt': instance.awardedAt.toIso8601String(),
    };

_$ContractorProfileImpl _$$ContractorProfileImplFromJson(
  Map<String, dynamic> json,
) => _$ContractorProfileImpl(
  contractorId: json['contractorId'] as String,
  bio: json['bio'] as String,
  specialties: (json['specialties'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  certifications: (json['certifications'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  experienceYears: json['experienceYears'] as String,
  serviceArea: json['serviceArea'] as String,
  minProjectBudgetLkr: (json['minProjectBudgetLkr'] as num).toInt(),
  portfolioProjectIds: (json['portfolioProjectIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  isVerified: json['isVerified'] as bool,
  acceptsRemoteConsultation: json['acceptsRemoteConsultation'] as bool,
  licenseNumber: json['licenseNumber'] as String?,
  licenseExpiry: json['licenseExpiry'] == null
      ? null
      : DateTime.parse(json['licenseExpiry'] as String),
  equipment: json['equipment'] as Map<String, dynamic>?,
  pastClientReferences: (json['pastClientReferences'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  responseTimeMinutes: (json['responseTimeMinutes'] as num).toInt(),
);

Map<String, dynamic> _$$ContractorProfileImplToJson(
  _$ContractorProfileImpl instance,
) => <String, dynamic>{
  'contractorId': instance.contractorId,
  'bio': instance.bio,
  'specialties': instance.specialties,
  'certifications': instance.certifications,
  'experienceYears': instance.experienceYears,
  'serviceArea': instance.serviceArea,
  'minProjectBudgetLkr': instance.minProjectBudgetLkr,
  'portfolioProjectIds': instance.portfolioProjectIds,
  'isVerified': instance.isVerified,
  'acceptsRemoteConsultation': instance.acceptsRemoteConsultation,
  'licenseNumber': instance.licenseNumber,
  'licenseExpiry': instance.licenseExpiry?.toIso8601String(),
  'equipment': instance.equipment,
  'pastClientReferences': instance.pastClientReferences,
  'responseTimeMinutes': instance.responseTimeMinutes,
};

_$PortfolioProjectImpl _$$PortfolioProjectImplFromJson(
  Map<String, dynamic> json,
) => _$PortfolioProjectImpl(
  portfolioId: json['portfolioId'] as String,
  contractorId: json['contractorId'] as String,
  projectTitle: json['projectTitle'] as String,
  description: json['description'] as String,
  beforePhotoUrls: (json['beforePhotoUrls'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  afterPhotoUrls: (json['afterPhotoUrls'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  videoUrl: json['videoUrl'] as String?,
  completedDate: DateTime.parse(json['completedDate'] as String),
  budgetIkr: (json['budgetIkr'] as num).toInt(),
  durationDays: (json['durationDays'] as num).toInt(),
  clientTestimonial: json['clientTestimonial'] as String?,
  clientRating: (json['clientRating'] as num).toDouble(),
);

Map<String, dynamic> _$$PortfolioProjectImplToJson(
  _$PortfolioProjectImpl instance,
) => <String, dynamic>{
  'portfolioId': instance.portfolioId,
  'contractorId': instance.contractorId,
  'projectTitle': instance.projectTitle,
  'description': instance.description,
  'beforePhotoUrls': instance.beforePhotoUrls,
  'afterPhotoUrls': instance.afterPhotoUrls,
  'videoUrl': instance.videoUrl,
  'completedDate': instance.completedDate.toIso8601String(),
  'budgetIkr': instance.budgetIkr,
  'durationDays': instance.durationDays,
  'clientTestimonial': instance.clientTestimonial,
  'clientRating': instance.clientRating,
};
