// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  String get subscriptionId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  SubscriptionTier get tier => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get monthlyPriceLkr => throw _privateConstructorUsedError;
  String? get stripePriceId => throw _privateConstructorUsedError;
  String? get stripeSubscriptionId => throw _privateConstructorUsedError;
  DateTime get nextBillingDate => throw _privateConstructorUsedError;
  bool get autoRenew => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalBenefits =>
      throw _privateConstructorUsedError;

  /// Serializes this Subscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
    Subscription value,
    $Res Function(Subscription) then,
  ) = _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call({
    String subscriptionId,
    String userId,
    SubscriptionTier tier,
    DateTime startDate,
    DateTime? endDate,
    bool isActive,
    int monthlyPriceLkr,
    String? stripePriceId,
    String? stripeSubscriptionId,
    DateTime nextBillingDate,
    bool autoRenew,
    List<String> features,
    Map<String, dynamic>? additionalBenefits,
  });
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
    Object? userId = null,
    Object? tier = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? monthlyPriceLkr = null,
    Object? stripePriceId = freezed,
    Object? stripeSubscriptionId = freezed,
    Object? nextBillingDate = null,
    Object? autoRenew = null,
    Object? features = null,
    Object? additionalBenefits = freezed,
  }) {
    return _then(
      _value.copyWith(
            subscriptionId: null == subscriptionId
                ? _value.subscriptionId
                : subscriptionId // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as SubscriptionTier,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            monthlyPriceLkr: null == monthlyPriceLkr
                ? _value.monthlyPriceLkr
                : monthlyPriceLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            stripePriceId: freezed == stripePriceId
                ? _value.stripePriceId
                : stripePriceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            stripeSubscriptionId: freezed == stripeSubscriptionId
                ? _value.stripeSubscriptionId
                : stripeSubscriptionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            nextBillingDate: null == nextBillingDate
                ? _value.nextBillingDate
                : nextBillingDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            autoRenew: null == autoRenew
                ? _value.autoRenew
                : autoRenew // ignore: cast_nullable_to_non_nullable
                      as bool,
            features: null == features
                ? _value.features
                : features // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            additionalBenefits: freezed == additionalBenefits
                ? _value.additionalBenefits
                : additionalBenefits // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
    _$SubscriptionImpl value,
    $Res Function(_$SubscriptionImpl) then,
  ) = __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String subscriptionId,
    String userId,
    SubscriptionTier tier,
    DateTime startDate,
    DateTime? endDate,
    bool isActive,
    int monthlyPriceLkr,
    String? stripePriceId,
    String? stripeSubscriptionId,
    DateTime nextBillingDate,
    bool autoRenew,
    List<String> features,
    Map<String, dynamic>? additionalBenefits,
  });
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
    _$SubscriptionImpl _value,
    $Res Function(_$SubscriptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
    Object? userId = null,
    Object? tier = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? monthlyPriceLkr = null,
    Object? stripePriceId = freezed,
    Object? stripeSubscriptionId = freezed,
    Object? nextBillingDate = null,
    Object? autoRenew = null,
    Object? features = null,
    Object? additionalBenefits = freezed,
  }) {
    return _then(
      _$SubscriptionImpl(
        subscriptionId: null == subscriptionId
            ? _value.subscriptionId
            : subscriptionId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as SubscriptionTier,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        monthlyPriceLkr: null == monthlyPriceLkr
            ? _value.monthlyPriceLkr
            : monthlyPriceLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        stripePriceId: freezed == stripePriceId
            ? _value.stripePriceId
            : stripePriceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        stripeSubscriptionId: freezed == stripeSubscriptionId
            ? _value.stripeSubscriptionId
            : stripeSubscriptionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        nextBillingDate: null == nextBillingDate
            ? _value.nextBillingDate
            : nextBillingDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        autoRenew: null == autoRenew
            ? _value.autoRenew
            : autoRenew // ignore: cast_nullable_to_non_nullable
                  as bool,
        features: null == features
            ? _value._features
            : features // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        additionalBenefits: freezed == additionalBenefits
            ? _value._additionalBenefits
            : additionalBenefits // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionImpl implements _Subscription {
  const _$SubscriptionImpl({
    required this.subscriptionId,
    required this.userId,
    required this.tier,
    required this.startDate,
    required this.endDate,
    required this.isActive,
    required this.monthlyPriceLkr,
    required this.stripePriceId,
    required this.stripeSubscriptionId,
    required this.nextBillingDate,
    required this.autoRenew,
    required final List<String> features,
    required final Map<String, dynamic>? additionalBenefits,
  }) : _features = features,
       _additionalBenefits = additionalBenefits;

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  final String subscriptionId;
  @override
  final String userId;
  @override
  final SubscriptionTier tier;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  final bool isActive;
  @override
  final int monthlyPriceLkr;
  @override
  final String? stripePriceId;
  @override
  final String? stripeSubscriptionId;
  @override
  final DateTime nextBillingDate;
  @override
  final bool autoRenew;
  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  final Map<String, dynamic>? _additionalBenefits;
  @override
  Map<String, dynamic>? get additionalBenefits {
    final value = _additionalBenefits;
    if (value == null) return null;
    if (_additionalBenefits is EqualUnmodifiableMapView)
      return _additionalBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Subscription(subscriptionId: $subscriptionId, userId: $userId, tier: $tier, startDate: $startDate, endDate: $endDate, isActive: $isActive, monthlyPriceLkr: $monthlyPriceLkr, stripePriceId: $stripePriceId, stripeSubscriptionId: $stripeSubscriptionId, nextBillingDate: $nextBillingDate, autoRenew: $autoRenew, features: $features, additionalBenefits: $additionalBenefits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.monthlyPriceLkr, monthlyPriceLkr) ||
                other.monthlyPriceLkr == monthlyPriceLkr) &&
            (identical(other.stripePriceId, stripePriceId) ||
                other.stripePriceId == stripePriceId) &&
            (identical(other.stripeSubscriptionId, stripeSubscriptionId) ||
                other.stripeSubscriptionId == stripeSubscriptionId) &&
            (identical(other.nextBillingDate, nextBillingDate) ||
                other.nextBillingDate == nextBillingDate) &&
            (identical(other.autoRenew, autoRenew) ||
                other.autoRenew == autoRenew) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality().equals(
              other._additionalBenefits,
              _additionalBenefits,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    subscriptionId,
    userId,
    tier,
    startDate,
    endDate,
    isActive,
    monthlyPriceLkr,
    stripePriceId,
    stripeSubscriptionId,
    nextBillingDate,
    autoRenew,
    const DeepCollectionEquality().hash(_features),
    const DeepCollectionEquality().hash(_additionalBenefits),
  );

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(this);
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription({
    required final String subscriptionId,
    required final String userId,
    required final SubscriptionTier tier,
    required final DateTime startDate,
    required final DateTime? endDate,
    required final bool isActive,
    required final int monthlyPriceLkr,
    required final String? stripePriceId,
    required final String? stripeSubscriptionId,
    required final DateTime nextBillingDate,
    required final bool autoRenew,
    required final List<String> features,
    required final Map<String, dynamic>? additionalBenefits,
  }) = _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  String get subscriptionId;
  @override
  String get userId;
  @override
  SubscriptionTier get tier;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  bool get isActive;
  @override
  int get monthlyPriceLkr;
  @override
  String? get stripePriceId;
  @override
  String? get stripeSubscriptionId;
  @override
  DateTime get nextBillingDate;
  @override
  bool get autoRenew;
  @override
  List<String> get features;
  @override
  Map<String, dynamic>? get additionalBenefits;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionTierDetails _$SubscriptionTierDetailsFromJson(
  Map<String, dynamic> json,
) {
  return _SubscriptionTierDetails.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionTierDetails {
  SubscriptionTier get tier => throw _privateConstructorUsedError;
  int get monthlyPriceLkr => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  int get maxFeaturedListings => throw _privateConstructorUsedError;
  int get maxBidsPerMonth => throw _privateConstructorUsedError;
  bool get analyticsAccess => throw _privateConstructorUsedError;
  bool get apiAccess => throw _privateConstructorUsedError;
  String get supportLevel => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionTierDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionTierDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionTierDetailsCopyWith<SubscriptionTierDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionTierDetailsCopyWith<$Res> {
  factory $SubscriptionTierDetailsCopyWith(
    SubscriptionTierDetails value,
    $Res Function(SubscriptionTierDetails) then,
  ) = _$SubscriptionTierDetailsCopyWithImpl<$Res, SubscriptionTierDetails>;
  @useResult
  $Res call({
    SubscriptionTier tier,
    int monthlyPriceLkr,
    String description,
    List<String> features,
    int maxFeaturedListings,
    int maxBidsPerMonth,
    bool analyticsAccess,
    bool apiAccess,
    String supportLevel,
  });
}

/// @nodoc
class _$SubscriptionTierDetailsCopyWithImpl<
  $Res,
  $Val extends SubscriptionTierDetails
>
    implements $SubscriptionTierDetailsCopyWith<$Res> {
  _$SubscriptionTierDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionTierDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tier = null,
    Object? monthlyPriceLkr = null,
    Object? description = null,
    Object? features = null,
    Object? maxFeaturedListings = null,
    Object? maxBidsPerMonth = null,
    Object? analyticsAccess = null,
    Object? apiAccess = null,
    Object? supportLevel = null,
  }) {
    return _then(
      _value.copyWith(
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as SubscriptionTier,
            monthlyPriceLkr: null == monthlyPriceLkr
                ? _value.monthlyPriceLkr
                : monthlyPriceLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            features: null == features
                ? _value.features
                : features // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            maxFeaturedListings: null == maxFeaturedListings
                ? _value.maxFeaturedListings
                : maxFeaturedListings // ignore: cast_nullable_to_non_nullable
                      as int,
            maxBidsPerMonth: null == maxBidsPerMonth
                ? _value.maxBidsPerMonth
                : maxBidsPerMonth // ignore: cast_nullable_to_non_nullable
                      as int,
            analyticsAccess: null == analyticsAccess
                ? _value.analyticsAccess
                : analyticsAccess // ignore: cast_nullable_to_non_nullable
                      as bool,
            apiAccess: null == apiAccess
                ? _value.apiAccess
                : apiAccess // ignore: cast_nullable_to_non_nullable
                      as bool,
            supportLevel: null == supportLevel
                ? _value.supportLevel
                : supportLevel // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubscriptionTierDetailsImplCopyWith<$Res>
    implements $SubscriptionTierDetailsCopyWith<$Res> {
  factory _$$SubscriptionTierDetailsImplCopyWith(
    _$SubscriptionTierDetailsImpl value,
    $Res Function(_$SubscriptionTierDetailsImpl) then,
  ) = __$$SubscriptionTierDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SubscriptionTier tier,
    int monthlyPriceLkr,
    String description,
    List<String> features,
    int maxFeaturedListings,
    int maxBidsPerMonth,
    bool analyticsAccess,
    bool apiAccess,
    String supportLevel,
  });
}

/// @nodoc
class __$$SubscriptionTierDetailsImplCopyWithImpl<$Res>
    extends
        _$SubscriptionTierDetailsCopyWithImpl<
          $Res,
          _$SubscriptionTierDetailsImpl
        >
    implements _$$SubscriptionTierDetailsImplCopyWith<$Res> {
  __$$SubscriptionTierDetailsImplCopyWithImpl(
    _$SubscriptionTierDetailsImpl _value,
    $Res Function(_$SubscriptionTierDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionTierDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tier = null,
    Object? monthlyPriceLkr = null,
    Object? description = null,
    Object? features = null,
    Object? maxFeaturedListings = null,
    Object? maxBidsPerMonth = null,
    Object? analyticsAccess = null,
    Object? apiAccess = null,
    Object? supportLevel = null,
  }) {
    return _then(
      _$SubscriptionTierDetailsImpl(
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as SubscriptionTier,
        monthlyPriceLkr: null == monthlyPriceLkr
            ? _value.monthlyPriceLkr
            : monthlyPriceLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        features: null == features
            ? _value._features
            : features // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        maxFeaturedListings: null == maxFeaturedListings
            ? _value.maxFeaturedListings
            : maxFeaturedListings // ignore: cast_nullable_to_non_nullable
                  as int,
        maxBidsPerMonth: null == maxBidsPerMonth
            ? _value.maxBidsPerMonth
            : maxBidsPerMonth // ignore: cast_nullable_to_non_nullable
                  as int,
        analyticsAccess: null == analyticsAccess
            ? _value.analyticsAccess
            : analyticsAccess // ignore: cast_nullable_to_non_nullable
                  as bool,
        apiAccess: null == apiAccess
            ? _value.apiAccess
            : apiAccess // ignore: cast_nullable_to_non_nullable
                  as bool,
        supportLevel: null == supportLevel
            ? _value.supportLevel
            : supportLevel // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionTierDetailsImpl implements _SubscriptionTierDetails {
  const _$SubscriptionTierDetailsImpl({
    required this.tier,
    required this.monthlyPriceLkr,
    required this.description,
    required final List<String> features,
    required this.maxFeaturedListings,
    required this.maxBidsPerMonth,
    required this.analyticsAccess,
    required this.apiAccess,
    required this.supportLevel,
  }) : _features = features;

  factory _$SubscriptionTierDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionTierDetailsImplFromJson(json);

  @override
  final SubscriptionTier tier;
  @override
  final int monthlyPriceLkr;
  @override
  final String description;
  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  final int maxFeaturedListings;
  @override
  final int maxBidsPerMonth;
  @override
  final bool analyticsAccess;
  @override
  final bool apiAccess;
  @override
  final String supportLevel;

  @override
  String toString() {
    return 'SubscriptionTierDetails(tier: $tier, monthlyPriceLkr: $monthlyPriceLkr, description: $description, features: $features, maxFeaturedListings: $maxFeaturedListings, maxBidsPerMonth: $maxBidsPerMonth, analyticsAccess: $analyticsAccess, apiAccess: $apiAccess, supportLevel: $supportLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionTierDetailsImpl &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.monthlyPriceLkr, monthlyPriceLkr) ||
                other.monthlyPriceLkr == monthlyPriceLkr) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.maxFeaturedListings, maxFeaturedListings) ||
                other.maxFeaturedListings == maxFeaturedListings) &&
            (identical(other.maxBidsPerMonth, maxBidsPerMonth) ||
                other.maxBidsPerMonth == maxBidsPerMonth) &&
            (identical(other.analyticsAccess, analyticsAccess) ||
                other.analyticsAccess == analyticsAccess) &&
            (identical(other.apiAccess, apiAccess) ||
                other.apiAccess == apiAccess) &&
            (identical(other.supportLevel, supportLevel) ||
                other.supportLevel == supportLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tier,
    monthlyPriceLkr,
    description,
    const DeepCollectionEquality().hash(_features),
    maxFeaturedListings,
    maxBidsPerMonth,
    analyticsAccess,
    apiAccess,
    supportLevel,
  );

  /// Create a copy of SubscriptionTierDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionTierDetailsImplCopyWith<_$SubscriptionTierDetailsImpl>
  get copyWith =>
      __$$SubscriptionTierDetailsImplCopyWithImpl<
        _$SubscriptionTierDetailsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionTierDetailsImplToJson(this);
  }
}

abstract class _SubscriptionTierDetails implements SubscriptionTierDetails {
  const factory _SubscriptionTierDetails({
    required final SubscriptionTier tier,
    required final int monthlyPriceLkr,
    required final String description,
    required final List<String> features,
    required final int maxFeaturedListings,
    required final int maxBidsPerMonth,
    required final bool analyticsAccess,
    required final bool apiAccess,
    required final String supportLevel,
  }) = _$SubscriptionTierDetailsImpl;

  factory _SubscriptionTierDetails.fromJson(Map<String, dynamic> json) =
      _$SubscriptionTierDetailsImpl.fromJson;

  @override
  SubscriptionTier get tier;
  @override
  int get monthlyPriceLkr;
  @override
  String get description;
  @override
  List<String> get features;
  @override
  int get maxFeaturedListings;
  @override
  int get maxBidsPerMonth;
  @override
  bool get analyticsAccess;
  @override
  bool get apiAccess;
  @override
  String get supportLevel;

  /// Create a copy of SubscriptionTierDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionTierDetailsImplCopyWith<_$SubscriptionTierDetailsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UserAnalytics _$UserAnalyticsFromJson(Map<String, dynamic> json) {
  return _UserAnalytics.fromJson(json);
}

/// @nodoc
mixin _$UserAnalytics {
  String get userId => throw _privateConstructorUsedError;
  int get profileViews => throw _privateConstructorUsedError;
  int get searchAppearances => throw _privateConstructorUsedError;
  int get projectInquiries => throw _privateConstructorUsedError;
  int get successfulProjects => throw _privateConstructorUsedError;
  double get totalEarnings => throw _privateConstructorUsedError;
  double get totalSpent => throw _privateConstructorUsedError;
  List<String> get topSkillsDemand => throw _privateConstructorUsedError;
  Map<DateTime, int> get earnings => throw _privateConstructorUsedError;
  double get conversionRate => throw _privateConstructorUsedError;
  int get avgResponseTime => throw _privateConstructorUsedError;

  /// Serializes this UserAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAnalyticsCopyWith<UserAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAnalyticsCopyWith<$Res> {
  factory $UserAnalyticsCopyWith(
    UserAnalytics value,
    $Res Function(UserAnalytics) then,
  ) = _$UserAnalyticsCopyWithImpl<$Res, UserAnalytics>;
  @useResult
  $Res call({
    String userId,
    int profileViews,
    int searchAppearances,
    int projectInquiries,
    int successfulProjects,
    double totalEarnings,
    double totalSpent,
    List<String> topSkillsDemand,
    Map<DateTime, int> earnings,
    double conversionRate,
    int avgResponseTime,
  });
}

/// @nodoc
class _$UserAnalyticsCopyWithImpl<$Res, $Val extends UserAnalytics>
    implements $UserAnalyticsCopyWith<$Res> {
  _$UserAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? profileViews = null,
    Object? searchAppearances = null,
    Object? projectInquiries = null,
    Object? successfulProjects = null,
    Object? totalEarnings = null,
    Object? totalSpent = null,
    Object? topSkillsDemand = null,
    Object? earnings = null,
    Object? conversionRate = null,
    Object? avgResponseTime = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            profileViews: null == profileViews
                ? _value.profileViews
                : profileViews // ignore: cast_nullable_to_non_nullable
                      as int,
            searchAppearances: null == searchAppearances
                ? _value.searchAppearances
                : searchAppearances // ignore: cast_nullable_to_non_nullable
                      as int,
            projectInquiries: null == projectInquiries
                ? _value.projectInquiries
                : projectInquiries // ignore: cast_nullable_to_non_nullable
                      as int,
            successfulProjects: null == successfulProjects
                ? _value.successfulProjects
                : successfulProjects // ignore: cast_nullable_to_non_nullable
                      as int,
            totalEarnings: null == totalEarnings
                ? _value.totalEarnings
                : totalEarnings // ignore: cast_nullable_to_non_nullable
                      as double,
            totalSpent: null == totalSpent
                ? _value.totalSpent
                : totalSpent // ignore: cast_nullable_to_non_nullable
                      as double,
            topSkillsDemand: null == topSkillsDemand
                ? _value.topSkillsDemand
                : topSkillsDemand // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            earnings: null == earnings
                ? _value.earnings
                : earnings // ignore: cast_nullable_to_non_nullable
                      as Map<DateTime, int>,
            conversionRate: null == conversionRate
                ? _value.conversionRate
                : conversionRate // ignore: cast_nullable_to_non_nullable
                      as double,
            avgResponseTime: null == avgResponseTime
                ? _value.avgResponseTime
                : avgResponseTime // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserAnalyticsImplCopyWith<$Res>
    implements $UserAnalyticsCopyWith<$Res> {
  factory _$$UserAnalyticsImplCopyWith(
    _$UserAnalyticsImpl value,
    $Res Function(_$UserAnalyticsImpl) then,
  ) = __$$UserAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int profileViews,
    int searchAppearances,
    int projectInquiries,
    int successfulProjects,
    double totalEarnings,
    double totalSpent,
    List<String> topSkillsDemand,
    Map<DateTime, int> earnings,
    double conversionRate,
    int avgResponseTime,
  });
}

/// @nodoc
class __$$UserAnalyticsImplCopyWithImpl<$Res>
    extends _$UserAnalyticsCopyWithImpl<$Res, _$UserAnalyticsImpl>
    implements _$$UserAnalyticsImplCopyWith<$Res> {
  __$$UserAnalyticsImplCopyWithImpl(
    _$UserAnalyticsImpl _value,
    $Res Function(_$UserAnalyticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? profileViews = null,
    Object? searchAppearances = null,
    Object? projectInquiries = null,
    Object? successfulProjects = null,
    Object? totalEarnings = null,
    Object? totalSpent = null,
    Object? topSkillsDemand = null,
    Object? earnings = null,
    Object? conversionRate = null,
    Object? avgResponseTime = null,
  }) {
    return _then(
      _$UserAnalyticsImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        profileViews: null == profileViews
            ? _value.profileViews
            : profileViews // ignore: cast_nullable_to_non_nullable
                  as int,
        searchAppearances: null == searchAppearances
            ? _value.searchAppearances
            : searchAppearances // ignore: cast_nullable_to_non_nullable
                  as int,
        projectInquiries: null == projectInquiries
            ? _value.projectInquiries
            : projectInquiries // ignore: cast_nullable_to_non_nullable
                  as int,
        successfulProjects: null == successfulProjects
            ? _value.successfulProjects
            : successfulProjects // ignore: cast_nullable_to_non_nullable
                  as int,
        totalEarnings: null == totalEarnings
            ? _value.totalEarnings
            : totalEarnings // ignore: cast_nullable_to_non_nullable
                  as double,
        totalSpent: null == totalSpent
            ? _value.totalSpent
            : totalSpent // ignore: cast_nullable_to_non_nullable
                  as double,
        topSkillsDemand: null == topSkillsDemand
            ? _value._topSkillsDemand
            : topSkillsDemand // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        earnings: null == earnings
            ? _value._earnings
            : earnings // ignore: cast_nullable_to_non_nullable
                  as Map<DateTime, int>,
        conversionRate: null == conversionRate
            ? _value.conversionRate
            : conversionRate // ignore: cast_nullable_to_non_nullable
                  as double,
        avgResponseTime: null == avgResponseTime
            ? _value.avgResponseTime
            : avgResponseTime // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAnalyticsImpl implements _UserAnalytics {
  const _$UserAnalyticsImpl({
    required this.userId,
    required this.profileViews,
    required this.searchAppearances,
    required this.projectInquiries,
    required this.successfulProjects,
    required this.totalEarnings,
    required this.totalSpent,
    required final List<String> topSkillsDemand,
    required final Map<DateTime, int> earnings,
    required this.conversionRate,
    required this.avgResponseTime,
  }) : _topSkillsDemand = topSkillsDemand,
       _earnings = earnings;

  factory _$UserAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAnalyticsImplFromJson(json);

  @override
  final String userId;
  @override
  final int profileViews;
  @override
  final int searchAppearances;
  @override
  final int projectInquiries;
  @override
  final int successfulProjects;
  @override
  final double totalEarnings;
  @override
  final double totalSpent;
  final List<String> _topSkillsDemand;
  @override
  List<String> get topSkillsDemand {
    if (_topSkillsDemand is EqualUnmodifiableListView) return _topSkillsDemand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSkillsDemand);
  }

  final Map<DateTime, int> _earnings;
  @override
  Map<DateTime, int> get earnings {
    if (_earnings is EqualUnmodifiableMapView) return _earnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_earnings);
  }

  @override
  final double conversionRate;
  @override
  final int avgResponseTime;

  @override
  String toString() {
    return 'UserAnalytics(userId: $userId, profileViews: $profileViews, searchAppearances: $searchAppearances, projectInquiries: $projectInquiries, successfulProjects: $successfulProjects, totalEarnings: $totalEarnings, totalSpent: $totalSpent, topSkillsDemand: $topSkillsDemand, earnings: $earnings, conversionRate: $conversionRate, avgResponseTime: $avgResponseTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAnalyticsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.profileViews, profileViews) ||
                other.profileViews == profileViews) &&
            (identical(other.searchAppearances, searchAppearances) ||
                other.searchAppearances == searchAppearances) &&
            (identical(other.projectInquiries, projectInquiries) ||
                other.projectInquiries == projectInquiries) &&
            (identical(other.successfulProjects, successfulProjects) ||
                other.successfulProjects == successfulProjects) &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings) &&
            (identical(other.totalSpent, totalSpent) ||
                other.totalSpent == totalSpent) &&
            const DeepCollectionEquality().equals(
              other._topSkillsDemand,
              _topSkillsDemand,
            ) &&
            const DeepCollectionEquality().equals(other._earnings, _earnings) &&
            (identical(other.conversionRate, conversionRate) ||
                other.conversionRate == conversionRate) &&
            (identical(other.avgResponseTime, avgResponseTime) ||
                other.avgResponseTime == avgResponseTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    profileViews,
    searchAppearances,
    projectInquiries,
    successfulProjects,
    totalEarnings,
    totalSpent,
    const DeepCollectionEquality().hash(_topSkillsDemand),
    const DeepCollectionEquality().hash(_earnings),
    conversionRate,
    avgResponseTime,
  );

  /// Create a copy of UserAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAnalyticsImplCopyWith<_$UserAnalyticsImpl> get copyWith =>
      __$$UserAnalyticsImplCopyWithImpl<_$UserAnalyticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAnalyticsImplToJson(this);
  }
}

abstract class _UserAnalytics implements UserAnalytics {
  const factory _UserAnalytics({
    required final String userId,
    required final int profileViews,
    required final int searchAppearances,
    required final int projectInquiries,
    required final int successfulProjects,
    required final double totalEarnings,
    required final double totalSpent,
    required final List<String> topSkillsDemand,
    required final Map<DateTime, int> earnings,
    required final double conversionRate,
    required final int avgResponseTime,
  }) = _$UserAnalyticsImpl;

  factory _UserAnalytics.fromJson(Map<String, dynamic> json) =
      _$UserAnalyticsImpl.fromJson;

  @override
  String get userId;
  @override
  int get profileViews;
  @override
  int get searchAppearances;
  @override
  int get projectInquiries;
  @override
  int get successfulProjects;
  @override
  double get totalEarnings;
  @override
  double get totalSpent;
  @override
  List<String> get topSkillsDemand;
  @override
  Map<DateTime, int> get earnings;
  @override
  double get conversionRate;
  @override
  int get avgResponseTime;

  /// Create a copy of UserAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAnalyticsImplCopyWith<_$UserAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GamificationStats _$GamificationStatsFromJson(Map<String, dynamic> json) {
  return _GamificationStats.fromJson(json);
}

/// @nodoc
mixin _$GamificationStats {
  String get userId => throw _privateConstructorUsedError;
  int get totalPoints => throw _privateConstructorUsedError;
  String get currentLevel => throw _privateConstructorUsedError;
  int get levelProgress => throw _privateConstructorUsedError;
  List<String> get earnedBadges => throw _privateConstructorUsedError;
  int get currentStreak => throw _privateConstructorUsedError;
  int get bestStreak => throw _privateConstructorUsedError;
  Map<String, int> get achievementProgress =>
      throw _privateConstructorUsedError;
  int get leaderboardRank => throw _privateConstructorUsedError;
  int get rewardsEarned => throw _privateConstructorUsedError;
  int get pointsRedeemed => throw _privateConstructorUsedError;

  /// Serializes this GamificationStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GamificationStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamificationStatsCopyWith<GamificationStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamificationStatsCopyWith<$Res> {
  factory $GamificationStatsCopyWith(
    GamificationStats value,
    $Res Function(GamificationStats) then,
  ) = _$GamificationStatsCopyWithImpl<$Res, GamificationStats>;
  @useResult
  $Res call({
    String userId,
    int totalPoints,
    String currentLevel,
    int levelProgress,
    List<String> earnedBadges,
    int currentStreak,
    int bestStreak,
    Map<String, int> achievementProgress,
    int leaderboardRank,
    int rewardsEarned,
    int pointsRedeemed,
  });
}

/// @nodoc
class _$GamificationStatsCopyWithImpl<$Res, $Val extends GamificationStats>
    implements $GamificationStatsCopyWith<$Res> {
  _$GamificationStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamificationStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? totalPoints = null,
    Object? currentLevel = null,
    Object? levelProgress = null,
    Object? earnedBadges = null,
    Object? currentStreak = null,
    Object? bestStreak = null,
    Object? achievementProgress = null,
    Object? leaderboardRank = null,
    Object? rewardsEarned = null,
    Object? pointsRedeemed = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            totalPoints: null == totalPoints
                ? _value.totalPoints
                : totalPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            currentLevel: null == currentLevel
                ? _value.currentLevel
                : currentLevel // ignore: cast_nullable_to_non_nullable
                      as String,
            levelProgress: null == levelProgress
                ? _value.levelProgress
                : levelProgress // ignore: cast_nullable_to_non_nullable
                      as int,
            earnedBadges: null == earnedBadges
                ? _value.earnedBadges
                : earnedBadges // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            currentStreak: null == currentStreak
                ? _value.currentStreak
                : currentStreak // ignore: cast_nullable_to_non_nullable
                      as int,
            bestStreak: null == bestStreak
                ? _value.bestStreak
                : bestStreak // ignore: cast_nullable_to_non_nullable
                      as int,
            achievementProgress: null == achievementProgress
                ? _value.achievementProgress
                : achievementProgress // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            leaderboardRank: null == leaderboardRank
                ? _value.leaderboardRank
                : leaderboardRank // ignore: cast_nullable_to_non_nullable
                      as int,
            rewardsEarned: null == rewardsEarned
                ? _value.rewardsEarned
                : rewardsEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            pointsRedeemed: null == pointsRedeemed
                ? _value.pointsRedeemed
                : pointsRedeemed // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GamificationStatsImplCopyWith<$Res>
    implements $GamificationStatsCopyWith<$Res> {
  factory _$$GamificationStatsImplCopyWith(
    _$GamificationStatsImpl value,
    $Res Function(_$GamificationStatsImpl) then,
  ) = __$$GamificationStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int totalPoints,
    String currentLevel,
    int levelProgress,
    List<String> earnedBadges,
    int currentStreak,
    int bestStreak,
    Map<String, int> achievementProgress,
    int leaderboardRank,
    int rewardsEarned,
    int pointsRedeemed,
  });
}

/// @nodoc
class __$$GamificationStatsImplCopyWithImpl<$Res>
    extends _$GamificationStatsCopyWithImpl<$Res, _$GamificationStatsImpl>
    implements _$$GamificationStatsImplCopyWith<$Res> {
  __$$GamificationStatsImplCopyWithImpl(
    _$GamificationStatsImpl _value,
    $Res Function(_$GamificationStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GamificationStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? totalPoints = null,
    Object? currentLevel = null,
    Object? levelProgress = null,
    Object? earnedBadges = null,
    Object? currentStreak = null,
    Object? bestStreak = null,
    Object? achievementProgress = null,
    Object? leaderboardRank = null,
    Object? rewardsEarned = null,
    Object? pointsRedeemed = null,
  }) {
    return _then(
      _$GamificationStatsImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        totalPoints: null == totalPoints
            ? _value.totalPoints
            : totalPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        currentLevel: null == currentLevel
            ? _value.currentLevel
            : currentLevel // ignore: cast_nullable_to_non_nullable
                  as String,
        levelProgress: null == levelProgress
            ? _value.levelProgress
            : levelProgress // ignore: cast_nullable_to_non_nullable
                  as int,
        earnedBadges: null == earnedBadges
            ? _value._earnedBadges
            : earnedBadges // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        currentStreak: null == currentStreak
            ? _value.currentStreak
            : currentStreak // ignore: cast_nullable_to_non_nullable
                  as int,
        bestStreak: null == bestStreak
            ? _value.bestStreak
            : bestStreak // ignore: cast_nullable_to_non_nullable
                  as int,
        achievementProgress: null == achievementProgress
            ? _value._achievementProgress
            : achievementProgress // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        leaderboardRank: null == leaderboardRank
            ? _value.leaderboardRank
            : leaderboardRank // ignore: cast_nullable_to_non_nullable
                  as int,
        rewardsEarned: null == rewardsEarned
            ? _value.rewardsEarned
            : rewardsEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        pointsRedeemed: null == pointsRedeemed
            ? _value.pointsRedeemed
            : pointsRedeemed // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GamificationStatsImpl implements _GamificationStats {
  const _$GamificationStatsImpl({
    required this.userId,
    required this.totalPoints,
    required this.currentLevel,
    required this.levelProgress,
    required final List<String> earnedBadges,
    required this.currentStreak,
    required this.bestStreak,
    required final Map<String, int> achievementProgress,
    required this.leaderboardRank,
    required this.rewardsEarned,
    required this.pointsRedeemed,
  }) : _earnedBadges = earnedBadges,
       _achievementProgress = achievementProgress;

  factory _$GamificationStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamificationStatsImplFromJson(json);

  @override
  final String userId;
  @override
  final int totalPoints;
  @override
  final String currentLevel;
  @override
  final int levelProgress;
  final List<String> _earnedBadges;
  @override
  List<String> get earnedBadges {
    if (_earnedBadges is EqualUnmodifiableListView) return _earnedBadges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_earnedBadges);
  }

  @override
  final int currentStreak;
  @override
  final int bestStreak;
  final Map<String, int> _achievementProgress;
  @override
  Map<String, int> get achievementProgress {
    if (_achievementProgress is EqualUnmodifiableMapView)
      return _achievementProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_achievementProgress);
  }

  @override
  final int leaderboardRank;
  @override
  final int rewardsEarned;
  @override
  final int pointsRedeemed;

  @override
  String toString() {
    return 'GamificationStats(userId: $userId, totalPoints: $totalPoints, currentLevel: $currentLevel, levelProgress: $levelProgress, earnedBadges: $earnedBadges, currentStreak: $currentStreak, bestStreak: $bestStreak, achievementProgress: $achievementProgress, leaderboardRank: $leaderboardRank, rewardsEarned: $rewardsEarned, pointsRedeemed: $pointsRedeemed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamificationStatsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalPoints, totalPoints) ||
                other.totalPoints == totalPoints) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel) &&
            (identical(other.levelProgress, levelProgress) ||
                other.levelProgress == levelProgress) &&
            const DeepCollectionEquality().equals(
              other._earnedBadges,
              _earnedBadges,
            ) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.bestStreak, bestStreak) ||
                other.bestStreak == bestStreak) &&
            const DeepCollectionEquality().equals(
              other._achievementProgress,
              _achievementProgress,
            ) &&
            (identical(other.leaderboardRank, leaderboardRank) ||
                other.leaderboardRank == leaderboardRank) &&
            (identical(other.rewardsEarned, rewardsEarned) ||
                other.rewardsEarned == rewardsEarned) &&
            (identical(other.pointsRedeemed, pointsRedeemed) ||
                other.pointsRedeemed == pointsRedeemed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    totalPoints,
    currentLevel,
    levelProgress,
    const DeepCollectionEquality().hash(_earnedBadges),
    currentStreak,
    bestStreak,
    const DeepCollectionEquality().hash(_achievementProgress),
    leaderboardRank,
    rewardsEarned,
    pointsRedeemed,
  );

  /// Create a copy of GamificationStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamificationStatsImplCopyWith<_$GamificationStatsImpl> get copyWith =>
      __$$GamificationStatsImplCopyWithImpl<_$GamificationStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GamificationStatsImplToJson(this);
  }
}

abstract class _GamificationStats implements GamificationStats {
  const factory _GamificationStats({
    required final String userId,
    required final int totalPoints,
    required final String currentLevel,
    required final int levelProgress,
    required final List<String> earnedBadges,
    required final int currentStreak,
    required final int bestStreak,
    required final Map<String, int> achievementProgress,
    required final int leaderboardRank,
    required final int rewardsEarned,
    required final int pointsRedeemed,
  }) = _$GamificationStatsImpl;

  factory _GamificationStats.fromJson(Map<String, dynamic> json) =
      _$GamificationStatsImpl.fromJson;

  @override
  String get userId;
  @override
  int get totalPoints;
  @override
  String get currentLevel;
  @override
  int get levelProgress;
  @override
  List<String> get earnedBadges;
  @override
  int get currentStreak;
  @override
  int get bestStreak;
  @override
  Map<String, int> get achievementProgress;
  @override
  int get leaderboardRank;
  @override
  int get rewardsEarned;
  @override
  int get pointsRedeemed;

  /// Create a copy of GamificationStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamificationStatsImplCopyWith<_$GamificationStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralReward _$ReferralRewardFromJson(Map<String, dynamic> json) {
  return _ReferralReward.fromJson(json);
}

/// @nodoc
mixin _$ReferralReward {
  String get referralId => throw _privateConstructorUsedError;
  String get referrerId => throw _privateConstructorUsedError;
  String get refereeId => throw _privateConstructorUsedError;
  int get rewardAmountLkr => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this ReferralReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralRewardCopyWith<ReferralReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralRewardCopyWith<$Res> {
  factory $ReferralRewardCopyWith(
    ReferralReward value,
    $Res Function(ReferralReward) then,
  ) = _$ReferralRewardCopyWithImpl<$Res, ReferralReward>;
  @useResult
  $Res call({
    String referralId,
    String referrerId,
    String refereeId,
    int rewardAmountLkr,
    bool isCompleted,
    DateTime createdAt,
    DateTime? completedAt,
  });
}

/// @nodoc
class _$ReferralRewardCopyWithImpl<$Res, $Val extends ReferralReward>
    implements $ReferralRewardCopyWith<$Res> {
  _$ReferralRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralId = null,
    Object? referrerId = null,
    Object? refereeId = null,
    Object? rewardAmountLkr = null,
    Object? isCompleted = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            referralId: null == referralId
                ? _value.referralId
                : referralId // ignore: cast_nullable_to_non_nullable
                      as String,
            referrerId: null == referrerId
                ? _value.referrerId
                : referrerId // ignore: cast_nullable_to_non_nullable
                      as String,
            refereeId: null == refereeId
                ? _value.refereeId
                : refereeId // ignore: cast_nullable_to_non_nullable
                      as String,
            rewardAmountLkr: null == rewardAmountLkr
                ? _value.rewardAmountLkr
                : rewardAmountLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReferralRewardImplCopyWith<$Res>
    implements $ReferralRewardCopyWith<$Res> {
  factory _$$ReferralRewardImplCopyWith(
    _$ReferralRewardImpl value,
    $Res Function(_$ReferralRewardImpl) then,
  ) = __$$ReferralRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String referralId,
    String referrerId,
    String refereeId,
    int rewardAmountLkr,
    bool isCompleted,
    DateTime createdAt,
    DateTime? completedAt,
  });
}

/// @nodoc
class __$$ReferralRewardImplCopyWithImpl<$Res>
    extends _$ReferralRewardCopyWithImpl<$Res, _$ReferralRewardImpl>
    implements _$$ReferralRewardImplCopyWith<$Res> {
  __$$ReferralRewardImplCopyWithImpl(
    _$ReferralRewardImpl _value,
    $Res Function(_$ReferralRewardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralId = null,
    Object? referrerId = null,
    Object? refereeId = null,
    Object? rewardAmountLkr = null,
    Object? isCompleted = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$ReferralRewardImpl(
        referralId: null == referralId
            ? _value.referralId
            : referralId // ignore: cast_nullable_to_non_nullable
                  as String,
        referrerId: null == referrerId
            ? _value.referrerId
            : referrerId // ignore: cast_nullable_to_non_nullable
                  as String,
        refereeId: null == refereeId
            ? _value.refereeId
            : refereeId // ignore: cast_nullable_to_non_nullable
                  as String,
        rewardAmountLkr: null == rewardAmountLkr
            ? _value.rewardAmountLkr
            : rewardAmountLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralRewardImpl implements _ReferralReward {
  const _$ReferralRewardImpl({
    required this.referralId,
    required this.referrerId,
    required this.refereeId,
    required this.rewardAmountLkr,
    required this.isCompleted,
    required this.createdAt,
    required this.completedAt,
  });

  factory _$ReferralRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralRewardImplFromJson(json);

  @override
  final String referralId;
  @override
  final String referrerId;
  @override
  final String refereeId;
  @override
  final int rewardAmountLkr;
  @override
  final bool isCompleted;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'ReferralReward(referralId: $referralId, referrerId: $referrerId, refereeId: $refereeId, rewardAmountLkr: $rewardAmountLkr, isCompleted: $isCompleted, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralRewardImpl &&
            (identical(other.referralId, referralId) ||
                other.referralId == referralId) &&
            (identical(other.referrerId, referrerId) ||
                other.referrerId == referrerId) &&
            (identical(other.refereeId, refereeId) ||
                other.refereeId == refereeId) &&
            (identical(other.rewardAmountLkr, rewardAmountLkr) ||
                other.rewardAmountLkr == rewardAmountLkr) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    referralId,
    referrerId,
    refereeId,
    rewardAmountLkr,
    isCompleted,
    createdAt,
    completedAt,
  );

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralRewardImplCopyWith<_$ReferralRewardImpl> get copyWith =>
      __$$ReferralRewardImplCopyWithImpl<_$ReferralRewardImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralRewardImplToJson(this);
  }
}

abstract class _ReferralReward implements ReferralReward {
  const factory _ReferralReward({
    required final String referralId,
    required final String referrerId,
    required final String refereeId,
    required final int rewardAmountLkr,
    required final bool isCompleted,
    required final DateTime createdAt,
    required final DateTime? completedAt,
  }) = _$ReferralRewardImpl;

  factory _ReferralReward.fromJson(Map<String, dynamic> json) =
      _$ReferralRewardImpl.fromJson;

  @override
  String get referralId;
  @override
  String get referrerId;
  @override
  String get refereeId;
  @override
  int get rewardAmountLkr;
  @override
  bool get isCompleted;
  @override
  DateTime get createdAt;
  @override
  DateTime? get completedAt;

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralRewardImplCopyWith<_$ReferralRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReputationLevel _$ReputationLevelFromJson(Map<String, dynamic> json) {
  return _ReputationLevel.fromJson(json);
}

/// @nodoc
mixin _$ReputationLevel {
  String get levelId => throw _privateConstructorUsedError;
  String get levelName => throw _privateConstructorUsedError;
  int get minPoints => throw _privateConstructorUsedError;
  int get maxPoints => throw _privateConstructorUsedError;
  String get badge => throw _privateConstructorUsedError;
  List<String> get unlockedFeatures => throw _privateConstructorUsedError;
  double get discountPercent => throw _privateConstructorUsedError;

  /// Serializes this ReputationLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReputationLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReputationLevelCopyWith<ReputationLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReputationLevelCopyWith<$Res> {
  factory $ReputationLevelCopyWith(
    ReputationLevel value,
    $Res Function(ReputationLevel) then,
  ) = _$ReputationLevelCopyWithImpl<$Res, ReputationLevel>;
  @useResult
  $Res call({
    String levelId,
    String levelName,
    int minPoints,
    int maxPoints,
    String badge,
    List<String> unlockedFeatures,
    double discountPercent,
  });
}

/// @nodoc
class _$ReputationLevelCopyWithImpl<$Res, $Val extends ReputationLevel>
    implements $ReputationLevelCopyWith<$Res> {
  _$ReputationLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReputationLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelId = null,
    Object? levelName = null,
    Object? minPoints = null,
    Object? maxPoints = null,
    Object? badge = null,
    Object? unlockedFeatures = null,
    Object? discountPercent = null,
  }) {
    return _then(
      _value.copyWith(
            levelId: null == levelId
                ? _value.levelId
                : levelId // ignore: cast_nullable_to_non_nullable
                      as String,
            levelName: null == levelName
                ? _value.levelName
                : levelName // ignore: cast_nullable_to_non_nullable
                      as String,
            minPoints: null == minPoints
                ? _value.minPoints
                : minPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            maxPoints: null == maxPoints
                ? _value.maxPoints
                : maxPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            badge: null == badge
                ? _value.badge
                : badge // ignore: cast_nullable_to_non_nullable
                      as String,
            unlockedFeatures: null == unlockedFeatures
                ? _value.unlockedFeatures
                : unlockedFeatures // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            discountPercent: null == discountPercent
                ? _value.discountPercent
                : discountPercent // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReputationLevelImplCopyWith<$Res>
    implements $ReputationLevelCopyWith<$Res> {
  factory _$$ReputationLevelImplCopyWith(
    _$ReputationLevelImpl value,
    $Res Function(_$ReputationLevelImpl) then,
  ) = __$$ReputationLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String levelId,
    String levelName,
    int minPoints,
    int maxPoints,
    String badge,
    List<String> unlockedFeatures,
    double discountPercent,
  });
}

/// @nodoc
class __$$ReputationLevelImplCopyWithImpl<$Res>
    extends _$ReputationLevelCopyWithImpl<$Res, _$ReputationLevelImpl>
    implements _$$ReputationLevelImplCopyWith<$Res> {
  __$$ReputationLevelImplCopyWithImpl(
    _$ReputationLevelImpl _value,
    $Res Function(_$ReputationLevelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReputationLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelId = null,
    Object? levelName = null,
    Object? minPoints = null,
    Object? maxPoints = null,
    Object? badge = null,
    Object? unlockedFeatures = null,
    Object? discountPercent = null,
  }) {
    return _then(
      _$ReputationLevelImpl(
        levelId: null == levelId
            ? _value.levelId
            : levelId // ignore: cast_nullable_to_non_nullable
                  as String,
        levelName: null == levelName
            ? _value.levelName
            : levelName // ignore: cast_nullable_to_non_nullable
                  as String,
        minPoints: null == minPoints
            ? _value.minPoints
            : minPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        maxPoints: null == maxPoints
            ? _value.maxPoints
            : maxPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        badge: null == badge
            ? _value.badge
            : badge // ignore: cast_nullable_to_non_nullable
                  as String,
        unlockedFeatures: null == unlockedFeatures
            ? _value._unlockedFeatures
            : unlockedFeatures // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        discountPercent: null == discountPercent
            ? _value.discountPercent
            : discountPercent // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReputationLevelImpl implements _ReputationLevel {
  const _$ReputationLevelImpl({
    required this.levelId,
    required this.levelName,
    required this.minPoints,
    required this.maxPoints,
    required this.badge,
    required final List<String> unlockedFeatures,
    required this.discountPercent,
  }) : _unlockedFeatures = unlockedFeatures;

  factory _$ReputationLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReputationLevelImplFromJson(json);

  @override
  final String levelId;
  @override
  final String levelName;
  @override
  final int minPoints;
  @override
  final int maxPoints;
  @override
  final String badge;
  final List<String> _unlockedFeatures;
  @override
  List<String> get unlockedFeatures {
    if (_unlockedFeatures is EqualUnmodifiableListView)
      return _unlockedFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unlockedFeatures);
  }

  @override
  final double discountPercent;

  @override
  String toString() {
    return 'ReputationLevel(levelId: $levelId, levelName: $levelName, minPoints: $minPoints, maxPoints: $maxPoints, badge: $badge, unlockedFeatures: $unlockedFeatures, discountPercent: $discountPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReputationLevelImpl &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.levelName, levelName) ||
                other.levelName == levelName) &&
            (identical(other.minPoints, minPoints) ||
                other.minPoints == minPoints) &&
            (identical(other.maxPoints, maxPoints) ||
                other.maxPoints == maxPoints) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            const DeepCollectionEquality().equals(
              other._unlockedFeatures,
              _unlockedFeatures,
            ) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    levelId,
    levelName,
    minPoints,
    maxPoints,
    badge,
    const DeepCollectionEquality().hash(_unlockedFeatures),
    discountPercent,
  );

  /// Create a copy of ReputationLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReputationLevelImplCopyWith<_$ReputationLevelImpl> get copyWith =>
      __$$ReputationLevelImplCopyWithImpl<_$ReputationLevelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReputationLevelImplToJson(this);
  }
}

abstract class _ReputationLevel implements ReputationLevel {
  const factory _ReputationLevel({
    required final String levelId,
    required final String levelName,
    required final int minPoints,
    required final int maxPoints,
    required final String badge,
    required final List<String> unlockedFeatures,
    required final double discountPercent,
  }) = _$ReputationLevelImpl;

  factory _ReputationLevel.fromJson(Map<String, dynamic> json) =
      _$ReputationLevelImpl.fromJson;

  @override
  String get levelId;
  @override
  String get levelName;
  @override
  int get minPoints;
  @override
  int get maxPoints;
  @override
  String get badge;
  @override
  List<String> get unlockedFeatures;
  @override
  double get discountPercent;

  /// Create a copy of ReputationLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReputationLevelImplCopyWith<_$ReputationLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
