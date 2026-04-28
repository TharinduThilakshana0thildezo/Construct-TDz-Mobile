import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/payment_model.dart';
import 'firestore_repository.dart';

class PaymentRepository extends FirestoreRepository<Payment> {
  @override
  String get collectionPath => 'payments';

  @override
  Payment fromMap(Map<String, dynamic> map) => Payment(
    paymentId: map['paymentId'] ?? '',
    projectId: map['projectId'] ?? '',
    payerId: map['payerId'] ?? '',
    payeeId: map['payeeId'] ?? '',
    amountLkr: map['amountLkr'] ?? 0,
    status: _parsePaymentStatus(map['status']),
    method: _parsePaymentMethod(map['method']),
    createdAt: (map['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    completedAt: (map['completedAt'] as Timestamp?)?.toDate(),
    milestoneId: map['milestoneId'],
    milestoneStatus: _parseMilestoneStatus(map['milestoneStatus']),
    escrowReleaseDate: (map['escrowReleaseDate'] as Timestamp?)?.toDate(),
    platformFee: map['platformFee'] ?? 0,
    insuranceFee: map['insuranceFee'] ?? 0,
    totalAmount: map['totalAmount'] ?? 0,
    receiptUrl: map['receiptUrl'],
    invoiceUrl: map['invoiceUrl'],
    transactionReference: map['transactionReference'] ?? '',
  );

  @override
  Map<String, dynamic> toMap(Payment payment) => {
    'paymentId': payment.paymentId,
    'projectId': payment.projectId,
    'payerId': payment.payerId,
    'payeeId': payment.payeeId,
    'amountLkr': payment.amountLkr,
    'status': payment.status.toString().split('.').last,
    'method': payment.method.toString().split('.').last,
    'createdAt': payment.createdAt,
    'completedAt': payment.completedAt,
    'milestoneId': payment.milestoneId,
    'milestoneStatus': payment.milestoneStatus?.toString().split('.').last,
    'escrowReleaseDate': payment.escrowReleaseDate,
    'platformFee': payment.platformFee,
    'insuranceFee': payment.insuranceFee,
    'totalAmount': payment.totalAmount,
    'receiptUrl': payment.receiptUrl,
    'invoiceUrl': payment.invoiceUrl,
    'transactionReference': payment.transactionReference,
  };

  Future<List<Payment>> getPaymentsByPayer(String payerId) => query(
    field: 'payerId',
    isEqualTo: payerId,
    orderBy: 'createdAt',
    descending: true,
  );

  Future<List<Payment>> getPaymentsByPayee(String payeeId) => query(
    field: 'payeeId',
    isEqualTo: payeeId,
    orderBy: 'createdAt',
    descending: true,
  );

  Future<List<Payment>> getPaymentsByProject(String projectId) =>
      query(field: 'projectId', isEqualTo: projectId);

  Stream<List<Payment>> streamPaymentsByPayer(String payerId) => streamQuery(
    field: 'payerId',
    isEqualTo: payerId,
    orderBy: 'createdAt',
    descending: true,
  );

  Future<void> updatePaymentStatus(String paymentId, PaymentStatus status) =>
      update(paymentId, {
        'status': status.toString().split('.').last,
        'completedAt': status == PaymentStatus.completed
            ? FieldValue.serverTimestamp()
            : null,
      });

  Future<void> releaseEscrow(String paymentId) => update(paymentId, {
    'milestoneStatus': MilestonePaymentStatus.released
        .toString()
        .split('.')
        .last,
    'status': PaymentStatus.completed.toString().split('.').last,
  });

  PaymentStatus _parsePaymentStatus(String? status) {
    if (status == null) return PaymentStatus.pending;
    try {
      return PaymentStatus.values.firstWhere(
        (s) => s.toString().split('.').last == status,
      );
    } catch (e) {
      return PaymentStatus.pending;
    }
  }

  PaymentMethod _parsePaymentMethod(String? method) {
    if (method == null) return PaymentMethod.creditCard;
    try {
      return PaymentMethod.values.firstWhere(
        (m) => m.toString().split('.').last == method,
      );
    } catch (e) {
      return PaymentMethod.creditCard;
    }
  }

  MilestonePaymentStatus? _parseMilestoneStatus(String? status) {
    if (status == null) return null;
    try {
      return MilestonePaymentStatus.values.firstWhere(
        (s) => s.toString().split('.').last == status,
      );
    } catch (e) {
      return null;
    }
  }
}
