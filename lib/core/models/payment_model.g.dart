// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      paymentId: json['paymentId'] as String,
      projectId: json['projectId'] as String,
      payerId: json['payerId'] as String,
      payeeId: json['payeeId'] as String,
      amountLkr: (json['amountLkr'] as num).toInt(),
      status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
      method: $enumDecode(_$PaymentMethodEnumMap, json['method']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      milestoneId: json['milestoneId'] as String?,
      milestoneStatus: $enumDecodeNullable(
        _$MilestonePaymentStatusEnumMap,
        json['milestoneStatus'],
      ),
      escrowReleaseDate: json['escrowReleaseDate'] == null
          ? null
          : DateTime.parse(json['escrowReleaseDate'] as String),
      platformFee: (json['platformFee'] as num).toInt(),
      insuranceFee: (json['insuranceFee'] as num).toInt(),
      totalAmount: (json['totalAmount'] as num).toInt(),
      receiptUrl: json['receiptUrl'] as String?,
      invoiceUrl: json['invoiceUrl'] as String?,
      transactionReference: json['transactionReference'] as String,
    );

Map<String, dynamic> _$$PaymentImplToJson(
  _$PaymentImpl instance,
) => <String, dynamic>{
  'paymentId': instance.paymentId,
  'projectId': instance.projectId,
  'payerId': instance.payerId,
  'payeeId': instance.payeeId,
  'amountLkr': instance.amountLkr,
  'status': _$PaymentStatusEnumMap[instance.status]!,
  'method': _$PaymentMethodEnumMap[instance.method]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
  'milestoneId': instance.milestoneId,
  'milestoneStatus': _$MilestonePaymentStatusEnumMap[instance.milestoneStatus],
  'escrowReleaseDate': instance.escrowReleaseDate?.toIso8601String(),
  'platformFee': instance.platformFee,
  'insuranceFee': instance.insuranceFee,
  'totalAmount': instance.totalAmount,
  'receiptUrl': instance.receiptUrl,
  'invoiceUrl': instance.invoiceUrl,
  'transactionReference': instance.transactionReference,
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'pending',
  PaymentStatus.processing: 'processing',
  PaymentStatus.completed: 'completed',
  PaymentStatus.failed: 'failed',
  PaymentStatus.refunded: 'refunded',
  PaymentStatus.disputed: 'disputed',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.creditCard: 'creditCard',
  PaymentMethod.debitCard: 'debitCard',
  PaymentMethod.bankTransfer: 'bankTransfer',
  PaymentMethod.walletBalance: 'walletBalance',
  PaymentMethod.crypto: 'crypto',
};

const _$MilestonePaymentStatusEnumMap = {
  MilestonePaymentStatus.notStarted: 'notStarted',
  MilestonePaymentStatus.inEscrow: 'inEscrow',
  MilestonePaymentStatus.released: 'released',
  MilestonePaymentStatus.refunded: 'refunded',
};

_$EscrowImpl _$$EscrowImplFromJson(Map<String, dynamic> json) => _$EscrowImpl(
  escrowId: json['escrowId'] as String,
  projectId: json['projectId'] as String,
  totalAmount: (json['totalAmount'] as num).toInt(),
  milestones: (json['milestones'] as List<dynamic>)
      .map((e) => EscrowMilestone.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  releaseDate: json['releaseDate'] == null
      ? null
      : DateTime.parse(json['releaseDate'] as String),
  status: json['status'] as String,
);

Map<String, dynamic> _$$EscrowImplToJson(_$EscrowImpl instance) =>
    <String, dynamic>{
      'escrowId': instance.escrowId,
      'projectId': instance.projectId,
      'totalAmount': instance.totalAmount,
      'milestones': instance.milestones,
      'createdAt': instance.createdAt.toIso8601String(),
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'status': instance.status,
    };

_$EscrowMilestoneImpl _$$EscrowMilestoneImplFromJson(
  Map<String, dynamic> json,
) => _$EscrowMilestoneImpl(
  milestoneId: json['milestoneId'] as String,
  amount: (json['amount'] as num).toInt(),
  isReleased: json['isReleased'] as bool,
  releasedDate: json['releasedDate'] == null
      ? null
      : DateTime.parse(json['releasedDate'] as String),
  description: json['description'] as String,
);

Map<String, dynamic> _$$EscrowMilestoneImplToJson(
  _$EscrowMilestoneImpl instance,
) => <String, dynamic>{
  'milestoneId': instance.milestoneId,
  'amount': instance.amount,
  'isReleased': instance.isReleased,
  'releasedDate': instance.releasedDate?.toIso8601String(),
  'description': instance.description,
};

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      invoiceId: json['invoiceId'] as String,
      projectId: json['projectId'] as String,
      issuerId: json['issuerId'] as String,
      recipientId: json['recipientId'] as String,
      subtotalLkr: (json['subtotalLkr'] as num).toInt(),
      taxes: (json['taxes'] as num).toInt(),
      totalLkr: (json['totalLkr'] as num).toInt(),
      issuedDate: DateTime.parse(json['issuedDate'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
      status: json['status'] as String,
      lineItems: (json['lineItems'] as List<dynamic>)
          .map((e) => InvoiceLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'invoiceId': instance.invoiceId,
      'projectId': instance.projectId,
      'issuerId': instance.issuerId,
      'recipientId': instance.recipientId,
      'subtotalLkr': instance.subtotalLkr,
      'taxes': instance.taxes,
      'totalLkr': instance.totalLkr,
      'issuedDate': instance.issuedDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'status': instance.status,
      'lineItems': instance.lineItems,
    };

_$InvoiceLineItemImpl _$$InvoiceLineItemImplFromJson(
  Map<String, dynamic> json,
) => _$InvoiceLineItemImpl(
  description: json['description'] as String,
  quantity: (json['quantity'] as num).toInt(),
  unitPrice: (json['unitPrice'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$$InvoiceLineItemImplToJson(
  _$InvoiceLineItemImpl instance,
) => <String, dynamic>{
  'description': instance.description,
  'quantity': instance.quantity,
  'unitPrice': instance.unitPrice,
  'total': instance.total,
};
