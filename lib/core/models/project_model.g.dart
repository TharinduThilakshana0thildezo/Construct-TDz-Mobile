// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      projectId: json['projectId'] as String,
      clientId: json['clientId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      projectType: $enumDecode(_$ProjectTypeEnumMap, json['projectType']),
      status: $enumDecode(_$ProjectStatusEnumMap, json['status']),
      district: json['district'] as String,
      budgetLkr: (json['budgetLkr'] as num).toInt(),
      timelineMonths: (json['timelineMonths'] as num).toInt(),
      postedAt: DateTime.parse(json['postedAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      completionDeadline: json['completionDeadline'] == null
          ? null
          : DateTime.parse(json['completionDeadline'] as String),
      actualBudgetSpent: (json['actualBudgetSpent'] as num?)?.toInt(),
      budgetVariance: (json['budgetVariance'] as num).toDouble(),
      progressPercent: (json['progressPercent'] as num).toDouble(),
      milestones: (json['milestones'] as List<dynamic>)
          .map((e) => ProjectMilestone.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachmentUrls: (json['attachmentUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      skillsRequired: (json['skillsRequired'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      requiredCertifications: json['requiredCertifications'] as String?,
      metrics: json['metrics'] == null
          ? null
          : ProjectMetrics.fromJson(json['metrics'] as Map<String, dynamic>),
      activities: (json['activities'] as List<dynamic>)
          .map((e) => ProjectActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      customFields: json['customFields'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'clientId': instance.clientId,
      'title': instance.title,
      'description': instance.description,
      'projectType': _$ProjectTypeEnumMap[instance.projectType]!,
      'status': _$ProjectStatusEnumMap[instance.status]!,
      'district': instance.district,
      'budgetLkr': instance.budgetLkr,
      'timelineMonths': instance.timelineMonths,
      'postedAt': instance.postedAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'completionDeadline': instance.completionDeadline?.toIso8601String(),
      'actualBudgetSpent': instance.actualBudgetSpent,
      'budgetVariance': instance.budgetVariance,
      'progressPercent': instance.progressPercent,
      'milestones': instance.milestones,
      'attachmentUrls': instance.attachmentUrls,
      'skillsRequired': instance.skillsRequired,
      'requiredCertifications': instance.requiredCertifications,
      'metrics': instance.metrics,
      'activities': instance.activities,
      'customFields': instance.customFields,
    };

const _$ProjectTypeEnumMap = {
  ProjectType.residentialConstruction: 'residentialConstruction',
  ProjectType.commercialDevelopment: 'commercialDevelopment',
  ProjectType.infrastructureWork: 'infrastructureWork',
  ProjectType.renovation: 'renovation',
  ProjectType.landscaping: 'landscaping',
  ProjectType.plumbing: 'plumbing',
  ProjectType.electrical: 'electrical',
  ProjectType.carpentry: 'carpentry',
  ProjectType.painting: 'painting',
  ProjectType.other: 'other',
};

const _$ProjectStatusEnumMap = {
  ProjectStatus.draft: 'draft',
  ProjectStatus.active: 'active',
  ProjectStatus.bidding: 'bidding',
  ProjectStatus.awarded: 'awarded',
  ProjectStatus.inProgress: 'inProgress',
  ProjectStatus.review: 'review',
  ProjectStatus.completed: 'completed',
  ProjectStatus.archived: 'archived',
  ProjectStatus.cancelled: 'cancelled',
};

_$ProjectMilestoneImpl _$$ProjectMilestoneImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectMilestoneImpl(
  milestoneId: json['milestoneId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  dueDate: DateTime.parse(json['dueDate'] as String),
  budgetAllocation: (json['budgetAllocation'] as num).toInt(),
  completionPercent: (json['completionPercent'] as num).toDouble(),
  isCompleted: json['isCompleted'] as bool,
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
  deliverables: (json['deliverables'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$$ProjectMilestoneImplToJson(
  _$ProjectMilestoneImpl instance,
) => <String, dynamic>{
  'milestoneId': instance.milestoneId,
  'title': instance.title,
  'description': instance.description,
  'dueDate': instance.dueDate.toIso8601String(),
  'budgetAllocation': instance.budgetAllocation,
  'completionPercent': instance.completionPercent,
  'isCompleted': instance.isCompleted,
  'completedAt': instance.completedAt?.toIso8601String(),
  'deliverables': instance.deliverables,
};

_$ProjectMetricsImpl _$$ProjectMetricsImplFromJson(Map<String, dynamic> json) =>
    _$ProjectMetricsImpl(
      totalBidsReceived: (json['totalBidsReceived'] as num).toInt(),
      acceptedBidsCount: (json['acceptedBidsCount'] as num).toInt(),
      avgBidPrice: (json['avgBidPrice'] as num).toDouble(),
      highestBidPrice: (json['highestBidPrice'] as num).toDouble(),
      lowestBidPrice: (json['lowestBidPrice'] as num).toDouble(),
      topContractors: (json['topContractors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      viewCount: (json['viewCount'] as num).toInt(),
      saveCount: (json['saveCount'] as num).toInt(),
      predictedCompletionDate: json['predictedCompletionDate'] == null
          ? null
          : DateTime.parse(json['predictedCompletionDate'] as String),
      successProbability: (json['successProbability'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProjectMetricsImplToJson(
  _$ProjectMetricsImpl instance,
) => <String, dynamic>{
  'totalBidsReceived': instance.totalBidsReceived,
  'acceptedBidsCount': instance.acceptedBidsCount,
  'avgBidPrice': instance.avgBidPrice,
  'highestBidPrice': instance.highestBidPrice,
  'lowestBidPrice': instance.lowestBidPrice,
  'topContractors': instance.topContractors,
  'viewCount': instance.viewCount,
  'saveCount': instance.saveCount,
  'predictedCompletionDate': instance.predictedCompletionDate
      ?.toIso8601String(),
  'successProbability': instance.successProbability,
};

_$ProjectActivityImpl _$$ProjectActivityImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectActivityImpl(
  activityId: json['activityId'] as String,
  projectId: json['projectId'] as String,
  type: $enumDecode(_$ActivityTypeEnumMap, json['type']),
  actorId: json['actorId'] as String,
  actorName: json['actorName'] as String,
  actionDetails: json['actionDetails'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  mentionedUsers: (json['mentionedUsers'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$ProjectActivityImplToJson(
  _$ProjectActivityImpl instance,
) => <String, dynamic>{
  'activityId': instance.activityId,
  'projectId': instance.projectId,
  'type': _$ActivityTypeEnumMap[instance.type]!,
  'actorId': instance.actorId,
  'actorName': instance.actorName,
  'actionDetails': instance.actionDetails,
  'timestamp': instance.timestamp.toIso8601String(),
  'mentionedUsers': instance.mentionedUsers,
  'metadata': instance.metadata,
};

const _$ActivityTypeEnumMap = {
  ActivityType.projectCreated: 'projectCreated',
  ActivityType.projectPublished: 'projectPublished',
  ActivityType.bidSubmitted: 'bidSubmitted',
  ActivityType.bidAccepted: 'bidAccepted',
  ActivityType.paymentReleased: 'paymentReleased',
  ActivityType.milestoneCompleted: 'milestoneCompleted',
  ActivityType.documentUploaded: 'documentUploaded',
  ActivityType.commentAdded: 'commentAdded',
  ActivityType.statusChanged: 'statusChanged',
  ActivityType.reviewSubmitted: 'reviewSubmitted',
};

_$CostBreakdownImpl _$$CostBreakdownImplFromJson(Map<String, dynamic> json) =>
    _$CostBreakdownImpl(
      category: json['category'] as String,
      estimatedCost: (json['estimatedCost'] as num).toInt(),
      actualCost: (json['actualCost'] as num?)?.toInt(),
      quantity: (json['quantity'] as num).toInt(),
      unit: json['unit'] as String,
      unitPrice: (json['unitPrice'] as num).toInt(),
    );

Map<String, dynamic> _$$CostBreakdownImplToJson(_$CostBreakdownImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'estimatedCost': instance.estimatedCost,
      'actualCost': instance.actualCost,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
    };
