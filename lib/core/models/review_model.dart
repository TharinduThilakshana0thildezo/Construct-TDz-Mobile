import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ProjectReview with _$ProjectReview {
  const ProjectReview._();

  const factory ProjectReview({
    required String reviewId,
    required String projectId,
    required String reviewerId,
    required String revieweId,
    required int qualityRating, // 1-5
    required int punctualityRating, // 1-5
    required int communicationRating, // 1-5
    required int professionalismRating, // 1-5
    required String? narrative,
    required List<String>? photoUrls,
    required bool isVerified,
    required DateTime createdAt,
    required bool helpful,
    required String? response,
    required DateTime? responseAt,
  }) = _ProjectReview;

  factory ProjectReview.fromJson(Map<String, dynamic> json) =>
      _$ProjectReviewFromJson(json);

  double get overallRating =>
      (qualityRating +
          punctualityRating +
          communicationRating +
          professionalismRating) /
      4;
}

@freezed
class UserRatingStats with _$UserRatingStats {
  const factory UserRatingStats({
    required String userId,
    required double avgQualityRating,
    required double avgPunctualityRating,
    required double avgCommunicationRating,
    required double avgProfessionalismRating,
    required int totalReviews,
    required int completedProjects,
    required double overallRating,
    required List<String> badges,
    required bool isTrusted,
    required bool isTopRated,
    required bool isResponsive,
  }) = _UserRatingStats;

  factory UserRatingStats.fromJson(Map<String, dynamic> json) =>
      _$UserRatingStatsFromJson(json);
}

@freezed
class UserBadge with _$UserBadge {
  const factory UserBadge({
    required String badgeId,
    required String name,
    required String iconUrl,
    required String description,
    required String requirement,
    required DateTime awardedAt,
  }) = _UserBadge;

  factory UserBadge.fromJson(Map<String, dynamic> json) =>
      _$UserBadgeFromJson(json);
}

@freezed
class ContractorProfile with _$ContractorProfile {
  const factory ContractorProfile({
    required String contractorId,
    required String bio,
    required List<String> specialties,
    required List<String> certifications,
    required String experienceYears,
    required String serviceArea,
    required int minProjectBudgetLkr,
    required List<String> portfolioProjectIds,
    required bool isVerified,
    required bool acceptsRemoteConsultation,
    required String? licenseNumber,
    required DateTime? licenseExpiry,
    required Map<String, dynamic>? equipment,
    required List<String> pastClientReferences,
    required int responseTimeMinutes,
  }) = _ContractorProfile;

  factory ContractorProfile.fromJson(Map<String, dynamic> json) =>
      _$ContractorProfileFromJson(json);
}

@freezed
class PortfolioProject with _$PortfolioProject {
  const factory PortfolioProject({
    required String portfolioId,
    required String contractorId,
    required String projectTitle,
    required String description,
    required List<String> beforePhotoUrls,
    required List<String> afterPhotoUrls,
    required String? videoUrl,
    required DateTime completedDate,
    required int budgetIkr,
    required int durationDays,
    required String? clientTestimonial,
    required double clientRating,
  }) = _PortfolioProject;

  factory PortfolioProject.fromJson(Map<String, dynamic> json) =>
      _$PortfolioProjectFromJson(json);
}
