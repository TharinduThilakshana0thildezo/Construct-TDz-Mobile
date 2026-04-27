import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/bid_repository.dart';
import '../repositories/payment_repository.dart';
import '../repositories/project_repository.dart';
import '../repositories/review_repository.dart';

// Repository Providers
final projectRepositoryProvider = Provider((ref) => ProjectRepository());
final bidRepositoryProvider = Provider((ref) => BidRepository());
final paymentRepositoryProvider = Provider((ref) => PaymentRepository());
final reviewRepositoryProvider = Provider((ref) => ReviewRepository());
final ratingStatsRepositoryProvider = Provider(
  (ref) => RatingStatsRepository(),
);

// Firestore instance provider
final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);
