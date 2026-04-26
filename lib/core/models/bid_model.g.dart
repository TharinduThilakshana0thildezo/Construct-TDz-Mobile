// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidImpl _$$BidImplFromJson(Map<String, dynamic> json) => _$BidImpl(
  bidId: json['bidId'] as String,
  projectId: json['projectId'] as String,
  contractorId: json['contractorId'] as String,
  amountLkr: (json['amountLkr'] as num).toInt(),
  timelineMonths: (json['timelineMonths'] as num).toInt(),
  capacity: json['capacity'] as String,
  description: json['description'] as String,
  status: $enumDecode(_$BidStatusEnumMap, json['status']),
  submittedAt: DateTime.parse(json['submittedAt'] as String),
  reviewedAt: json['reviewedAt'] == null
      ? null
      : DateTime.parse(json['reviewedAt'] as String),
  rejectionReason: json['rejectionReason'] as String?,
  metrics: json['metrics'] == null
      ? null
      : BidMetrics.fromJson(json['metrics'] as Map<String, dynamic>),
  attachmentUrls: (json['attachmentUrls'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  recommendedPrice: (json['recommendedPrice'] as num?)?.toDouble(),
  isAIGenerated: json['isAIGenerated'] as bool,
  customTerms: json['customTerms'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$BidImplToJson(_$BidImpl instance) => <String, dynamic>{
  'bidId': instance.bidId,
  'projectId': instance.projectId,
  'contractorId': instance.contractorId,
  'amountLkr': instance.amountLkr,
  'timelineMonths': instance.timelineMonths,
  'capacity': instance.capacity,
  'description': instance.description,
  'status': _$BidStatusEnumMap[instance.status]!,
  'submittedAt': instance.submittedAt.toIso8601String(),
  'reviewedAt': instance.reviewedAt?.toIso8601String(),
  'rejectionReason': instance.rejectionReason,
  'metrics': instance.metrics,
  'attachmentUrls': instance.attachmentUrls,
  'recommendedPrice': instance.recommendedPrice,
  'isAIGenerated': instance.isAIGenerated,
  'customTerms': instance.customTerms,
};

const _$BidStatusEnumMap = {
  BidStatus.submitted: 'submitted',
  BidStatus.underReview: 'underReview',
  BidStatus.shortlisted: 'shortlisted',
  BidStatus.rejected: 'rejected',
  BidStatus.accepted: 'accepted',
  BidStatus.completed: 'completed',
  BidStatus.disputed: 'disputed',
};

_$BidMetricsImpl _$$BidMetricsImplFromJson(Map<String, dynamic> json) =>
    _$BidMetricsImpl(
      competitiveScore: (json['competitiveScore'] as num).toDouble(),
      ranking: (json['ranking'] as num).toInt(),
      priceComparisonPercent: (json['priceComparisonPercent'] as num)
          .toDouble(),
      contractorReliabilityScore: (json['contractorReliabilityScore'] as num)
          .toDouble(),
      contractorPastProjects: (json['contractorPastProjects'] as num).toInt(),
      contractorAvgRating: (json['contractorAvgRating'] as num).toDouble(),
    );

Map<String, dynamic> _$$BidMetricsImplToJson(_$BidMetricsImpl instance) =>
    <String, dynamic>{
      'competitiveScore': instance.competitiveScore,
      'ranking': instance.ranking,
      'priceComparisonPercent': instance.priceComparisonPercent,
      'contractorReliabilityScore': instance.contractorReliabilityScore,
      'contractorPastProjects': instance.contractorPastProjects,
      'contractorAvgRating': instance.contractorAvgRating,
    };

_$BidTemplateImpl _$$BidTemplateImplFromJson(Map<String, dynamic> json) =>
    _$BidTemplateImpl(
      templateId: json['templateId'] as String,
      contractorId: json['contractorId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      basePriceFormula: (json['basePriceFormula'] as num).toInt(),
      capacityLevel: json['capacityLevel'] as String,
      defaultAttachments: (json['defaultAttachments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$BidTemplateImplToJson(_$BidTemplateImpl instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'contractorId': instance.contractorId,
      'name': instance.name,
      'description': instance.description,
      'basePriceFormula': instance.basePriceFormula,
      'capacityLevel': instance.capacityLevel,
      'defaultAttachments': instance.defaultAttachments,
      'isActive': instance.isActive,
    };
