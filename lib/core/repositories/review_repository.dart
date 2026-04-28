import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/review_model.dart';
import '../utils/logger.dart';
import 'firestore_repository.dart';

class ReviewRepository extends FirestoreRepository<ProjectReview> {
  @override
  String get collectionPath => 'reviews';

  @override
  ProjectReview fromMap(Map<String, dynamic> map) => ProjectReview(
      reviewId: map['reviewId'] ?? '',
      projectId: map['projectId'] ?? '',
      reviewerId: map['reviewerId'] ?? '',
      revieweId: map['revieweId'] ?? '',
      qualityRating: map['qualityRating'] ?? 5,
      punctualityRating: map['punctualityRating'] ?? 5,
      communicationRating: map['communicationRating'] ?? 5,
      professionalismRating: map['professionalismRating'] ?? 5,
      narrative: map['narrative'],
      photoUrls: List<String>.from(map['photoUrls'] ?? []),
      isVerified: map['isVerified'] ?? false,
      createdAt: (map['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      helpful: map['helpful'] ?? false,
      response: map['response'],
      responseAt: (map['responseAt'] as Timestamp?)?.toDate(),
    );

  @override
  Map<String, dynamic> toMap(ProjectReview review) => {
      'reviewId': review.reviewId,
      'projectId': review.projectId,
      'reviewerId': review.reviewerId,
      'revieweId': review.revieweId,
      'qualityRating': review.qualityRating,
      'punctualityRating': review.punctualityRating,
      'communicationRating': review.communicationRating,
      'professionalismRating': review.professionalismRating,
      'narrative': review.narrative,
      'photoUrls': review.photoUrls,
      'isVerified': review.isVerified,
      'createdAt': review.createdAt,
      'helpful': review.helpful,
      'response': review.response,
      'responseAt': review.responseAt,
    };

  Future<List<ProjectReview>> getReviewsForUser(String userId) => query(
    field: 'revieweId',
    isEqualTo: userId,
    orderBy: 'createdAt',
    descending: true,
  );

  Stream<List<ProjectReview>> streamReviewsForUser(String userId) =>
      streamQuery(
        field: 'revieweId',
        isEqualTo: userId,
        orderBy: 'createdAt',
        descending: true,
      );

  Future<List<ProjectReview>> getReviewsByReviewer(String reviewerId) =>
      query(field: 'reviewerId', isEqualTo: reviewerId);

  Future<List<ProjectReview>> getProjectReviews(String projectId) =>
      query(field: 'projectId', isEqualTo: projectId);

  Future<UserRatingStats?> getUserRatingStats(String userId) async {
    try {
      final reviews = await getReviewsForUser(userId);

      if (reviews.isEmpty) return null;

      final avgQuality =
          reviews.map((r) => r.qualityRating).reduce((a, b) => a + b) /
          reviews.length;
      final avgPunctuality =
          reviews.map((r) => r.punctualityRating).reduce((a, b) => a + b) /
          reviews.length;
      final avgCommunication =
          reviews.map((r) => r.communicationRating).reduce((a, b) => a + b) /
          reviews.length;
      final avgProfessionalism =
          reviews.map((r) => r.professionalismRating).reduce((a, b) => a + b) /
          reviews.length;

      final overallRating =
          (avgQuality +
              avgPunctuality +
              avgCommunication +
              avgProfessionalism) /
          4;
      final badges = _generateBadges(overallRating, reviews.length);

      return UserRatingStats(
        userId: userId,
        avgQualityRating: avgQuality,
        avgPunctualityRating: avgPunctuality,
        avgCommunicationRating: avgCommunication,
        avgProfessionalismRating: avgProfessionalism,
        totalReviews: reviews.length,
        completedProjects: reviews.length,
        overallRating: overallRating,
        badges: badges,
        isTrusted: overallRating >= 4.5 && reviews.length >= 10,
        isTopRated: overallRating >= 4.7 && reviews.length >= 20,
        isResponsive: _checkResponsiveness(reviews),
      );
    } catch (e) {
      appLogger.error('Error calculating user rating stats', e);
      return null;
    }
  }

  Future<void> addReviewResponse(String reviewId, String response) => update(
    reviewId,
    {'response': response, 'responseAt': FieldValue.serverTimestamp()},
  );

  Future<void> markReviewHelpful(String reviewId) =>
      update(reviewId, {'helpful': true});

  List<String> _generateBadges(double rating, int reviewCount) {
    final badges = <String>[];

    if (rating >= 4.7 && reviewCount >= 20) badges.add('Top Rated');
    if (rating >= 4.5 && reviewCount >= 10) badges.add('Trusted');
    if (reviewCount >= 50) badges.add('Experienced');
    if (rating == 5.0 && reviewCount >= 5) badges.add('Perfect Score');

    return badges;
  }

  bool _checkResponsiveness(List<ProjectReview> reviews) {
    if (reviews.length < 5) return false;

    final recentReviews = reviews.take(5).toList();
    final withResponses = recentReviews.where((r) => r.response != null).length;

    return withResponses >= 3;
  }
}

/// Repository for user rating statistics and aggregates
class RatingStatsRepository extends FirestoreRepository<UserRatingStats> {
  @override
  String get collectionPath => 'rating_stats';

  @override
  UserRatingStats fromMap(Map<String, dynamic> map) => UserRatingStats(
      userId: map['userId'] ?? '',
      avgQualityRating: (map['avgQualityRating'] as num?)?.toDouble() ?? 0,
      avgPunctualityRating:
          (map['avgPunctualityRating'] as num?)?.toDouble() ?? 0,
      avgCommunicationRating:
          (map['avgCommunicationRating'] as num?)?.toDouble() ?? 0,
      avgProfessionalismRating:
          (map['avgProfessionalismRating'] as num?)?.toDouble() ?? 0,
      totalReviews: map['totalReviews'] ?? 0,
      completedProjects: map['completedProjects'] ?? 0,
      overallRating: (map['overallRating'] as num?)?.toDouble() ?? 0,
      badges: List<String>.from(map['badges'] ?? []),
      isTrusted: map['isTrusted'] ?? false,
      isTopRated: map['isTopRated'] ?? false,
      isResponsive: map['isResponsive'] ?? false,
    );

  @override
  Map<String, dynamic> toMap(UserRatingStats stats) => {
      'userId': stats.userId,
      'avgQualityRating': stats.avgQualityRating,
      'avgPunctualityRating': stats.avgPunctualityRating,
      'avgCommunicationRating': stats.avgCommunicationRating,
      'avgProfessionalismRating': stats.avgProfessionalismRating,
      'totalReviews': stats.totalReviews,
      'completedProjects': stats.completedProjects,
      'overallRating': stats.overallRating,
      'badges': stats.badges,
      'isTrusted': stats.isTrusted,
      'isTopRated': stats.isTopRated,
      'isResponsive': stats.isResponsive,
      'updatedAt': FieldValue.serverTimestamp(),
    };

  Future<UserRatingStats?> getStatsForUser(String userId) => read(userId);

  Stream<UserRatingStats?> streamStatsForUser(String userId) => firestore
        .collection(collectionPath)
        .doc(userId)
        .snapshots()
        .map((doc) => doc.exists ? fromMap(doc.data()!) : null);
}
