import '../../core/models/payment_model.dart';
import '../../core/utils/exceptions.dart';
import '../../core/utils/logger.dart';

/// Service to handle all payment-related operations
class PaymentService {
  // In production, integrate with Stripe SDK

  Future<Payment> createPayment({
    required String projectId,
    required String payerId,
    required String payeeId,
    required int amountLkr,
    required PaymentMethod method,
  }) async {
    try {
      const platformCommissionPercent = 2.5;
      const insuranceFeePercent = 1.0;

      final platformFee = (amountLkr * platformCommissionPercent / 100).toInt();
      final insuranceFee = (amountLkr * insuranceFeePercent / 100).toInt();
      final totalAmount = amountLkr + platformFee + insuranceFee;

      // Create payment in Stripe
      // final stripeResponse = await _stripeService.createPaymentIntent(
      //   amount: totalAmount,
      //   currency: 'LKR',
      // );

      final payment = Payment(
        paymentId: _generatePaymentId(),
        projectId: projectId,
        payerId: payerId,
        payeeId: payeeId,
        amountLkr: amountLkr,
        status: PaymentStatus.processing,
        method: method,
        createdAt: DateTime.now(),
        completedAt: null,
        milestoneId: null,
        milestoneStatus: null,
        escrowReleaseDate: null,
        platformFee: platformFee,
        insuranceFee: insuranceFee,
        totalAmount: totalAmount,
        receiptUrl: null,
        invoiceUrl: null,
        transactionReference: _generateTransactionRef(),
      );

      appLogger.info('Payment created: ${payment.paymentId}');
      return payment;
    } catch (e) {
      appLogger.error('Error creating payment', e);
      throw PaymentException(
        message: 'Failed to create payment',
        originalException: e,
      );
    }
  }

  /// Process milestone-based escrow payment
  Future<Payment> createMilestonePayment({
    required String projectId,
    required String payerId,
    required String payeeId,
    required int amountLkr,
    required String milestoneId,
    required DateTime releaseDate,
  }) async {
    try {
      const platformCommissionPercent = 2.5;
      const insuranceFeePercent = 1.0;

      final platformFee = (amountLkr * platformCommissionPercent / 100).toInt();
      final insuranceFee = (amountLkr * insuranceFeePercent / 100).toInt();
      final totalAmount = amountLkr + platformFee + insuranceFee;

      final payment = Payment(
        paymentId: _generatePaymentId(),
        projectId: projectId,
        payerId: payerId,
        payeeId: payeeId,
        amountLkr: amountLkr,
        status: PaymentStatus.pending,
        method: PaymentMethod.walletBalance,
        createdAt: DateTime.now(),
        completedAt: null,
        milestoneId: milestoneId,
        milestoneStatus: MilestonePaymentStatus.inEscrow,
        escrowReleaseDate: releaseDate,
        platformFee: platformFee,
        insuranceFee: insuranceFee,
        totalAmount: totalAmount,
        receiptUrl: null,
        invoiceUrl: null,
        transactionReference: _generateTransactionRef(),
      );

      appLogger.info('Milestone payment created: ${payment.paymentId}');
      return payment;
    } catch (e) {
      appLogger.error('Error creating milestone payment', e);
      throw PaymentException(
        message: 'Failed to create milestone payment',
        originalException: e,
      );
    }
  }

  /// Process refund
  Future<void> processRefund(Payment payment, String reason) async {
    try {
      if (payment.status != PaymentStatus.completed) {
        throw PaymentException(message: 'Can only refund completed payments');
      }

      // Call Stripe refund API
      appLogger.info('Refund processed for payment: ${payment.paymentId}');
    } catch (e) {
      appLogger.error('Error processing refund', e);
      throw PaymentException(
        message: 'Failed to process refund',
        originalException: e,
      );
    }
  }

  String _generatePaymentId() => 'PAY_${DateTime.now().millisecondsSinceEpoch}';
  String _generateTransactionRef() =>
      'TXN_${DateTime.now().millisecondsSinceEpoch}';
}

/// Service to calculate smart bid recommendations
class BidRecommendationService {
  Future<int> calculateRecommendedBidPrice({
    required int projectBudget,
    required String projectType,
    required String location,
    required int contractorHistoricalAvgBid,
    required double contractorWinRate,
  }) async {
    try {
      // ML model would be called here to predict optimal bid
      // For now, using simple heuristic

      const baseMultiplier = 0.95; // Bid 95% of budget on average
      var recommendedPrice = (projectBudget * baseMultiplier).toInt();

      // Adjust based on contractor performance
      if (contractorWinRate < 0.3) {
        recommendedPrice = (recommendedPrice * 0.90)
            .toInt(); // Reduce price if losing too much
      } else if (contractorWinRate > 0.6) {
        recommendedPrice = (recommendedPrice * 1.05)
            .toInt(); // Increase price if winning often
      }

      appLogger.info('Recommended bid price: $recommendedPrice');
      return recommendedPrice;
    } catch (e) {
      appLogger.error('Error calculating recommended bid', e);
      rethrow;
    }
  }

  /// Calculate competitive score for a bid against other bids
  Future<double> calculateCompetitiveScore({
    required int bidAmount,
    required List<int> competitorBidAmounts,
    required double contractorRating,
  }) async {
    try {
      // Calculate how competitive this bid is
      final avgCompetitorBid = competitorBidAmounts.isEmpty
          ? bidAmount
          : competitorBidAmounts.reduce((a, b) => a + b) ~/
                competitorBidAmounts.length;

      final priceScore =
          (1 - (bidAmount - avgCompetitorBid).abs() / avgCompetitorBid) * 100;
      final ratingScore = (contractorRating / 5) * 100;

      final competitiveScore = (priceScore * 0.6) + (ratingScore * 0.4);
      return competitiveScore.clamp(0, 100).toDouble();
    } catch (e) {
      appLogger.error('Error calculating competitive score', e);
      return 50;
    }
  }
}

/// Service for subscription and premium features
class SubscriptionService {
  Future<int> calculateMonthlyFee(String tier) async {
    const tierPrices = {
      'free': 0,
      'pro': 999, // LKR
      'business': 2999,
      'enterprise': 9999,
    };
    return tierPrices[tier] ?? 0;
  }

  Future<List<String>> getFeaturesByTier(String tier) async {
    const tierFeatures = {
      'free': ['Browse projects', 'Submit 3 bids per month', 'Basic profile'],
      'pro': [
        'Everything in Free',
        'Featured profile badge',
        'Unlimited bids',
        'Advanced analytics',
        'Priority support',
      ],
      'business': [
        'Everything in Pro',
        'Featured project listings',
        'API access',
        'Team collaboration',
      ],
      'enterprise': [
        'Everything in Business',
        'Custom workflows',
        'Dedicated account manager',
        'Advanced fraud detection',
      ],
    };
    return tierFeatures[tier] ?? [];
  }
}
