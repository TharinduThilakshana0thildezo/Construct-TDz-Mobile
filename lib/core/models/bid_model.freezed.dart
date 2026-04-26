// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Bid _$BidFromJson(Map<String, dynamic> json) {
  return _Bid.fromJson(json);
}

/// @nodoc
mixin _$Bid {
  String get bidId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get contractorId => throw _privateConstructorUsedError;
  int get amountLkr => throw _privateConstructorUsedError;
  int get timelineMonths => throw _privateConstructorUsedError;
  String get capacity => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  BidStatus get status => throw _privateConstructorUsedError;
  DateTime get submittedAt => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get rejectionReason =>
      throw _privateConstructorUsedError; // Advanced Features
  BidMetrics? get metrics => throw _privateConstructorUsedError;
  List<String> get attachmentUrls => throw _privateConstructorUsedError;
  double? get recommendedPrice => throw _privateConstructorUsedError;
  bool get isAIGenerated => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customTerms => throw _privateConstructorUsedError;

  /// Serializes this Bid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidCopyWith<Bid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidCopyWith<$Res> {
  factory $BidCopyWith(Bid value, $Res Function(Bid) then) =
      _$BidCopyWithImpl<$Res, Bid>;
  @useResult
  $Res call({
    String bidId,
    String projectId,
    String contractorId,
    int amountLkr,
    int timelineMonths,
    String capacity,
    String description,
    BidStatus status,
    DateTime submittedAt,
    DateTime? reviewedAt,
    String? rejectionReason,
    BidMetrics? metrics,
    List<String> attachmentUrls,
    double? recommendedPrice,
    bool isAIGenerated,
    Map<String, dynamic>? customTerms,
  });

  $BidMetricsCopyWith<$Res>? get metrics;
}

/// @nodoc
class _$BidCopyWithImpl<$Res, $Val extends Bid> implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidId = null,
    Object? projectId = null,
    Object? contractorId = null,
    Object? amountLkr = null,
    Object? timelineMonths = null,
    Object? capacity = null,
    Object? description = null,
    Object? status = null,
    Object? submittedAt = null,
    Object? reviewedAt = freezed,
    Object? rejectionReason = freezed,
    Object? metrics = freezed,
    Object? attachmentUrls = null,
    Object? recommendedPrice = freezed,
    Object? isAIGenerated = null,
    Object? customTerms = freezed,
  }) {
    return _then(
      _value.copyWith(
            bidId: null == bidId
                ? _value.bidId
                : bidId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            contractorId: null == contractorId
                ? _value.contractorId
                : contractorId // ignore: cast_nullable_to_non_nullable
                      as String,
            amountLkr: null == amountLkr
                ? _value.amountLkr
                : amountLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            timelineMonths: null == timelineMonths
                ? _value.timelineMonths
                : timelineMonths // ignore: cast_nullable_to_non_nullable
                      as int,
            capacity: null == capacity
                ? _value.capacity
                : capacity // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as BidStatus,
            submittedAt: null == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            reviewedAt: freezed == reviewedAt
                ? _value.reviewedAt
                : reviewedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            rejectionReason: freezed == rejectionReason
                ? _value.rejectionReason
                : rejectionReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            metrics: freezed == metrics
                ? _value.metrics
                : metrics // ignore: cast_nullable_to_non_nullable
                      as BidMetrics?,
            attachmentUrls: null == attachmentUrls
                ? _value.attachmentUrls
                : attachmentUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            recommendedPrice: freezed == recommendedPrice
                ? _value.recommendedPrice
                : recommendedPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            isAIGenerated: null == isAIGenerated
                ? _value.isAIGenerated
                : isAIGenerated // ignore: cast_nullable_to_non_nullable
                      as bool,
            customTerms: freezed == customTerms
                ? _value.customTerms
                : customTerms // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidMetricsCopyWith<$Res>? get metrics {
    if (_value.metrics == null) {
      return null;
    }

    return $BidMetricsCopyWith<$Res>(_value.metrics!, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidImplCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$$BidImplCopyWith(_$BidImpl value, $Res Function(_$BidImpl) then) =
      __$$BidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String bidId,
    String projectId,
    String contractorId,
    int amountLkr,
    int timelineMonths,
    String capacity,
    String description,
    BidStatus status,
    DateTime submittedAt,
    DateTime? reviewedAt,
    String? rejectionReason,
    BidMetrics? metrics,
    List<String> attachmentUrls,
    double? recommendedPrice,
    bool isAIGenerated,
    Map<String, dynamic>? customTerms,
  });

  @override
  $BidMetricsCopyWith<$Res>? get metrics;
}

/// @nodoc
class __$$BidImplCopyWithImpl<$Res> extends _$BidCopyWithImpl<$Res, _$BidImpl>
    implements _$$BidImplCopyWith<$Res> {
  __$$BidImplCopyWithImpl(_$BidImpl _value, $Res Function(_$BidImpl) _then)
    : super(_value, _then);

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidId = null,
    Object? projectId = null,
    Object? contractorId = null,
    Object? amountLkr = null,
    Object? timelineMonths = null,
    Object? capacity = null,
    Object? description = null,
    Object? status = null,
    Object? submittedAt = null,
    Object? reviewedAt = freezed,
    Object? rejectionReason = freezed,
    Object? metrics = freezed,
    Object? attachmentUrls = null,
    Object? recommendedPrice = freezed,
    Object? isAIGenerated = null,
    Object? customTerms = freezed,
  }) {
    return _then(
      _$BidImpl(
        bidId: null == bidId
            ? _value.bidId
            : bidId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        contractorId: null == contractorId
            ? _value.contractorId
            : contractorId // ignore: cast_nullable_to_non_nullable
                  as String,
        amountLkr: null == amountLkr
            ? _value.amountLkr
            : amountLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        timelineMonths: null == timelineMonths
            ? _value.timelineMonths
            : timelineMonths // ignore: cast_nullable_to_non_nullable
                  as int,
        capacity: null == capacity
            ? _value.capacity
            : capacity // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as BidStatus,
        submittedAt: null == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        reviewedAt: freezed == reviewedAt
            ? _value.reviewedAt
            : reviewedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        rejectionReason: freezed == rejectionReason
            ? _value.rejectionReason
            : rejectionReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        metrics: freezed == metrics
            ? _value.metrics
            : metrics // ignore: cast_nullable_to_non_nullable
                  as BidMetrics?,
        attachmentUrls: null == attachmentUrls
            ? _value._attachmentUrls
            : attachmentUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        recommendedPrice: freezed == recommendedPrice
            ? _value.recommendedPrice
            : recommendedPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        isAIGenerated: null == isAIGenerated
            ? _value.isAIGenerated
            : isAIGenerated // ignore: cast_nullable_to_non_nullable
                  as bool,
        customTerms: freezed == customTerms
            ? _value._customTerms
            : customTerms // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BidImpl implements _Bid {
  const _$BidImpl({
    required this.bidId,
    required this.projectId,
    required this.contractorId,
    required this.amountLkr,
    required this.timelineMonths,
    required this.capacity,
    required this.description,
    required this.status,
    required this.submittedAt,
    required this.reviewedAt,
    required this.rejectionReason,
    required this.metrics,
    required final List<String> attachmentUrls,
    required this.recommendedPrice,
    required this.isAIGenerated,
    required final Map<String, dynamic>? customTerms,
  }) : _attachmentUrls = attachmentUrls,
       _customTerms = customTerms;

  factory _$BidImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidImplFromJson(json);

  @override
  final String bidId;
  @override
  final String projectId;
  @override
  final String contractorId;
  @override
  final int amountLkr;
  @override
  final int timelineMonths;
  @override
  final String capacity;
  @override
  final String description;
  @override
  final BidStatus status;
  @override
  final DateTime submittedAt;
  @override
  final DateTime? reviewedAt;
  @override
  final String? rejectionReason;
  // Advanced Features
  @override
  final BidMetrics? metrics;
  final List<String> _attachmentUrls;
  @override
  List<String> get attachmentUrls {
    if (_attachmentUrls is EqualUnmodifiableListView) return _attachmentUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachmentUrls);
  }

  @override
  final double? recommendedPrice;
  @override
  final bool isAIGenerated;
  final Map<String, dynamic>? _customTerms;
  @override
  Map<String, dynamic>? get customTerms {
    final value = _customTerms;
    if (value == null) return null;
    if (_customTerms is EqualUnmodifiableMapView) return _customTerms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Bid(bidId: $bidId, projectId: $projectId, contractorId: $contractorId, amountLkr: $amountLkr, timelineMonths: $timelineMonths, capacity: $capacity, description: $description, status: $status, submittedAt: $submittedAt, reviewedAt: $reviewedAt, rejectionReason: $rejectionReason, metrics: $metrics, attachmentUrls: $attachmentUrls, recommendedPrice: $recommendedPrice, isAIGenerated: $isAIGenerated, customTerms: $customTerms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidImpl &&
            (identical(other.bidId, bidId) || other.bidId == bidId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.contractorId, contractorId) ||
                other.contractorId == contractorId) &&
            (identical(other.amountLkr, amountLkr) ||
                other.amountLkr == amountLkr) &&
            (identical(other.timelineMonths, timelineMonths) ||
                other.timelineMonths == timelineMonths) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            const DeepCollectionEquality().equals(
              other._attachmentUrls,
              _attachmentUrls,
            ) &&
            (identical(other.recommendedPrice, recommendedPrice) ||
                other.recommendedPrice == recommendedPrice) &&
            (identical(other.isAIGenerated, isAIGenerated) ||
                other.isAIGenerated == isAIGenerated) &&
            const DeepCollectionEquality().equals(
              other._customTerms,
              _customTerms,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    bidId,
    projectId,
    contractorId,
    amountLkr,
    timelineMonths,
    capacity,
    description,
    status,
    submittedAt,
    reviewedAt,
    rejectionReason,
    metrics,
    const DeepCollectionEquality().hash(_attachmentUrls),
    recommendedPrice,
    isAIGenerated,
    const DeepCollectionEquality().hash(_customTerms),
  );

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidImplCopyWith<_$BidImpl> get copyWith =>
      __$$BidImplCopyWithImpl<_$BidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidImplToJson(this);
  }
}

abstract class _Bid implements Bid {
  const factory _Bid({
    required final String bidId,
    required final String projectId,
    required final String contractorId,
    required final int amountLkr,
    required final int timelineMonths,
    required final String capacity,
    required final String description,
    required final BidStatus status,
    required final DateTime submittedAt,
    required final DateTime? reviewedAt,
    required final String? rejectionReason,
    required final BidMetrics? metrics,
    required final List<String> attachmentUrls,
    required final double? recommendedPrice,
    required final bool isAIGenerated,
    required final Map<String, dynamic>? customTerms,
  }) = _$BidImpl;

  factory _Bid.fromJson(Map<String, dynamic> json) = _$BidImpl.fromJson;

  @override
  String get bidId;
  @override
  String get projectId;
  @override
  String get contractorId;
  @override
  int get amountLkr;
  @override
  int get timelineMonths;
  @override
  String get capacity;
  @override
  String get description;
  @override
  BidStatus get status;
  @override
  DateTime get submittedAt;
  @override
  DateTime? get reviewedAt;
  @override
  String? get rejectionReason; // Advanced Features
  @override
  BidMetrics? get metrics;
  @override
  List<String> get attachmentUrls;
  @override
  double? get recommendedPrice;
  @override
  bool get isAIGenerated;
  @override
  Map<String, dynamic>? get customTerms;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidImplCopyWith<_$BidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidMetrics _$BidMetricsFromJson(Map<String, dynamic> json) {
  return _BidMetrics.fromJson(json);
}

/// @nodoc
mixin _$BidMetrics {
  double get competitiveScore => throw _privateConstructorUsedError; // 0-100
  int get ranking =>
      throw _privateConstructorUsedError; // Position among all bids
  double get priceComparisonPercent =>
      throw _privateConstructorUsedError; // vs avg bid
  double get contractorReliabilityScore => throw _privateConstructorUsedError;
  int get contractorPastProjects => throw _privateConstructorUsedError;
  double get contractorAvgRating => throw _privateConstructorUsedError;

  /// Serializes this BidMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidMetricsCopyWith<BidMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidMetricsCopyWith<$Res> {
  factory $BidMetricsCopyWith(
    BidMetrics value,
    $Res Function(BidMetrics) then,
  ) = _$BidMetricsCopyWithImpl<$Res, BidMetrics>;
  @useResult
  $Res call({
    double competitiveScore,
    int ranking,
    double priceComparisonPercent,
    double contractorReliabilityScore,
    int contractorPastProjects,
    double contractorAvgRating,
  });
}

/// @nodoc
class _$BidMetricsCopyWithImpl<$Res, $Val extends BidMetrics>
    implements $BidMetricsCopyWith<$Res> {
  _$BidMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? competitiveScore = null,
    Object? ranking = null,
    Object? priceComparisonPercent = null,
    Object? contractorReliabilityScore = null,
    Object? contractorPastProjects = null,
    Object? contractorAvgRating = null,
  }) {
    return _then(
      _value.copyWith(
            competitiveScore: null == competitiveScore
                ? _value.competitiveScore
                : competitiveScore // ignore: cast_nullable_to_non_nullable
                      as double,
            ranking: null == ranking
                ? _value.ranking
                : ranking // ignore: cast_nullable_to_non_nullable
                      as int,
            priceComparisonPercent: null == priceComparisonPercent
                ? _value.priceComparisonPercent
                : priceComparisonPercent // ignore: cast_nullable_to_non_nullable
                      as double,
            contractorReliabilityScore: null == contractorReliabilityScore
                ? _value.contractorReliabilityScore
                : contractorReliabilityScore // ignore: cast_nullable_to_non_nullable
                      as double,
            contractorPastProjects: null == contractorPastProjects
                ? _value.contractorPastProjects
                : contractorPastProjects // ignore: cast_nullable_to_non_nullable
                      as int,
            contractorAvgRating: null == contractorAvgRating
                ? _value.contractorAvgRating
                : contractorAvgRating // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BidMetricsImplCopyWith<$Res>
    implements $BidMetricsCopyWith<$Res> {
  factory _$$BidMetricsImplCopyWith(
    _$BidMetricsImpl value,
    $Res Function(_$BidMetricsImpl) then,
  ) = __$$BidMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double competitiveScore,
    int ranking,
    double priceComparisonPercent,
    double contractorReliabilityScore,
    int contractorPastProjects,
    double contractorAvgRating,
  });
}

/// @nodoc
class __$$BidMetricsImplCopyWithImpl<$Res>
    extends _$BidMetricsCopyWithImpl<$Res, _$BidMetricsImpl>
    implements _$$BidMetricsImplCopyWith<$Res> {
  __$$BidMetricsImplCopyWithImpl(
    _$BidMetricsImpl _value,
    $Res Function(_$BidMetricsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BidMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? competitiveScore = null,
    Object? ranking = null,
    Object? priceComparisonPercent = null,
    Object? contractorReliabilityScore = null,
    Object? contractorPastProjects = null,
    Object? contractorAvgRating = null,
  }) {
    return _then(
      _$BidMetricsImpl(
        competitiveScore: null == competitiveScore
            ? _value.competitiveScore
            : competitiveScore // ignore: cast_nullable_to_non_nullable
                  as double,
        ranking: null == ranking
            ? _value.ranking
            : ranking // ignore: cast_nullable_to_non_nullable
                  as int,
        priceComparisonPercent: null == priceComparisonPercent
            ? _value.priceComparisonPercent
            : priceComparisonPercent // ignore: cast_nullable_to_non_nullable
                  as double,
        contractorReliabilityScore: null == contractorReliabilityScore
            ? _value.contractorReliabilityScore
            : contractorReliabilityScore // ignore: cast_nullable_to_non_nullable
                  as double,
        contractorPastProjects: null == contractorPastProjects
            ? _value.contractorPastProjects
            : contractorPastProjects // ignore: cast_nullable_to_non_nullable
                  as int,
        contractorAvgRating: null == contractorAvgRating
            ? _value.contractorAvgRating
            : contractorAvgRating // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BidMetricsImpl implements _BidMetrics {
  const _$BidMetricsImpl({
    required this.competitiveScore,
    required this.ranking,
    required this.priceComparisonPercent,
    required this.contractorReliabilityScore,
    required this.contractorPastProjects,
    required this.contractorAvgRating,
  });

  factory _$BidMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidMetricsImplFromJson(json);

  @override
  final double competitiveScore;
  // 0-100
  @override
  final int ranking;
  // Position among all bids
  @override
  final double priceComparisonPercent;
  // vs avg bid
  @override
  final double contractorReliabilityScore;
  @override
  final int contractorPastProjects;
  @override
  final double contractorAvgRating;

  @override
  String toString() {
    return 'BidMetrics(competitiveScore: $competitiveScore, ranking: $ranking, priceComparisonPercent: $priceComparisonPercent, contractorReliabilityScore: $contractorReliabilityScore, contractorPastProjects: $contractorPastProjects, contractorAvgRating: $contractorAvgRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidMetricsImpl &&
            (identical(other.competitiveScore, competitiveScore) ||
                other.competitiveScore == competitiveScore) &&
            (identical(other.ranking, ranking) || other.ranking == ranking) &&
            (identical(other.priceComparisonPercent, priceComparisonPercent) ||
                other.priceComparisonPercent == priceComparisonPercent) &&
            (identical(
                  other.contractorReliabilityScore,
                  contractorReliabilityScore,
                ) ||
                other.contractorReliabilityScore ==
                    contractorReliabilityScore) &&
            (identical(other.contractorPastProjects, contractorPastProjects) ||
                other.contractorPastProjects == contractorPastProjects) &&
            (identical(other.contractorAvgRating, contractorAvgRating) ||
                other.contractorAvgRating == contractorAvgRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    competitiveScore,
    ranking,
    priceComparisonPercent,
    contractorReliabilityScore,
    contractorPastProjects,
    contractorAvgRating,
  );

  /// Create a copy of BidMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidMetricsImplCopyWith<_$BidMetricsImpl> get copyWith =>
      __$$BidMetricsImplCopyWithImpl<_$BidMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidMetricsImplToJson(this);
  }
}

abstract class _BidMetrics implements BidMetrics {
  const factory _BidMetrics({
    required final double competitiveScore,
    required final int ranking,
    required final double priceComparisonPercent,
    required final double contractorReliabilityScore,
    required final int contractorPastProjects,
    required final double contractorAvgRating,
  }) = _$BidMetricsImpl;

  factory _BidMetrics.fromJson(Map<String, dynamic> json) =
      _$BidMetricsImpl.fromJson;

  @override
  double get competitiveScore; // 0-100
  @override
  int get ranking; // Position among all bids
  @override
  double get priceComparisonPercent; // vs avg bid
  @override
  double get contractorReliabilityScore;
  @override
  int get contractorPastProjects;
  @override
  double get contractorAvgRating;

  /// Create a copy of BidMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidMetricsImplCopyWith<_$BidMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidTemplate _$BidTemplateFromJson(Map<String, dynamic> json) {
  return _BidTemplate.fromJson(json);
}

/// @nodoc
mixin _$BidTemplate {
  String get templateId => throw _privateConstructorUsedError;
  String get contractorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get basePriceFormula =>
      throw _privateConstructorUsedError; // e.g., base + percentage of project budget
  String get capacityLevel => throw _privateConstructorUsedError;
  List<String> get defaultAttachments => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this BidTemplate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidTemplateCopyWith<BidTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidTemplateCopyWith<$Res> {
  factory $BidTemplateCopyWith(
    BidTemplate value,
    $Res Function(BidTemplate) then,
  ) = _$BidTemplateCopyWithImpl<$Res, BidTemplate>;
  @useResult
  $Res call({
    String templateId,
    String contractorId,
    String name,
    String description,
    int basePriceFormula,
    String capacityLevel,
    List<String> defaultAttachments,
    bool isActive,
  });
}

/// @nodoc
class _$BidTemplateCopyWithImpl<$Res, $Val extends BidTemplate>
    implements $BidTemplateCopyWith<$Res> {
  _$BidTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
    Object? contractorId = null,
    Object? name = null,
    Object? description = null,
    Object? basePriceFormula = null,
    Object? capacityLevel = null,
    Object? defaultAttachments = null,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            templateId: null == templateId
                ? _value.templateId
                : templateId // ignore: cast_nullable_to_non_nullable
                      as String,
            contractorId: null == contractorId
                ? _value.contractorId
                : contractorId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            basePriceFormula: null == basePriceFormula
                ? _value.basePriceFormula
                : basePriceFormula // ignore: cast_nullable_to_non_nullable
                      as int,
            capacityLevel: null == capacityLevel
                ? _value.capacityLevel
                : capacityLevel // ignore: cast_nullable_to_non_nullable
                      as String,
            defaultAttachments: null == defaultAttachments
                ? _value.defaultAttachments
                : defaultAttachments // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BidTemplateImplCopyWith<$Res>
    implements $BidTemplateCopyWith<$Res> {
  factory _$$BidTemplateImplCopyWith(
    _$BidTemplateImpl value,
    $Res Function(_$BidTemplateImpl) then,
  ) = __$$BidTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String templateId,
    String contractorId,
    String name,
    String description,
    int basePriceFormula,
    String capacityLevel,
    List<String> defaultAttachments,
    bool isActive,
  });
}

/// @nodoc
class __$$BidTemplateImplCopyWithImpl<$Res>
    extends _$BidTemplateCopyWithImpl<$Res, _$BidTemplateImpl>
    implements _$$BidTemplateImplCopyWith<$Res> {
  __$$BidTemplateImplCopyWithImpl(
    _$BidTemplateImpl _value,
    $Res Function(_$BidTemplateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BidTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
    Object? contractorId = null,
    Object? name = null,
    Object? description = null,
    Object? basePriceFormula = null,
    Object? capacityLevel = null,
    Object? defaultAttachments = null,
    Object? isActive = null,
  }) {
    return _then(
      _$BidTemplateImpl(
        templateId: null == templateId
            ? _value.templateId
            : templateId // ignore: cast_nullable_to_non_nullable
                  as String,
        contractorId: null == contractorId
            ? _value.contractorId
            : contractorId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        basePriceFormula: null == basePriceFormula
            ? _value.basePriceFormula
            : basePriceFormula // ignore: cast_nullable_to_non_nullable
                  as int,
        capacityLevel: null == capacityLevel
            ? _value.capacityLevel
            : capacityLevel // ignore: cast_nullable_to_non_nullable
                  as String,
        defaultAttachments: null == defaultAttachments
            ? _value._defaultAttachments
            : defaultAttachments // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BidTemplateImpl implements _BidTemplate {
  const _$BidTemplateImpl({
    required this.templateId,
    required this.contractorId,
    required this.name,
    required this.description,
    required this.basePriceFormula,
    required this.capacityLevel,
    required final List<String> defaultAttachments,
    required this.isActive,
  }) : _defaultAttachments = defaultAttachments;

  factory _$BidTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidTemplateImplFromJson(json);

  @override
  final String templateId;
  @override
  final String contractorId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int basePriceFormula;
  // e.g., base + percentage of project budget
  @override
  final String capacityLevel;
  final List<String> _defaultAttachments;
  @override
  List<String> get defaultAttachments {
    if (_defaultAttachments is EqualUnmodifiableListView)
      return _defaultAttachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultAttachments);
  }

  @override
  final bool isActive;

  @override
  String toString() {
    return 'BidTemplate(templateId: $templateId, contractorId: $contractorId, name: $name, description: $description, basePriceFormula: $basePriceFormula, capacityLevel: $capacityLevel, defaultAttachments: $defaultAttachments, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidTemplateImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.contractorId, contractorId) ||
                other.contractorId == contractorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.basePriceFormula, basePriceFormula) ||
                other.basePriceFormula == basePriceFormula) &&
            (identical(other.capacityLevel, capacityLevel) ||
                other.capacityLevel == capacityLevel) &&
            const DeepCollectionEquality().equals(
              other._defaultAttachments,
              _defaultAttachments,
            ) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    templateId,
    contractorId,
    name,
    description,
    basePriceFormula,
    capacityLevel,
    const DeepCollectionEquality().hash(_defaultAttachments),
    isActive,
  );

  /// Create a copy of BidTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidTemplateImplCopyWith<_$BidTemplateImpl> get copyWith =>
      __$$BidTemplateImplCopyWithImpl<_$BidTemplateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidTemplateImplToJson(this);
  }
}

abstract class _BidTemplate implements BidTemplate {
  const factory _BidTemplate({
    required final String templateId,
    required final String contractorId,
    required final String name,
    required final String description,
    required final int basePriceFormula,
    required final String capacityLevel,
    required final List<String> defaultAttachments,
    required final bool isActive,
  }) = _$BidTemplateImpl;

  factory _BidTemplate.fromJson(Map<String, dynamic> json) =
      _$BidTemplateImpl.fromJson;

  @override
  String get templateId;
  @override
  String get contractorId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get basePriceFormula; // e.g., base + percentage of project budget
  @override
  String get capacityLevel;
  @override
  List<String> get defaultAttachments;
  @override
  bool get isActive;

  /// Create a copy of BidTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidTemplateImplCopyWith<_$BidTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
