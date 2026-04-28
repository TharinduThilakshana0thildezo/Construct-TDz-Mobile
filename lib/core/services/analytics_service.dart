import '../models/bid_model.dart';
import '../models/payment_model.dart';
import '../models/project_model.dart';
import '../utils/logger.dart';

/// Service for tracking user analytics and gamification
class AnalyticsService {
  /// Calculate contractor analytics
  Future<Map<String, dynamic>> getContractorAnalytics({
    required List<Bid> submittedBids,
    required List<Payment> payments,
    required List<Project> completedProjects,
    required double avgRating,
  }) async {
    try {
      final acceptedBids = submittedBids
          .where((b) => b.status == BidStatus.accepted)
          .toList();
      final successRate = submittedBids.isEmpty
          ? 0.0
          : (acceptedBids.length / submittedBids.length) * 100;

      final totalEarnings = payments
          .where((p) => p.status == PaymentStatus.completed)
          .fold(0, (sum, p) => sum + p.amountLkr);

      final avgBidValue = submittedBids.isEmpty
          ? 0
          : submittedBids.fold(0, (sum, b) => sum + b.amountLkr) ~/
                submittedBids.length;

      return {
        'totalBidsSubmitted': submittedBids.length,
        'acceptedBids': acceptedBids.length,
        'bidSuccessRate': successRate.toStringAsFixed(1),
        'totalEarnings': totalEarnings,
        'avgBidValue': avgBidValue,
        'totalProjectsCompleted': completedProjects.length,
        'avgRating': avgRating.toStringAsFixed(1),
        'repeatClientRate': _calculateRepeatClientRate(completedProjects),
        'responseTime':
            'Average 2 hours', // Would be calculated from actual data
        'onTimeDeliveryRate': _calculateOnTimeRate(completedProjects),
      };
    } catch (e) {
      appLogger.error('Error calculating contractor analytics', e);
      return {};
    }
  }

  /// Calculate client analytics
  Future<Map<String, dynamic>> getClientAnalytics({
    required List<Project> postedProjects,
    required List<Payment> payments,
    required int totalProjectsCompleted,
  }) async {
    try {
      final totalSpent = payments
          .where((p) => p.status == PaymentStatus.completed)
          .fold(0, (sum, p) => sum + p.amountLkr);

      final avgProjectBudget = postedProjects.isEmpty
          ? 0
          : postedProjects.fold(0, (sum, p) => sum + p.budgetLkr) ~/
                postedProjects.length;

      return {
        'totalProjectsPosted': postedProjects.length,
        'totalProjectsCompleted': totalProjectsCompleted,
        'totalSpent': totalSpent,
        'avgProjectBudget': avgProjectBudget,
        'avgProjectsPerMonth': _calculateAvgProjectsPerMonth(postedProjects),
        'preferredContractorCount':
            0, // Would be calculated from saved contractors
        'completionRate': totalProjectsCompleted / (postedProjects.length + 1),
      };
    } catch (e) {
      appLogger.error('Error calculating client analytics', e);
      return {};
    }
  }

  double _calculateRepeatClientRate(List<Project> projects) {
    if (projects.isEmpty) return 0;

    // Group by client and count how many have more than 1 project
    final clientCounts = <String, int>{};
    for (final project in projects) {
      clientCounts[project.clientId] =
          (clientCounts[project.clientId] ?? 0) + 1;
    }

    final repeatClients = clientCounts.values
        .where((count) => count > 1)
        .length;
    return (repeatClients / clientCounts.length) * 100;
  }

  double _calculateOnTimeRate(List<Project> projects) {
    if (projects.isEmpty) return 0;

    final onTimeProjects = projects.where((p) {
      if (p.completionDeadline == null) return true;
      return p.completionDeadline!.isAfter(DateTime.now());
    }).length;

    return (onTimeProjects / projects.length) * 100;
  }

  double _calculateAvgProjectsPerMonth(List<Project> projects) {
    if (projects.isEmpty) return 0;

    final firstProject = projects.reduce(
      (a, b) => a.postedAt.isBefore(b.postedAt) ? a : b,
    );
    final monthsDifference =
        DateTime.now().difference(firstProject.postedAt).inDays / 30;

    return projects.length / (monthsDifference > 0 ? monthsDifference : 1);
  }
}

/// Service for gamification and rewards
class GamificationService {
  /// Calculate points earned for an action
  int calculatePointsForAction(String action) {
    const actionPoints = {
      'bid_submitted': 10,
      'bid_accepted': 100,
      'project_completed': 500,
      'review_received': 50,
      'five_star_review': 100,
      'profile_updated': 25,
      'certification_added': 75,
      'referral_successful': 200,
      'milestone_completed': 150,
      'payment_completed': 50,
    };

    return actionPoints[action] ?? 0;
  }

  /// Get current level based on points
  String getLevelFromPoints(int points) {
    if (points < 100) return 'Starter';
    if (points < 500) return 'Established';
    if (points < 2000) return 'Trusted';
    if (points < 5000) return 'Elite';
    return 'Master';
  }

  /// Get progress to next level
  Map<String, dynamic> getLevelProgress(int currentPoints) {
    const levels = {
      'Starter': 100,
      'Established': 500,
      'Trusted': 2000,
      'Elite': 5000,
      'Master': 10000,
    };

    final currentLevel = getLevelFromPoints(currentPoints);
    final nextLevel = _getNextLevel(currentLevel);
    final nextLevelPoints = levels[nextLevel] ?? 10000;

    return {
      'currentLevel': currentLevel,
      'nextLevel': nextLevel,
      'currentPoints': currentPoints,
      'pointsUntilNextLevel': nextLevelPoints - currentPoints,
      'progressPercent': ((currentPoints / nextLevelPoints) * 100).clamp(
        0,
        100,
      ),
    };
  }

  /// Get achievements/badges for user
  List<String> getUnlockedBadges(
    int points,
    int completedProjects,
    double avgRating,
  ) {
    final badges = <String>[];

    // Points-based badges
    if (points >= 100) badges.add('First Steps');
    if (points >= 500) badges.add('Active Member');
    if (points >= 2000) badges.add('Trusted Professional');
    if (points >= 5000) badges.add('Elite Contractor');

    // Performance-based badges
    if (completedProjects >= 5) badges.add('Project Manager');
    if (completedProjects >= 20) badges.add('Seasoned Pro');
    if (avgRating >= 4.7 && completedProjects >= 10) badges.add('Top Rated');
    if (avgRating == 5.0 && completedProjects >= 5) badges.add('Perfect Score');

    return badges.toSet().toList();
  }

  String _getNextLevel(String currentLevel) {
    const levels = ['Starter', 'Established', 'Trusted', 'Elite', 'Master'];
    final index = levels.indexOf(currentLevel);
    return index < levels.length - 1 ? levels[index + 1] : 'Master';
  }
}

/// Leaderboard service
class LeaderboardService {
  /// Get top contractors by various metrics
  Future<List<Map<String, dynamic>>> getTopContractors({
    required String metric, // 'rating', 'projects_completed', 'earnings'
    required int limit,
    required String? location, // Optional filter
  }) async {
    try {
      // In real implementation, would query Firestore
      // For now, returning empty list as placeholder
      return [];
    } catch (e) {
      appLogger.error('Error fetching leaderboard', e);
      return [];
    }
  }

  /// Get contractor rank in leaderboard
  Future<int> getContractorRank({
    required String contractorId,
    required String metric,
  }) async {
    try {
      // Would query Firestore to get ranking
      return 1;
    } catch (e) {
      appLogger.error('Error getting contractor rank', e);
      return -1;
    }
  }
}
