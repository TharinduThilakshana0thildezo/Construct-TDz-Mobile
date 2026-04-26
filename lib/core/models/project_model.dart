import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

enum ProjectStatus {
  draft,
  active,
  bidding,
  awarded,
  inProgress,
  review,
  completed,
  archived,
  cancelled,
}

enum ProjectType {
  residentialConstruction,
  commercialDevelopment,
  infrastructureWork,
  renovation,
  landscaping,
  plumbing,
  electrical,
  carpentry,
  painting,
  other,
}

@freezed
class Project with _$Project {
  const factory Project({
    required String projectId,
    required String clientId,
    required String title,
    required String description,
    required ProjectType projectType,
    required ProjectStatus status,
    required String district,
    required int budgetLkr,
    required int timelineMonths,
    required DateTime postedAt,
    required DateTime? updatedAt,
    required DateTime? completionDeadline,

    // Budget & Payment
    required int? actualBudgetSpent,
    required double budgetVariance,

    // Progress & Tracking
    required double progressPercent,
    required List<ProjectMilestone> milestones,

    // Content
    required List<String> attachmentUrls,
    required List<String> skillsRequired,
    required String? requiredCertifications,

    // Advanced Features
    required ProjectMetrics? metrics,
    required List<ProjectActivity> activities,
    required Map<String, dynamic>? customFields,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
class ProjectMilestone with _$ProjectMilestone {
  const factory ProjectMilestone({
    required String milestoneId,
    required String title,
    required String description,
    required DateTime dueDate,
    required int budgetAllocation,
    required double completionPercent,
    required bool isCompleted,
    required DateTime? completedAt,
    required List<String> deliverables,
  }) = _ProjectMilestone;

  factory ProjectMilestone.fromJson(Map<String, dynamic> json) =>
      _$ProjectMilestoneFromJson(json);
}

@freezed
class ProjectMetrics with _$ProjectMetrics {
  const factory ProjectMetrics({
    required int totalBidsReceived,
    required int acceptedBidsCount,
    required double avgBidPrice,
    required double highestBidPrice,
    required double lowestBidPrice,
    required List<String> topContractors,
    required int viewCount,
    required int saveCount,
    required DateTime? predictedCompletionDate,
    required double successProbability,
  }) = _ProjectMetrics;

  factory ProjectMetrics.fromJson(Map<String, dynamic> json) =>
      _$ProjectMetricsFromJson(json);
}

enum ActivityType {
  projectCreated,
  projectPublished,
  bidSubmitted,
  bidAccepted,
  paymentReleased,
  milestoneCompleted,
  documentUploaded,
  commentAdded,
  statusChanged,
  reviewSubmitted,
}

@freezed
class ProjectActivity with _$ProjectActivity {
  const factory ProjectActivity({
    required String activityId,
    required String projectId,
    required ActivityType type,
    required String actorId,
    required String actorName,
    required String actionDetails,
    required DateTime timestamp,
    required List<String>? mentionedUsers,
    required Map<String, dynamic>? metadata,
  }) = _ProjectActivity;

  factory ProjectActivity.fromJson(Map<String, dynamic> json) =>
      _$ProjectActivityFromJson(json);
}

@freezed
class CostBreakdown with _$CostBreakdown {
  const factory CostBreakdown({
    required String category, // Labour, Materials, Equipment, etc.
    required int estimatedCost,
    required int? actualCost,
    required int quantity,
    required String unit,
    required int unitPrice,
  }) = _CostBreakdown;

  factory CostBreakdown.fromJson(Map<String, dynamic> json) =>
      _$CostBreakdownFromJson(json);
}
