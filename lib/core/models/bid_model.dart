import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid_model.freezed.dart';
part 'bid_model.g.dart';

enum BidStatus {
  submitted,
  underReview,
  shortlisted,
  rejected,
  accepted,
  completed,
  disputed,
}

@freezed
class Bid with _$Bid {
  const factory Bid({
    required String bidId,
    required String projectId,
    required String contractorId,
    required int amountLkr,
    required int timelineMonths,
    required String capacity,
    required String description,
    required BidStatus status,
    required DateTime submittedAt,
    required DateTime? reviewedAt,
    required String? rejectionReason,

    // Advanced Features
    required BidMetrics? metrics,
    required List<String> attachmentUrls,
    required double? recommendedPrice,
    required bool isAIGenerated,
    required Map<String, dynamic>? customTerms,
  }) = _Bid;

  factory Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);
}

@freezed
class BidMetrics with _$BidMetrics {
  const factory BidMetrics({
    required double competitiveScore, // 0-100
    required int ranking, // Position among all bids
    required double priceComparisonPercent, // vs avg bid
    required double contractorReliabilityScore,
    required int contractorPastProjects,
    required double contractorAvgRating,
  }) = _BidMetrics;

  factory BidMetrics.fromJson(Map<String, dynamic> json) =>
      _$BidMetricsFromJson(json);
}

@freezed
class BidTemplate with _$BidTemplate {
  const factory BidTemplate({
    required String templateId,
    required String contractorId,
    required String name,
    required String description,
    required int basePriceFormula, // e.g., base + percentage of project budget
    required String capacityLevel,
    required List<String> defaultAttachments,
    required bool isActive,
  }) = _BidTemplate;

  factory BidTemplate.fromJson(Map<String, dynamic> json) =>
      _$BidTemplateFromJson(json);
}
