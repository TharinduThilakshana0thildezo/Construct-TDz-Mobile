// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String get paymentId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get payerId => throw _privateConstructorUsedError;
  String get payeeId => throw _privateConstructorUsedError;
  int get amountLkr => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  PaymentMethod get method => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get completedAt =>
      throw _privateConstructorUsedError; // Milestone Payment
  String? get milestoneId => throw _privateConstructorUsedError;
  MilestonePaymentStatus? get milestoneStatus =>
      throw _privateConstructorUsedError;
  DateTime? get escrowReleaseDate => throw _privateConstructorUsedError; // Fees
  int get platformFee => throw _privateConstructorUsedError;
  int get insuranceFee => throw _privateConstructorUsedError;
  int get totalAmount =>
      throw _privateConstructorUsedError; // Receipt & Tracking
  String? get receiptUrl => throw _privateConstructorUsedError;
  String? get invoiceUrl => throw _privateConstructorUsedError;
  String get transactionReference => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call({
    String paymentId,
    String projectId,
    String payerId,
    String payeeId,
    int amountLkr,
    PaymentStatus status,
    PaymentMethod method,
    DateTime createdAt,
    DateTime? completedAt,
    String? milestoneId,
    MilestonePaymentStatus? milestoneStatus,
    DateTime? escrowReleaseDate,
    int platformFee,
    int insuranceFee,
    int totalAmount,
    String? receiptUrl,
    String? invoiceUrl,
    String transactionReference,
  });
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? projectId = null,
    Object? payerId = null,
    Object? payeeId = null,
    Object? amountLkr = null,
    Object? status = null,
    Object? method = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
    Object? milestoneId = freezed,
    Object? milestoneStatus = freezed,
    Object? escrowReleaseDate = freezed,
    Object? platformFee = null,
    Object? insuranceFee = null,
    Object? totalAmount = null,
    Object? receiptUrl = freezed,
    Object? invoiceUrl = freezed,
    Object? transactionReference = null,
  }) {
    return _then(
      _value.copyWith(
            paymentId: null == paymentId
                ? _value.paymentId
                : paymentId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            payerId: null == payerId
                ? _value.payerId
                : payerId // ignore: cast_nullable_to_non_nullable
                      as String,
            payeeId: null == payeeId
                ? _value.payeeId
                : payeeId // ignore: cast_nullable_to_non_nullable
                      as String,
            amountLkr: null == amountLkr
                ? _value.amountLkr
                : amountLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as PaymentStatus,
            method: null == method
                ? _value.method
                : method // ignore: cast_nullable_to_non_nullable
                      as PaymentMethod,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            milestoneId: freezed == milestoneId
                ? _value.milestoneId
                : milestoneId // ignore: cast_nullable_to_non_nullable
                      as String?,
            milestoneStatus: freezed == milestoneStatus
                ? _value.milestoneStatus
                : milestoneStatus // ignore: cast_nullable_to_non_nullable
                      as MilestonePaymentStatus?,
            escrowReleaseDate: freezed == escrowReleaseDate
                ? _value.escrowReleaseDate
                : escrowReleaseDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            platformFee: null == platformFee
                ? _value.platformFee
                : platformFee // ignore: cast_nullable_to_non_nullable
                      as int,
            insuranceFee: null == insuranceFee
                ? _value.insuranceFee
                : insuranceFee // ignore: cast_nullable_to_non_nullable
                      as int,
            totalAmount: null == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as int,
            receiptUrl: freezed == receiptUrl
                ? _value.receiptUrl
                : receiptUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            invoiceUrl: freezed == invoiceUrl
                ? _value.invoiceUrl
                : invoiceUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            transactionReference: null == transactionReference
                ? _value.transactionReference
                : transactionReference // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
    _$PaymentImpl value,
    $Res Function(_$PaymentImpl) then,
  ) = __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String paymentId,
    String projectId,
    String payerId,
    String payeeId,
    int amountLkr,
    PaymentStatus status,
    PaymentMethod method,
    DateTime createdAt,
    DateTime? completedAt,
    String? milestoneId,
    MilestonePaymentStatus? milestoneStatus,
    DateTime? escrowReleaseDate,
    int platformFee,
    int insuranceFee,
    int totalAmount,
    String? receiptUrl,
    String? invoiceUrl,
    String transactionReference,
  });
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
    _$PaymentImpl _value,
    $Res Function(_$PaymentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? projectId = null,
    Object? payerId = null,
    Object? payeeId = null,
    Object? amountLkr = null,
    Object? status = null,
    Object? method = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
    Object? milestoneId = freezed,
    Object? milestoneStatus = freezed,
    Object? escrowReleaseDate = freezed,
    Object? platformFee = null,
    Object? insuranceFee = null,
    Object? totalAmount = null,
    Object? receiptUrl = freezed,
    Object? invoiceUrl = freezed,
    Object? transactionReference = null,
  }) {
    return _then(
      _$PaymentImpl(
        paymentId: null == paymentId
            ? _value.paymentId
            : paymentId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        payerId: null == payerId
            ? _value.payerId
            : payerId // ignore: cast_nullable_to_non_nullable
                  as String,
        payeeId: null == payeeId
            ? _value.payeeId
            : payeeId // ignore: cast_nullable_to_non_nullable
                  as String,
        amountLkr: null == amountLkr
            ? _value.amountLkr
            : amountLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as PaymentStatus,
        method: null == method
            ? _value.method
            : method // ignore: cast_nullable_to_non_nullable
                  as PaymentMethod,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        milestoneId: freezed == milestoneId
            ? _value.milestoneId
            : milestoneId // ignore: cast_nullable_to_non_nullable
                  as String?,
        milestoneStatus: freezed == milestoneStatus
            ? _value.milestoneStatus
            : milestoneStatus // ignore: cast_nullable_to_non_nullable
                  as MilestonePaymentStatus?,
        escrowReleaseDate: freezed == escrowReleaseDate
            ? _value.escrowReleaseDate
            : escrowReleaseDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        platformFee: null == platformFee
            ? _value.platformFee
            : platformFee // ignore: cast_nullable_to_non_nullable
                  as int,
        insuranceFee: null == insuranceFee
            ? _value.insuranceFee
            : insuranceFee // ignore: cast_nullable_to_non_nullable
                  as int,
        totalAmount: null == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as int,
        receiptUrl: freezed == receiptUrl
            ? _value.receiptUrl
            : receiptUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        invoiceUrl: freezed == invoiceUrl
            ? _value.invoiceUrl
            : invoiceUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        transactionReference: null == transactionReference
            ? _value.transactionReference
            : transactionReference // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl({
    required this.paymentId,
    required this.projectId,
    required this.payerId,
    required this.payeeId,
    required this.amountLkr,
    required this.status,
    required this.method,
    required this.createdAt,
    required this.completedAt,
    required this.milestoneId,
    required this.milestoneStatus,
    required this.escrowReleaseDate,
    required this.platformFee,
    required this.insuranceFee,
    required this.totalAmount,
    required this.receiptUrl,
    required this.invoiceUrl,
    required this.transactionReference,
  });

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final String paymentId;
  @override
  final String projectId;
  @override
  final String payerId;
  @override
  final String payeeId;
  @override
  final int amountLkr;
  @override
  final PaymentStatus status;
  @override
  final PaymentMethod method;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;
  // Milestone Payment
  @override
  final String? milestoneId;
  @override
  final MilestonePaymentStatus? milestoneStatus;
  @override
  final DateTime? escrowReleaseDate;
  // Fees
  @override
  final int platformFee;
  @override
  final int insuranceFee;
  @override
  final int totalAmount;
  // Receipt & Tracking
  @override
  final String? receiptUrl;
  @override
  final String? invoiceUrl;
  @override
  final String transactionReference;

  @override
  String toString() {
    return 'Payment(paymentId: $paymentId, projectId: $projectId, payerId: $payerId, payeeId: $payeeId, amountLkr: $amountLkr, status: $status, method: $method, createdAt: $createdAt, completedAt: $completedAt, milestoneId: $milestoneId, milestoneStatus: $milestoneStatus, escrowReleaseDate: $escrowReleaseDate, platformFee: $platformFee, insuranceFee: $insuranceFee, totalAmount: $totalAmount, receiptUrl: $receiptUrl, invoiceUrl: $invoiceUrl, transactionReference: $transactionReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.payerId, payerId) || other.payerId == payerId) &&
            (identical(other.payeeId, payeeId) || other.payeeId == payeeId) &&
            (identical(other.amountLkr, amountLkr) ||
                other.amountLkr == amountLkr) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.milestoneId, milestoneId) ||
                other.milestoneId == milestoneId) &&
            (identical(other.milestoneStatus, milestoneStatus) ||
                other.milestoneStatus == milestoneStatus) &&
            (identical(other.escrowReleaseDate, escrowReleaseDate) ||
                other.escrowReleaseDate == escrowReleaseDate) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.insuranceFee, insuranceFee) ||
                other.insuranceFee == insuranceFee) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.receiptUrl, receiptUrl) ||
                other.receiptUrl == receiptUrl) &&
            (identical(other.invoiceUrl, invoiceUrl) ||
                other.invoiceUrl == invoiceUrl) &&
            (identical(other.transactionReference, transactionReference) ||
                other.transactionReference == transactionReference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    paymentId,
    projectId,
    payerId,
    payeeId,
    amountLkr,
    status,
    method,
    createdAt,
    completedAt,
    milestoneId,
    milestoneStatus,
    escrowReleaseDate,
    platformFee,
    insuranceFee,
    totalAmount,
    receiptUrl,
    invoiceUrl,
    transactionReference,
  );

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(this);
  }
}

abstract class _Payment implements Payment {
  const factory _Payment({
    required final String paymentId,
    required final String projectId,
    required final String payerId,
    required final String payeeId,
    required final int amountLkr,
    required final PaymentStatus status,
    required final PaymentMethod method,
    required final DateTime createdAt,
    required final DateTime? completedAt,
    required final String? milestoneId,
    required final MilestonePaymentStatus? milestoneStatus,
    required final DateTime? escrowReleaseDate,
    required final int platformFee,
    required final int insuranceFee,
    required final int totalAmount,
    required final String? receiptUrl,
    required final String? invoiceUrl,
    required final String transactionReference,
  }) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  String get paymentId;
  @override
  String get projectId;
  @override
  String get payerId;
  @override
  String get payeeId;
  @override
  int get amountLkr;
  @override
  PaymentStatus get status;
  @override
  PaymentMethod get method;
  @override
  DateTime get createdAt;
  @override
  DateTime? get completedAt; // Milestone Payment
  @override
  String? get milestoneId;
  @override
  MilestonePaymentStatus? get milestoneStatus;
  @override
  DateTime? get escrowReleaseDate; // Fees
  @override
  int get platformFee;
  @override
  int get insuranceFee;
  @override
  int get totalAmount; // Receipt & Tracking
  @override
  String? get receiptUrl;
  @override
  String? get invoiceUrl;
  @override
  String get transactionReference;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Escrow _$EscrowFromJson(Map<String, dynamic> json) {
  return _Escrow.fromJson(json);
}

/// @nodoc
mixin _$Escrow {
  String get escrowId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  List<EscrowMilestone> get milestones => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this Escrow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Escrow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EscrowCopyWith<Escrow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EscrowCopyWith<$Res> {
  factory $EscrowCopyWith(Escrow value, $Res Function(Escrow) then) =
      _$EscrowCopyWithImpl<$Res, Escrow>;
  @useResult
  $Res call({
    String escrowId,
    String projectId,
    int totalAmount,
    List<EscrowMilestone> milestones,
    DateTime createdAt,
    DateTime? releaseDate,
    String status,
  });
}

/// @nodoc
class _$EscrowCopyWithImpl<$Res, $Val extends Escrow>
    implements $EscrowCopyWith<$Res> {
  _$EscrowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Escrow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? escrowId = null,
    Object? projectId = null,
    Object? totalAmount = null,
    Object? milestones = null,
    Object? createdAt = null,
    Object? releaseDate = freezed,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            escrowId: null == escrowId
                ? _value.escrowId
                : escrowId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            totalAmount: null == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as int,
            milestones: null == milestones
                ? _value.milestones
                : milestones // ignore: cast_nullable_to_non_nullable
                      as List<EscrowMilestone>,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            releaseDate: freezed == releaseDate
                ? _value.releaseDate
                : releaseDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EscrowImplCopyWith<$Res> implements $EscrowCopyWith<$Res> {
  factory _$$EscrowImplCopyWith(
    _$EscrowImpl value,
    $Res Function(_$EscrowImpl) then,
  ) = __$$EscrowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String escrowId,
    String projectId,
    int totalAmount,
    List<EscrowMilestone> milestones,
    DateTime createdAt,
    DateTime? releaseDate,
    String status,
  });
}

/// @nodoc
class __$$EscrowImplCopyWithImpl<$Res>
    extends _$EscrowCopyWithImpl<$Res, _$EscrowImpl>
    implements _$$EscrowImplCopyWith<$Res> {
  __$$EscrowImplCopyWithImpl(
    _$EscrowImpl _value,
    $Res Function(_$EscrowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Escrow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? escrowId = null,
    Object? projectId = null,
    Object? totalAmount = null,
    Object? milestones = null,
    Object? createdAt = null,
    Object? releaseDate = freezed,
    Object? status = null,
  }) {
    return _then(
      _$EscrowImpl(
        escrowId: null == escrowId
            ? _value.escrowId
            : escrowId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        totalAmount: null == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as int,
        milestones: null == milestones
            ? _value._milestones
            : milestones // ignore: cast_nullable_to_non_nullable
                  as List<EscrowMilestone>,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        releaseDate: freezed == releaseDate
            ? _value.releaseDate
            : releaseDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EscrowImpl implements _Escrow {
  const _$EscrowImpl({
    required this.escrowId,
    required this.projectId,
    required this.totalAmount,
    required final List<EscrowMilestone> milestones,
    required this.createdAt,
    required this.releaseDate,
    required this.status,
  }) : _milestones = milestones;

  factory _$EscrowImpl.fromJson(Map<String, dynamic> json) =>
      _$$EscrowImplFromJson(json);

  @override
  final String escrowId;
  @override
  final String projectId;
  @override
  final int totalAmount;
  final List<EscrowMilestone> _milestones;
  @override
  List<EscrowMilestone> get milestones {
    if (_milestones is EqualUnmodifiableListView) return _milestones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_milestones);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? releaseDate;
  @override
  final String status;

  @override
  String toString() {
    return 'Escrow(escrowId: $escrowId, projectId: $projectId, totalAmount: $totalAmount, milestones: $milestones, createdAt: $createdAt, releaseDate: $releaseDate, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EscrowImpl &&
            (identical(other.escrowId, escrowId) ||
                other.escrowId == escrowId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            const DeepCollectionEquality().equals(
              other._milestones,
              _milestones,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    escrowId,
    projectId,
    totalAmount,
    const DeepCollectionEquality().hash(_milestones),
    createdAt,
    releaseDate,
    status,
  );

  /// Create a copy of Escrow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EscrowImplCopyWith<_$EscrowImpl> get copyWith =>
      __$$EscrowImplCopyWithImpl<_$EscrowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EscrowImplToJson(this);
  }
}

abstract class _Escrow implements Escrow {
  const factory _Escrow({
    required final String escrowId,
    required final String projectId,
    required final int totalAmount,
    required final List<EscrowMilestone> milestones,
    required final DateTime createdAt,
    required final DateTime? releaseDate,
    required final String status,
  }) = _$EscrowImpl;

  factory _Escrow.fromJson(Map<String, dynamic> json) = _$EscrowImpl.fromJson;

  @override
  String get escrowId;
  @override
  String get projectId;
  @override
  int get totalAmount;
  @override
  List<EscrowMilestone> get milestones;
  @override
  DateTime get createdAt;
  @override
  DateTime? get releaseDate;
  @override
  String get status;

  /// Create a copy of Escrow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EscrowImplCopyWith<_$EscrowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EscrowMilestone _$EscrowMilestoneFromJson(Map<String, dynamic> json) {
  return _EscrowMilestone.fromJson(json);
}

/// @nodoc
mixin _$EscrowMilestone {
  String get milestoneId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  bool get isReleased => throw _privateConstructorUsedError;
  DateTime? get releasedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this EscrowMilestone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EscrowMilestone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EscrowMilestoneCopyWith<EscrowMilestone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EscrowMilestoneCopyWith<$Res> {
  factory $EscrowMilestoneCopyWith(
    EscrowMilestone value,
    $Res Function(EscrowMilestone) then,
  ) = _$EscrowMilestoneCopyWithImpl<$Res, EscrowMilestone>;
  @useResult
  $Res call({
    String milestoneId,
    int amount,
    bool isReleased,
    DateTime? releasedDate,
    String description,
  });
}

/// @nodoc
class _$EscrowMilestoneCopyWithImpl<$Res, $Val extends EscrowMilestone>
    implements $EscrowMilestoneCopyWith<$Res> {
  _$EscrowMilestoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EscrowMilestone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? milestoneId = null,
    Object? amount = null,
    Object? isReleased = null,
    Object? releasedDate = freezed,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            milestoneId: null == milestoneId
                ? _value.milestoneId
                : milestoneId // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            isReleased: null == isReleased
                ? _value.isReleased
                : isReleased // ignore: cast_nullable_to_non_nullable
                      as bool,
            releasedDate: freezed == releasedDate
                ? _value.releasedDate
                : releasedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EscrowMilestoneImplCopyWith<$Res>
    implements $EscrowMilestoneCopyWith<$Res> {
  factory _$$EscrowMilestoneImplCopyWith(
    _$EscrowMilestoneImpl value,
    $Res Function(_$EscrowMilestoneImpl) then,
  ) = __$$EscrowMilestoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String milestoneId,
    int amount,
    bool isReleased,
    DateTime? releasedDate,
    String description,
  });
}

/// @nodoc
class __$$EscrowMilestoneImplCopyWithImpl<$Res>
    extends _$EscrowMilestoneCopyWithImpl<$Res, _$EscrowMilestoneImpl>
    implements _$$EscrowMilestoneImplCopyWith<$Res> {
  __$$EscrowMilestoneImplCopyWithImpl(
    _$EscrowMilestoneImpl _value,
    $Res Function(_$EscrowMilestoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EscrowMilestone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? milestoneId = null,
    Object? amount = null,
    Object? isReleased = null,
    Object? releasedDate = freezed,
    Object? description = null,
  }) {
    return _then(
      _$EscrowMilestoneImpl(
        milestoneId: null == milestoneId
            ? _value.milestoneId
            : milestoneId // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        isReleased: null == isReleased
            ? _value.isReleased
            : isReleased // ignore: cast_nullable_to_non_nullable
                  as bool,
        releasedDate: freezed == releasedDate
            ? _value.releasedDate
            : releasedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EscrowMilestoneImpl implements _EscrowMilestone {
  const _$EscrowMilestoneImpl({
    required this.milestoneId,
    required this.amount,
    required this.isReleased,
    required this.releasedDate,
    required this.description,
  });

  factory _$EscrowMilestoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$EscrowMilestoneImplFromJson(json);

  @override
  final String milestoneId;
  @override
  final int amount;
  @override
  final bool isReleased;
  @override
  final DateTime? releasedDate;
  @override
  final String description;

  @override
  String toString() {
    return 'EscrowMilestone(milestoneId: $milestoneId, amount: $amount, isReleased: $isReleased, releasedDate: $releasedDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EscrowMilestoneImpl &&
            (identical(other.milestoneId, milestoneId) ||
                other.milestoneId == milestoneId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isReleased, isReleased) ||
                other.isReleased == isReleased) &&
            (identical(other.releasedDate, releasedDate) ||
                other.releasedDate == releasedDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    milestoneId,
    amount,
    isReleased,
    releasedDate,
    description,
  );

  /// Create a copy of EscrowMilestone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EscrowMilestoneImplCopyWith<_$EscrowMilestoneImpl> get copyWith =>
      __$$EscrowMilestoneImplCopyWithImpl<_$EscrowMilestoneImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EscrowMilestoneImplToJson(this);
  }
}

abstract class _EscrowMilestone implements EscrowMilestone {
  const factory _EscrowMilestone({
    required final String milestoneId,
    required final int amount,
    required final bool isReleased,
    required final DateTime? releasedDate,
    required final String description,
  }) = _$EscrowMilestoneImpl;

  factory _EscrowMilestone.fromJson(Map<String, dynamic> json) =
      _$EscrowMilestoneImpl.fromJson;

  @override
  String get milestoneId;
  @override
  int get amount;
  @override
  bool get isReleased;
  @override
  DateTime? get releasedDate;
  @override
  String get description;

  /// Create a copy of EscrowMilestone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EscrowMilestoneImplCopyWith<_$EscrowMilestoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  String get invoiceId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get issuerId => throw _privateConstructorUsedError;
  String get recipientId => throw _privateConstructorUsedError;
  int get subtotalLkr => throw _privateConstructorUsedError;
  int get taxes => throw _privateConstructorUsedError;
  int get totalLkr => throw _privateConstructorUsedError;
  DateTime get issuedDate => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<InvoiceLineItem> get lineItems => throw _privateConstructorUsedError;

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call({
    String invoiceId,
    String projectId,
    String issuerId,
    String recipientId,
    int subtotalLkr,
    int taxes,
    int totalLkr,
    DateTime issuedDate,
    DateTime dueDate,
    String status,
    List<InvoiceLineItem> lineItems,
  });
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? projectId = null,
    Object? issuerId = null,
    Object? recipientId = null,
    Object? subtotalLkr = null,
    Object? taxes = null,
    Object? totalLkr = null,
    Object? issuedDate = null,
    Object? dueDate = null,
    Object? status = null,
    Object? lineItems = null,
  }) {
    return _then(
      _value.copyWith(
            invoiceId: null == invoiceId
                ? _value.invoiceId
                : invoiceId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            issuerId: null == issuerId
                ? _value.issuerId
                : issuerId // ignore: cast_nullable_to_non_nullable
                      as String,
            recipientId: null == recipientId
                ? _value.recipientId
                : recipientId // ignore: cast_nullable_to_non_nullable
                      as String,
            subtotalLkr: null == subtotalLkr
                ? _value.subtotalLkr
                : subtotalLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            taxes: null == taxes
                ? _value.taxes
                : taxes // ignore: cast_nullable_to_non_nullable
                      as int,
            totalLkr: null == totalLkr
                ? _value.totalLkr
                : totalLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            issuedDate: null == issuedDate
                ? _value.issuedDate
                : issuedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            dueDate: null == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            lineItems: null == lineItems
                ? _value.lineItems
                : lineItems // ignore: cast_nullable_to_non_nullable
                      as List<InvoiceLineItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
    _$InvoiceImpl value,
    $Res Function(_$InvoiceImpl) then,
  ) = __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String invoiceId,
    String projectId,
    String issuerId,
    String recipientId,
    int subtotalLkr,
    int taxes,
    int totalLkr,
    DateTime issuedDate,
    DateTime dueDate,
    String status,
    List<InvoiceLineItem> lineItems,
  });
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
    _$InvoiceImpl _value,
    $Res Function(_$InvoiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? projectId = null,
    Object? issuerId = null,
    Object? recipientId = null,
    Object? subtotalLkr = null,
    Object? taxes = null,
    Object? totalLkr = null,
    Object? issuedDate = null,
    Object? dueDate = null,
    Object? status = null,
    Object? lineItems = null,
  }) {
    return _then(
      _$InvoiceImpl(
        invoiceId: null == invoiceId
            ? _value.invoiceId
            : invoiceId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        issuerId: null == issuerId
            ? _value.issuerId
            : issuerId // ignore: cast_nullable_to_non_nullable
                  as String,
        recipientId: null == recipientId
            ? _value.recipientId
            : recipientId // ignore: cast_nullable_to_non_nullable
                  as String,
        subtotalLkr: null == subtotalLkr
            ? _value.subtotalLkr
            : subtotalLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        taxes: null == taxes
            ? _value.taxes
            : taxes // ignore: cast_nullable_to_non_nullable
                  as int,
        totalLkr: null == totalLkr
            ? _value.totalLkr
            : totalLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        issuedDate: null == issuedDate
            ? _value.issuedDate
            : issuedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        dueDate: null == dueDate
            ? _value.dueDate
            : dueDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        lineItems: null == lineItems
            ? _value._lineItems
            : lineItems // ignore: cast_nullable_to_non_nullable
                  as List<InvoiceLineItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceImpl implements _Invoice {
  const _$InvoiceImpl({
    required this.invoiceId,
    required this.projectId,
    required this.issuerId,
    required this.recipientId,
    required this.subtotalLkr,
    required this.taxes,
    required this.totalLkr,
    required this.issuedDate,
    required this.dueDate,
    required this.status,
    required final List<InvoiceLineItem> lineItems,
  }) : _lineItems = lineItems;

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String invoiceId;
  @override
  final String projectId;
  @override
  final String issuerId;
  @override
  final String recipientId;
  @override
  final int subtotalLkr;
  @override
  final int taxes;
  @override
  final int totalLkr;
  @override
  final DateTime issuedDate;
  @override
  final DateTime dueDate;
  @override
  final String status;
  final List<InvoiceLineItem> _lineItems;
  @override
  List<InvoiceLineItem> get lineItems {
    if (_lineItems is EqualUnmodifiableListView) return _lineItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineItems);
  }

  @override
  String toString() {
    return 'Invoice(invoiceId: $invoiceId, projectId: $projectId, issuerId: $issuerId, recipientId: $recipientId, subtotalLkr: $subtotalLkr, taxes: $taxes, totalLkr: $totalLkr, issuedDate: $issuedDate, dueDate: $dueDate, status: $status, lineItems: $lineItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.issuerId, issuerId) ||
                other.issuerId == issuerId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.subtotalLkr, subtotalLkr) ||
                other.subtotalLkr == subtotalLkr) &&
            (identical(other.taxes, taxes) || other.taxes == taxes) &&
            (identical(other.totalLkr, totalLkr) ||
                other.totalLkr == totalLkr) &&
            (identical(other.issuedDate, issuedDate) ||
                other.issuedDate == issuedDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._lineItems,
              _lineItems,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    invoiceId,
    projectId,
    issuerId,
    recipientId,
    subtotalLkr,
    taxes,
    totalLkr,
    issuedDate,
    dueDate,
    status,
    const DeepCollectionEquality().hash(_lineItems),
  );

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(this);
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice({
    required final String invoiceId,
    required final String projectId,
    required final String issuerId,
    required final String recipientId,
    required final int subtotalLkr,
    required final int taxes,
    required final int totalLkr,
    required final DateTime issuedDate,
    required final DateTime dueDate,
    required final String status,
    required final List<InvoiceLineItem> lineItems,
  }) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get invoiceId;
  @override
  String get projectId;
  @override
  String get issuerId;
  @override
  String get recipientId;
  @override
  int get subtotalLkr;
  @override
  int get taxes;
  @override
  int get totalLkr;
  @override
  DateTime get issuedDate;
  @override
  DateTime get dueDate;
  @override
  String get status;
  @override
  List<InvoiceLineItem> get lineItems;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceLineItem _$InvoiceLineItemFromJson(Map<String, dynamic> json) {
  return _InvoiceLineItem.fromJson(json);
}

/// @nodoc
mixin _$InvoiceLineItem {
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get unitPrice => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this InvoiceLineItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceLineItemCopyWith<InvoiceLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceLineItemCopyWith<$Res> {
  factory $InvoiceLineItemCopyWith(
    InvoiceLineItem value,
    $Res Function(InvoiceLineItem) then,
  ) = _$InvoiceLineItemCopyWithImpl<$Res, InvoiceLineItem>;
  @useResult
  $Res call({String description, int quantity, int unitPrice, int total});
}

/// @nodoc
class _$InvoiceLineItemCopyWithImpl<$Res, $Val extends InvoiceLineItem>
    implements $InvoiceLineItemCopyWith<$Res> {
  _$InvoiceLineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceLineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? total = null,
  }) {
    return _then(
      _value.copyWith(
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            unitPrice: null == unitPrice
                ? _value.unitPrice
                : unitPrice // ignore: cast_nullable_to_non_nullable
                      as int,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InvoiceLineItemImplCopyWith<$Res>
    implements $InvoiceLineItemCopyWith<$Res> {
  factory _$$InvoiceLineItemImplCopyWith(
    _$InvoiceLineItemImpl value,
    $Res Function(_$InvoiceLineItemImpl) then,
  ) = __$$InvoiceLineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, int quantity, int unitPrice, int total});
}

/// @nodoc
class __$$InvoiceLineItemImplCopyWithImpl<$Res>
    extends _$InvoiceLineItemCopyWithImpl<$Res, _$InvoiceLineItemImpl>
    implements _$$InvoiceLineItemImplCopyWith<$Res> {
  __$$InvoiceLineItemImplCopyWithImpl(
    _$InvoiceLineItemImpl _value,
    $Res Function(_$InvoiceLineItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InvoiceLineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? total = null,
  }) {
    return _then(
      _$InvoiceLineItemImpl(
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        unitPrice: null == unitPrice
            ? _value.unitPrice
            : unitPrice // ignore: cast_nullable_to_non_nullable
                  as int,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceLineItemImpl implements _InvoiceLineItem {
  const _$InvoiceLineItemImpl({
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.total,
  });

  factory _$InvoiceLineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceLineItemImplFromJson(json);

  @override
  final String description;
  @override
  final int quantity;
  @override
  final int unitPrice;
  @override
  final int total;

  @override
  String toString() {
    return 'InvoiceLineItem(description: $description, quantity: $quantity, unitPrice: $unitPrice, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceLineItemImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, quantity, unitPrice, total);

  /// Create a copy of InvoiceLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceLineItemImplCopyWith<_$InvoiceLineItemImpl> get copyWith =>
      __$$InvoiceLineItemImplCopyWithImpl<_$InvoiceLineItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceLineItemImplToJson(this);
  }
}

abstract class _InvoiceLineItem implements InvoiceLineItem {
  const factory _InvoiceLineItem({
    required final String description,
    required final int quantity,
    required final int unitPrice,
    required final int total,
  }) = _$InvoiceLineItemImpl;

  factory _InvoiceLineItem.fromJson(Map<String, dynamic> json) =
      _$InvoiceLineItemImpl.fromJson;

  @override
  String get description;
  @override
  int get quantity;
  @override
  int get unitPrice;
  @override
  int get total;

  /// Create a copy of InvoiceLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceLineItemImplCopyWith<_$InvoiceLineItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
