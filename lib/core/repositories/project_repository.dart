import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/project_model.dart';
import '../utils/logger.dart';
import 'firestore_repository.dart';

class ProjectRepository extends FirestoreRepository<Project> {
  @override
  String get collectionPath => 'projects';

  @override
  Project fromMap(Map<String, dynamic> map) => Project(
    projectId: map['projectId'] ?? '',
    clientId: map['clientId'] ?? '',
    title: map['title'] ?? '',
    description: map['description'] ?? '',
    projectType: _parseProjectType(map['projectType']),
    status: _parseProjectStatus(map['status']),
    district: map['district'] ?? '',
    budgetLkr: map['budgetLkr'] ?? 0,
    timelineMonths: map['timelineMonths'] ?? 0,
    postedAt: (map['postedAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    updatedAt: (map['updatedAt'] as Timestamp?)?.toDate(),
    completionDeadline: (map['completionDeadline'] as Timestamp?)?.toDate(),
    actualBudgetSpent: map['actualBudgetSpent'],
    budgetVariance: map['budgetVariance'] ?? 0.0,
    progressPercent: (map['progressPercent'] ?? 0.0).toDouble(),
    milestones:
        (map['milestones'] as List?)
            ?.map((m) => ProjectMilestone.fromJson(m))
            .toList() ??
        [],
    attachmentUrls: List<String>.from(map['attachmentUrls'] ?? []),
    skillsRequired: List<String>.from(map['skillsRequired'] ?? []),
    requiredCertifications: map['requiredCertifications'],
    metrics: map['metrics'] != null
        ? ProjectMetrics.fromJson(map['metrics'])
        : null,
    activities:
        (map['activities'] as List?)
            ?.map((a) => ProjectActivity.fromJson(a))
            .toList() ??
        [],
    customFields: map['customFields'],
  );

  @override
  Map<String, dynamic> toMap(Project project) => {
    'projectId': project.projectId,
    'clientId': project.clientId,
    'title': project.title,
    'description': project.description,
    'projectType': project.projectType.toString().split('.').last,
    'status': project.status.toString().split('.').last,
    'district': project.district,
    'budgetLkr': project.budgetLkr,
    'timelineMonths': project.timelineMonths,
    'postedAt': project.postedAt,
    'updatedAt': project.updatedAt ?? FieldValue.serverTimestamp(),
    'completionDeadline': project.completionDeadline,
    'actualBudgetSpent': project.actualBudgetSpent,
    'budgetVariance': project.budgetVariance,
    'progressPercent': project.progressPercent,
    'milestones': project.milestones.map((m) => m.toJson()).toList(),
    'attachmentUrls': project.attachmentUrls,
    'skillsRequired': project.skillsRequired,
    'requiredCertifications': project.requiredCertifications,
    'metrics': project.metrics?.toJson(),
    'activities': project.activities.map((a) => a.toJson()).toList(),
    'customFields': project.customFields,
  };

  
  Future<List<Project>> getProjectsByClient(String clientId) => query(
    field: 'clientId',
    isEqualTo: clientId,
    orderBy: 'postedAt',
    descending: true,
  );

  
  Stream<List<Project>> streamProjectsByClient(String clientId) => streamQuery(
    field: 'clientId',
    isEqualTo: clientId,
    orderBy: 'postedAt',
    descending: true,
  );


  Future<List<Project>> getActiveProjectsByDistrict(String district) async {
    final snapshot = await firestore
        .collection(collectionPath)
        .where('district', isEqualTo: district)
        .where('status', isEqualTo: 'active')
        .orderBy('postedAt', descending: true)
        .get();
    return snapshot.docs.map((doc) => fromMap(doc.data())).toList();
  }


  Future<List<Project>> getProjectsBySkills(List<String> skills) async {
    try {
      final snapshot = await firestore
          .collection(collectionPath)
          .where('skillsRequired', arrayContainsAny: skills)
          .where('status', isEqualTo: 'active')
          .orderBy('postedAt', descending: true)
          .get();

      return snapshot.docs.map((doc) => fromMap(doc.data())).toList();
    } catch (e) {
      appLogger.error('Error fetching projects by skills', e);
      rethrow;
    }
  }


  Future<Project?> getProjectWithDetails(String projectId) async {
    try {
      final doc = await firestore
          .collection(collectionPath)
          .doc(projectId)
          .get();

      if (!doc.exists) return null;

      return fromMap(doc.data()!);
    } catch (e) {
      appLogger.error('Error fetching project details', e);
      rethrow;
    }
  }


  Future<void> updateProjectProgress(String projectId, double progress) =>
      update(projectId, {'progressPercent': progress});

  // Update project status
  Future<void> updateProjectStatus(String projectId, ProjectStatus status) =>
      update(projectId, {
        'status': status.toString().split('.').last,
        'updatedAt': FieldValue.serverTimestamp(),
      });

  // Add activity log
  Future<void> addProjectActivity(
    String projectId,
    ProjectActivity activity,
  ) async {
    try {
      final updates = {
        'activities': FieldValue.arrayUnion([activity.toJson()]),
      };
      await update(projectId, updates);
    } catch (e) {
      appLogger.error('Error adding project activity', e);
      rethrow;
    }
  }

  // Get projects by status
  Future<List<Project>> getProjectsByStatus(ProjectStatus status) =>
      query(field: 'status', isEqualTo: status.toString().split('.').last);

  ProjectType _parseProjectType(String? type) {
    if (type == null) return ProjectType.other;
    try {
      return ProjectType.values.firstWhere(
        (t) => t.toString().split('.').last == type,
      );
    } catch (e) {
      return ProjectType.other;
    }
  }

  ProjectStatus _parseProjectStatus(String? status) {
    if (status == null) return ProjectStatus.draft;
    try {
      return ProjectStatus.values.firstWhere(
        (s) => s.toString().split('.').last == status,
      );
    } catch (e) {
      return ProjectStatus.draft;
    }
  }
}
