import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/project_model.dart';
import '../models/bid_model.dart';
import '../models/payment_model.dart';
import '../models/review_model.dart';
import 'repository_providers.dart';

// ==================== PROJECT PROVIDERS ====================

/// Get all projects for current client
final projectsProvider = FutureProvider<List<Project>>((ref) async {
  // Placeholder - will use auth state in real implementation
  return ref.watch(projectRepositoryProvider).readAll();
});

/// Get active projects in a specific district
final activeProjectsByDistrictProvider =
    FutureProvider.family<List<Project>, String>((ref, district) async {
      final repository = ref.watch(projectRepositoryProvider);
      return repository.query(field: 'status', isEqualTo: 'active');
    });

/// Get project by ID
final projectProvider = FutureProvider.family<Project?, String>(
  (ref, projectId) async =>
      ref.watch(projectRepositoryProvider).read(projectId),
);

/// Stream projects for client (real-time)
final projectsStreamProvider = StreamProvider.family<List<Project>, String>(
  (ref, clientId) =>
      ref.watch(projectRepositoryProvider).streamProjectsByClient(clientId),
);

// ==================== BID PROVIDERS ====================

/// Get bids for a specific project
final bidsByProjectProvider = FutureProvider.family<List<Bid>, String>(
  (ref, projectId) async =>
      ref.watch(bidRepositoryProvider).getBidsByProject(projectId),
);

/// Stream bids for a project (real-time)
final bidsByProjectStreamProvider = StreamProvider.family<List<Bid>, String>(
  (ref, projectId) =>
      ref.watch(bidRepositoryProvider).streamBidsByProject(projectId),
);

/// Get bids submitted by contractor
final bidsByContractorProvider = FutureProvider.family<List<Bid>, String>(
  (ref, contractorId) async =>
      ref.watch(bidRepositoryProvider).getBidsByContractor(contractorId),
);

/// Stream bids for contractor
final bidsByContractorStreamProvider = StreamProvider.family<List<Bid>, String>(
  (ref, contractorId) =>
      ref.watch(bidRepositoryProvider).streamBidsByContractor(contractorId),
);

// ==================== REVIEW PROVIDERS ====================

/// Get reviews for a user
final userReviewsProvider = FutureProvider.family<List<ProjectReview>, String>(
  (ref, userId) async =>
      ref.watch(reviewRepositoryProvider).getReviewsForUser(userId),
);

/// Get rating stats for a user
final userRatingStatsProvider = FutureProvider.family<UserRatingStats?, String>(
  (ref, userId) async =>
      ref.watch(reviewRepositoryProvider).getUserRatingStats(userId),
);

/// Stream rating stats for a user
final userRatingStatsStreamProvider =
    StreamProvider.family<UserRatingStats?, String>(
      (ref, userId) =>
          ref.watch(ratingStatsRepositoryProvider).streamStatsForUser(userId),
    );

// ==================== PAYMENT PROVIDERS ====================

/// Get payments by payer
final paymentsByPayerProvider = FutureProvider.family<List<Payment>, String>(
  (ref, payerId) async =>
      ref.watch(paymentRepositoryProvider).getPaymentsByPayer(payerId),
);

/// Get payments by payee
final paymentsByPayeeProvider = FutureProvider.family<List<Payment>, String>(
  (ref, payeeId) async =>
      ref.watch(paymentRepositoryProvider).getPaymentsByPayee(payeeId),
);

/// Stream payments for user
final paymentsStreamProvider = StreamProvider.family<List<Payment>, String>(
  (ref, userId) =>
      ref.watch(paymentRepositoryProvider).streamPaymentsByPayer(userId),
);

// ==================== SEARCH & FILTERING PROVIDERS ====================

/// Search projects by skills
final projectsBySkillsProvider =
    FutureProvider.family<List<Project>, List<String>>(
      (ref, skills) async =>
          ref.watch(projectRepositoryProvider).getProjectsBySkills(skills),
    );

/// Get projects by status
final projectsByStatusProvider =
    FutureProvider.family<List<Project>, ProjectStatus>(
      (ref, status) async =>
          ref.watch(projectRepositoryProvider).getProjectsByStatus(status),
    );

// ==================== ANALYTICS PROVIDERS ====================

/// Calculate project metrics
final projectMetricsProvider = FutureProvider.family<ProjectMetrics?, String>((
  ref,
  projectId,
) async {
  final project = await ref.watch(projectProvider(projectId).future);
  return project?.metrics;
});

/// Get user analytics (for dashboard)
final userAnalyticsProvider =
    FutureProvider.family<Map<String, dynamic>, String>((ref, userId) async {
      // This will aggregate data from bids, payments, reviews
      final bids = await ref.watch(bidsByContractorProvider(userId).future);
      final reviews = await ref.watch(userReviewsProvider(userId).future);
      final payments = await ref.watch(paymentsByPayeeProvider(userId).future);

      return {
        'totalBidsSubmitted': bids.length,
        'bidSuccessRate': _calculateBidSuccessRate(bids),
        'totalEarnings': _calculateTotalEarnings(payments),
        'avgRating': _calculateAvgRating(reviews),
      };
    });

// ==================== HELPER FUNCTIONS ====================

double _calculateBidSuccessRate(List<Bid> bids) {
  if (bids.isEmpty) return 0;
  final accepted = bids.where((b) => b.status == BidStatus.accepted).length;
  return (accepted / bids.length) * 100;
}

int _calculateTotalEarnings(List<Payment> payments) => payments
    .where((p) => p.status == PaymentStatus.completed)
    .fold(0, (sum, p) => sum + p.amountLkr);

double _calculateAvgRating(List<ProjectReview> reviews) {
  if (reviews.isEmpty) return 0;
  final totalRating = reviews.fold<double>(
    0,
    (sum, r) => sum + r.overallRating,
  );
  return totalRating / reviews.length;
}
