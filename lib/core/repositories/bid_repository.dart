import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/bid_model.dart';
import 'firestore_repository.dart';

class BidRepository extends FirestoreRepository<Bid> {
  @override
  String get collectionPath => 'bids';

  @override
  Bid fromMap(Map<String, dynamic> map) => Bid(
    bidId: map['bidId'] ?? '',
    projectId: map['projectId'] ?? '',
    contractorId: map['contractorId'] ?? '',
    amountLkr: map['amountLkr'] ?? 0,
    timelineMonths: map['timelineMonths'] ?? 0,
    capacity: map['capacity'] ?? '',
    description: map['description'] ?? '',
    status: _parseBidStatus(map['status']),
    submittedAt: (map['submittedAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    reviewedAt: (map['reviewedAt'] as Timestamp?)?.toDate(),
    rejectionReason: map['rejectionReason'],
    metrics: map['metrics'] != null
        ? BidMetrics.fromJson(map['metrics'])
        : null,
    attachmentUrls: List<String>.from(map['attachmentUrls'] ?? []),
    recommendedPrice: (map['recommendedPrice'] as num?)?.toDouble(),
    isAIGenerated: map['isAIGenerated'] ?? false,
    customTerms: map['customTerms'],
  );

  @override
  Map<String, dynamic> toMap(Bid bid) => {
    'bidId': bid.bidId,
    'projectId': bid.projectId,
    'contractorId': bid.contractorId,
    'amountLkr': bid.amountLkr,
    'timelineMonths': bid.timelineMonths,
    'capacity': bid.capacity,
    'description': bid.description,
    'status': bid.status.toString().split('.').last,
    'submittedAt': bid.submittedAt,
    'reviewedAt': bid.reviewedAt,
    'rejectionReason': bid.rejectionReason,
    'metrics': bid.metrics?.toJson(),
    'attachmentUrls': bid.attachmentUrls,
    'recommendedPrice': bid.recommendedPrice,
    'isAIGenerated': bid.isAIGenerated,
    'customTerms': bid.customTerms,
  };

  Future<List<Bid>> getBidsByProject(String projectId) => query(
    field: 'projectId',
    isEqualTo: projectId,
    orderBy: 'submittedAt',
    descending: true,
  );

  Stream<List<Bid>> streamBidsByProject(String projectId) => streamQuery(
    field: 'projectId',
    isEqualTo: projectId,
    orderBy: 'submittedAt',
    descending: true,
  );

  Future<List<Bid>> getBidsByContractor(String contractorId) => query(
    field: 'contractorId',
    isEqualTo: contractorId,
    orderBy: 'submittedAt',
    descending: true,
  );

  Stream<List<Bid>> streamBidsByContractor(String contractorId) => streamQuery(
    field: 'contractorId',
    isEqualTo: contractorId,
    orderBy: 'submittedAt',
    descending: true,
  );

  Future<void> updateBidStatus(String bidId, BidStatus status) =>
      update(bidId, {'status': status.toString().split('.').last});

  Future<void> acceptBid(String bidId, String projectId) async {
    await update(bidId, {
      'status': BidStatus.accepted.toString().split('.').last,
      'reviewedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> rejectBid(String bidId, String reason) => update(bidId, {
    'status': BidStatus.rejected.toString().split('.').last,
    'rejectionReason': reason,
    'reviewedAt': FieldValue.serverTimestamp(),
  });

  BidStatus _parseBidStatus(String? status) {
    if (status == null) return BidStatus.submitted;
    try {
      return BidStatus.values.firstWhere(
        (s) => s.toString().split('.').last == status,
      );
    } catch (e) {
      return BidStatus.submitted;
    }
  }
}
