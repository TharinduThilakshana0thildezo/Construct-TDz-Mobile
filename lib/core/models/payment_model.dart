import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

enum PaymentStatus {
  pending,
  processing,
  completed,
  failed,
  refunded,
  disputed,
}

enum PaymentMethod {
  creditCard,
  debitCard,
  bankTransfer,
  walletBalance,
  crypto,
}

enum MilestonePaymentStatus { notStarted, inEscrow, released, refunded }

@freezed
class Payment with _$Payment {
  const factory Payment({
    required String paymentId,
    required String projectId,
    required String payerId,
    required String payeeId,
    required int amountLkr,
    required PaymentStatus status,
    required PaymentMethod method,
    required DateTime createdAt,
    required DateTime? completedAt,

    // Milestone Payment
    required String? milestoneId,
    required MilestonePaymentStatus? milestoneStatus,
    required DateTime? escrowReleaseDate,

    // Fees
    required int platformFee,
    required int insuranceFee,
    required int totalAmount,

    // Receipt & Tracking
    required String? receiptUrl,
    required String? invoiceUrl,
    required String transactionReference,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class Escrow with _$Escrow {
  const factory Escrow({
    required String escrowId,
    required String projectId,
    required int totalAmount,
    required List<EscrowMilestone> milestones,
    required DateTime createdAt,
    required DateTime? releaseDate,
    required String status,
  }) = _Escrow;

  factory Escrow.fromJson(Map<String, dynamic> json) => _$EscrowFromJson(json);
}

@freezed
class EscrowMilestone with _$EscrowMilestone {
  const factory EscrowMilestone({
    required String milestoneId,
    required int amount,
    required bool isReleased,
    required DateTime? releasedDate,
    required String description,
  }) = _EscrowMilestone;

  factory EscrowMilestone.fromJson(Map<String, dynamic> json) =>
      _$EscrowMilestoneFromJson(json);
}

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required String invoiceId,
    required String projectId,
    required String issuerId,
    required String recipientId,
    required int subtotalLkr,
    required int taxes,
    required int totalLkr,
    required DateTime issuedDate,
    required DateTime dueDate,
    required String status,
    required List<InvoiceLineItem> lineItems,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}

@freezed
class InvoiceLineItem with _$InvoiceLineItem {
  const factory InvoiceLineItem({
    required String description,
    required int quantity,
    required int unitPrice,
    required int total,
  }) = _InvoiceLineItem;

  factory InvoiceLineItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineItemFromJson(json);
}
