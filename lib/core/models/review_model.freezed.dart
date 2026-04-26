// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectReview _$ProjectReviewFromJson(Map<String, dynamic> json) {
  return _ProjectReview.fromJson(json);
}

/// @nodoc
mixin _$ProjectReview {
  String get reviewId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get reviewerId => throw _privateConstructorUsedError;
  String get revieweId => throw _privateConstructorUsedError;
  int get qualityRating => throw _privateConstructorUsedError; // 1-5
  int get punctualityRating => throw _privateConstructorUsedError; // 1-5
  int get communicationRating => throw _privateConstructorUsedError; // 1-5
  int get professionalismRating => throw _privateConstructorUsedError; // 1-5
  String? get narrative => throw _privateConstructorUsedError;
  List<String>? get photoUrls => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get helpful => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  DateTime? get responseAt => throw _privateConstructorUsedError;

  /// Serializes this ProjectReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectReviewCopyWith<ProjectReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectReviewCopyWith<$Res> {
  factory $ProjectReviewCopyWith(
    ProjectReview value,
    $Res Function(ProjectReview) then,
  ) = _$ProjectReviewCopyWithImpl<$Res, ProjectReview>;
  @useResult
  $Res call({
    String reviewId,
    String projectId,
    String reviewerId,
    String revieweId,
    int qualityRating,
    int punctualityRating,
    int communicationRating,
    int professionalismRating,
    String? narrative,
    List<String>? photoUrls,
    bool isVerified,
    DateTime createdAt,
    bool helpful,
    String? response,
    DateTime? responseAt,
  });
}

/// @nodoc
class _$ProjectReviewCopyWithImpl<$Res, $Val extends ProjectReview>
    implements $ProjectReviewCopyWith<$Res> {
  _$ProjectReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? projectId = null,
    Object? reviewerId = null,
    Object? revieweId = null,
    Object? qualityRating = null,
    Object? punctualityRating = null,
    Object? communicationRating = null,
    Object? professionalismRating = null,
    Object? narrative = freezed,
    Object? photoUrls = freezed,
    Object? isVerified = null,
    Object? createdAt = null,
    Object? helpful = null,
    Object? response = freezed,
    Object? responseAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            reviewId: null == reviewId
                ? _value.reviewId
                : reviewId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            reviewerId: null == reviewerId
                ? _value.reviewerId
                : reviewerId // ignore: cast_nullable_to_non_nullable
                      as String,
            revieweId: null == revieweId
                ? _value.revieweId
                : revieweId // ignore: cast_nullable_to_non_nullable
                      as String,
            qualityRating: null == qualityRating
                ? _value.qualityRating
                : qualityRating // ignore: cast_nullable_to_non_nullable
                      as int,
            punctualityRating: null == punctualityRating
                ? _value.punctualityRating
                : punctualityRating // ignore: cast_nullable_to_non_nullable
                      as int,
            communicationRating: null == communicationRating
                ? _value.communicationRating
                : communicationRating // ignore: cast_nullable_to_non_nullable
                      as int,
            professionalismRating: null == professionalismRating
                ? _value.professionalismRating
                : professionalismRating // ignore: cast_nullable_to_non_nullable
                      as int,
            narrative: freezed == narrative
                ? _value.narrative
                : narrative // ignore: cast_nullable_to_non_nullable
                      as String?,
            photoUrls: freezed == photoUrls
                ? _value.photoUrls
                : photoUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            helpful: null == helpful
                ? _value.helpful
                : helpful // ignore: cast_nullable_to_non_nullable
                      as bool,
            response: freezed == response
                ? _value.response
                : response // ignore: cast_nullable_to_non_nullable
                      as String?,
            responseAt: freezed == responseAt
                ? _value.responseAt
                : responseAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectReviewImplCopyWith<$Res>
    implements $ProjectReviewCopyWith<$Res> {
  factory _$$ProjectReviewImplCopyWith(
    _$ProjectReviewImpl value,
    $Res Function(_$ProjectReviewImpl) then,
  ) = __$$ProjectReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String reviewId,
    String projectId,
    String reviewerId,
    String revieweId,
    int qualityRating,
    int punctualityRating,
    int communicationRating,
    int professionalismRating,
    String? narrative,
    List<String>? photoUrls,
    bool isVerified,
    DateTime createdAt,
    bool helpful,
    String? response,
    DateTime? responseAt,
  });
}

/// @nodoc
class __$$ProjectReviewImplCopyWithImpl<$Res>
    extends _$ProjectReviewCopyWithImpl<$Res, _$ProjectReviewImpl>
    implements _$$ProjectReviewImplCopyWith<$Res> {
  __$$ProjectReviewImplCopyWithImpl(
    _$ProjectReviewImpl _value,
    $Res Function(_$ProjectReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? projectId = null,
    Object? reviewerId = null,
    Object? revieweId = null,
    Object? qualityRating = null,
    Object? punctualityRating = null,
    Object? communicationRating = null,
    Object? professionalismRating = null,
    Object? narrative = freezed,
    Object? photoUrls = freezed,
    Object? isVerified = null,
    Object? createdAt = null,
    Object? helpful = null,
    Object? response = freezed,
    Object? responseAt = freezed,
  }) {
    return _then(
      _$ProjectReviewImpl(
        reviewId: null == reviewId
            ? _value.reviewId
            : reviewId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        reviewerId: null == reviewerId
            ? _value.reviewerId
            : reviewerId // ignore: cast_nullable_to_non_nullable
                  as String,
        revieweId: null == revieweId
            ? _value.revieweId
            : revieweId // ignore: cast_nullable_to_non_nullable
                  as String,
        qualityRating: null == qualityRating
            ? _value.qualityRating
            : qualityRating // ignore: cast_nullable_to_non_nullable
                  as int,
        punctualityRating: null == punctualityRating
            ? _value.punctualityRating
            : punctualityRating // ignore: cast_nullable_to_non_nullable
                  as int,
        communicationRating: null == communicationRating
            ? _value.communicationRating
            : communicationRating // ignore: cast_nullable_to_non_nullable
                  as int,
        professionalismRating: null == professionalismRating
            ? _value.professionalismRating
            : professionalismRating // ignore: cast_nullable_to_non_nullable
                  as int,
        narrative: freezed == narrative
            ? _value.narrative
            : narrative // ignore: cast_nullable_to_non_nullable
                  as String?,
        photoUrls: freezed == photoUrls
            ? _value._photoUrls
            : photoUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        helpful: null == helpful
            ? _value.helpful
            : helpful // ignore: cast_nullable_to_non_nullable
                  as bool,
        response: freezed == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                  as String?,
        responseAt: freezed == responseAt
            ? _value.responseAt
            : responseAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectReviewImpl extends _ProjectReview {
  const _$ProjectReviewImpl({
    required this.reviewId,
    required this.projectId,
    required this.reviewerId,
    required this.revieweId,
    required this.qualityRating,
    required this.punctualityRating,
    required this.communicationRating,
    required this.professionalismRating,
    required this.narrative,
    required final List<String>? photoUrls,
    required this.isVerified,
    required this.createdAt,
    required this.helpful,
    required this.response,
    required this.responseAt,
  }) : _photoUrls = photoUrls,
       super._();

  factory _$ProjectReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectReviewImplFromJson(json);

  @override
  final String reviewId;
  @override
  final String projectId;
  @override
  final String reviewerId;
  @override
  final String revieweId;
  @override
  final int qualityRating;
  // 1-5
  @override
  final int punctualityRating;
  // 1-5
  @override
  final int communicationRating;
  // 1-5
  @override
  final int professionalismRating;
  // 1-5
  @override
  final String? narrative;
  final List<String>? _photoUrls;
  @override
  List<String>? get photoUrls {
    final value = _photoUrls;
    if (value == null) return null;
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isVerified;
  @override
  final DateTime createdAt;
  @override
  final bool helpful;
  @override
  final String? response;
  @override
  final DateTime? responseAt;

  @override
  String toString() {
    return 'ProjectReview(reviewId: $reviewId, projectId: $projectId, reviewerId: $reviewerId, revieweId: $revieweId, qualityRating: $qualityRating, punctualityRating: $punctualityRating, communicationRating: $communicationRating, professionalismRating: $professionalismRating, narrative: $narrative, photoUrls: $photoUrls, isVerified: $isVerified, createdAt: $createdAt, helpful: $helpful, response: $response, responseAt: $responseAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectReviewImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.reviewerId, reviewerId) ||
                other.reviewerId == reviewerId) &&
            (identical(other.revieweId, revieweId) ||
                other.revieweId == revieweId) &&
            (identical(other.qualityRating, qualityRating) ||
                other.qualityRating == qualityRating) &&
            (identical(other.punctualityRating, punctualityRating) ||
                other.punctualityRating == punctualityRating) &&
            (identical(other.communicationRating, communicationRating) ||
                other.communicationRating == communicationRating) &&
            (identical(other.professionalismRating, professionalismRating) ||
                other.professionalismRating == professionalismRating) &&
            (identical(other.narrative, narrative) ||
                other.narrative == narrative) &&
            const DeepCollectionEquality().equals(
              other._photoUrls,
              _photoUrls,
            ) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.helpful, helpful) || other.helpful == helpful) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.responseAt, responseAt) ||
                other.responseAt == responseAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    reviewId,
    projectId,
    reviewerId,
    revieweId,
    qualityRating,
    punctualityRating,
    communicationRating,
    professionalismRating,
    narrative,
    const DeepCollectionEquality().hash(_photoUrls),
    isVerified,
    createdAt,
    helpful,
    response,
    responseAt,
  );

  /// Create a copy of ProjectReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectReviewImplCopyWith<_$ProjectReviewImpl> get copyWith =>
      __$$ProjectReviewImplCopyWithImpl<_$ProjectReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectReviewImplToJson(this);
  }
}

abstract class _ProjectReview extends ProjectReview {
  const factory _ProjectReview({
    required final String reviewId,
    required final String projectId,
    required final String reviewerId,
    required final String revieweId,
    required final int qualityRating,
    required final int punctualityRating,
    required final int communicationRating,
    required final int professionalismRating,
    required final String? narrative,
    required final List<String>? photoUrls,
    required final bool isVerified,
    required final DateTime createdAt,
    required final bool helpful,
    required final String? response,
    required final DateTime? responseAt,
  }) = _$ProjectReviewImpl;
  const _ProjectReview._() : super._();

  factory _ProjectReview.fromJson(Map<String, dynamic> json) =
      _$ProjectReviewImpl.fromJson;

  @override
  String get reviewId;
  @override
  String get projectId;
  @override
  String get reviewerId;
  @override
  String get revieweId;
  @override
  int get qualityRating; // 1-5
  @override
  int get punctualityRating; // 1-5
  @override
  int get communicationRating; // 1-5
  @override
  int get professionalismRating; // 1-5
  @override
  String? get narrative;
  @override
  List<String>? get photoUrls;
  @override
  bool get isVerified;
  @override
  DateTime get createdAt;
  @override
  bool get helpful;
  @override
  String? get response;
  @override
  DateTime? get responseAt;

  /// Create a copy of ProjectReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectReviewImplCopyWith<_$ProjectReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRatingStats _$UserRatingStatsFromJson(Map<String, dynamic> json) {
  return _UserRatingStats.fromJson(json);
}

/// @nodoc
mixin _$UserRatingStats {
  String get userId => throw _privateConstructorUsedError;
  double get avgQualityRating => throw _privateConstructorUsedError;
  double get avgPunctualityRating => throw _privateConstructorUsedError;
  double get avgCommunicationRating => throw _privateConstructorUsedError;
  double get avgProfessionalismRating => throw _privateConstructorUsedError;
  int get totalReviews => throw _privateConstructorUsedError;
  int get completedProjects => throw _privateConstructorUsedError;
  double get overallRating => throw _privateConstructorUsedError;
  List<String> get badges => throw _privateConstructorUsedError;
  bool get isTrusted => throw _privateConstructorUsedError;
  bool get isTopRated => throw _privateConstructorUsedError;
  bool get isResponsive => throw _privateConstructorUsedError;

  /// Serializes this UserRatingStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingStatsCopyWith<UserRatingStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingStatsCopyWith<$Res> {
  factory $UserRatingStatsCopyWith(
    UserRatingStats value,
    $Res Function(UserRatingStats) then,
  ) = _$UserRatingStatsCopyWithImpl<$Res, UserRatingStats>;
  @useResult
  $Res call({
    String userId,
    double avgQualityRating,
    double avgPunctualityRating,
    double avgCommunicationRating,
    double avgProfessionalismRating,
    int totalReviews,
    int completedProjects,
    double overallRating,
    List<String> badges,
    bool isTrusted,
    bool isTopRated,
    bool isResponsive,
  });
}

/// @nodoc
class _$UserRatingStatsCopyWithImpl<$Res, $Val extends UserRatingStats>
    implements $UserRatingStatsCopyWith<$Res> {
  _$UserRatingStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? avgQualityRating = null,
    Object? avgPunctualityRating = null,
    Object? avgCommunicationRating = null,
    Object? avgProfessionalismRating = null,
    Object? totalReviews = null,
    Object? completedProjects = null,
    Object? overallRating = null,
    Object? badges = null,
    Object? isTrusted = null,
    Object? isTopRated = null,
    Object? isResponsive = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            avgQualityRating: null == avgQualityRating
                ? _value.avgQualityRating
                : avgQualityRating // ignore: cast_nullable_to_non_nullable
                      as double,
            avgPunctualityRating: null == avgPunctualityRating
                ? _value.avgPunctualityRating
                : avgPunctualityRating // ignore: cast_nullable_to_non_nullable
                      as double,
            avgCommunicationRating: null == avgCommunicationRating
                ? _value.avgCommunicationRating
                : avgCommunicationRating // ignore: cast_nullable_to_non_nullable
                      as double,
            avgProfessionalismRating: null == avgProfessionalismRating
                ? _value.avgProfessionalismRating
                : avgProfessionalismRating // ignore: cast_nullable_to_non_nullable
                      as double,
            totalReviews: null == totalReviews
                ? _value.totalReviews
                : totalReviews // ignore: cast_nullable_to_non_nullable
                      as int,
            completedProjects: null == completedProjects
                ? _value.completedProjects
                : completedProjects // ignore: cast_nullable_to_non_nullable
                      as int,
            overallRating: null == overallRating
                ? _value.overallRating
                : overallRating // ignore: cast_nullable_to_non_nullable
                      as double,
            badges: null == badges
                ? _value.badges
                : badges // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isTrusted: null == isTrusted
                ? _value.isTrusted
                : isTrusted // ignore: cast_nullable_to_non_nullable
                      as bool,
            isTopRated: null == isTopRated
                ? _value.isTopRated
                : isTopRated // ignore: cast_nullable_to_non_nullable
                      as bool,
            isResponsive: null == isResponsive
                ? _value.isResponsive
                : isResponsive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserRatingStatsImplCopyWith<$Res>
    implements $UserRatingStatsCopyWith<$Res> {
  factory _$$UserRatingStatsImplCopyWith(
    _$UserRatingStatsImpl value,
    $Res Function(_$UserRatingStatsImpl) then,
  ) = __$$UserRatingStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    double avgQualityRating,
    double avgPunctualityRating,
    double avgCommunicationRating,
    double avgProfessionalismRating,
    int totalReviews,
    int completedProjects,
    double overallRating,
    List<String> badges,
    bool isTrusted,
    bool isTopRated,
    bool isResponsive,
  });
}

/// @nodoc
class __$$UserRatingStatsImplCopyWithImpl<$Res>
    extends _$UserRatingStatsCopyWithImpl<$Res, _$UserRatingStatsImpl>
    implements _$$UserRatingStatsImplCopyWith<$Res> {
  __$$UserRatingStatsImplCopyWithImpl(
    _$UserRatingStatsImpl _value,
    $Res Function(_$UserRatingStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? avgQualityRating = null,
    Object? avgPunctualityRating = null,
    Object? avgCommunicationRating = null,
    Object? avgProfessionalismRating = null,
    Object? totalReviews = null,
    Object? completedProjects = null,
    Object? overallRating = null,
    Object? badges = null,
    Object? isTrusted = null,
    Object? isTopRated = null,
    Object? isResponsive = null,
  }) {
    return _then(
      _$UserRatingStatsImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        avgQualityRating: null == avgQualityRating
            ? _value.avgQualityRating
            : avgQualityRating // ignore: cast_nullable_to_non_nullable
                  as double,
        avgPunctualityRating: null == avgPunctualityRating
            ? _value.avgPunctualityRating
            : avgPunctualityRating // ignore: cast_nullable_to_non_nullable
                  as double,
        avgCommunicationRating: null == avgCommunicationRating
            ? _value.avgCommunicationRating
            : avgCommunicationRating // ignore: cast_nullable_to_non_nullable
                  as double,
        avgProfessionalismRating: null == avgProfessionalismRating
            ? _value.avgProfessionalismRating
            : avgProfessionalismRating // ignore: cast_nullable_to_non_nullable
                  as double,
        totalReviews: null == totalReviews
            ? _value.totalReviews
            : totalReviews // ignore: cast_nullable_to_non_nullable
                  as int,
        completedProjects: null == completedProjects
            ? _value.completedProjects
            : completedProjects // ignore: cast_nullable_to_non_nullable
                  as int,
        overallRating: null == overallRating
            ? _value.overallRating
            : overallRating // ignore: cast_nullable_to_non_nullable
                  as double,
        badges: null == badges
            ? _value._badges
            : badges // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isTrusted: null == isTrusted
            ? _value.isTrusted
            : isTrusted // ignore: cast_nullable_to_non_nullable
                  as bool,
        isTopRated: null == isTopRated
            ? _value.isTopRated
            : isTopRated // ignore: cast_nullable_to_non_nullable
                  as bool,
        isResponsive: null == isResponsive
            ? _value.isResponsive
            : isResponsive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRatingStatsImpl implements _UserRatingStats {
  const _$UserRatingStatsImpl({
    required this.userId,
    required this.avgQualityRating,
    required this.avgPunctualityRating,
    required this.avgCommunicationRating,
    required this.avgProfessionalismRating,
    required this.totalReviews,
    required this.completedProjects,
    required this.overallRating,
    required final List<String> badges,
    required this.isTrusted,
    required this.isTopRated,
    required this.isResponsive,
  }) : _badges = badges;

  factory _$UserRatingStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingStatsImplFromJson(json);

  @override
  final String userId;
  @override
  final double avgQualityRating;
  @override
  final double avgPunctualityRating;
  @override
  final double avgCommunicationRating;
  @override
  final double avgProfessionalismRating;
  @override
  final int totalReviews;
  @override
  final int completedProjects;
  @override
  final double overallRating;
  final List<String> _badges;
  @override
  List<String> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final bool isTrusted;
  @override
  final bool isTopRated;
  @override
  final bool isResponsive;

  @override
  String toString() {
    return 'UserRatingStats(userId: $userId, avgQualityRating: $avgQualityRating, avgPunctualityRating: $avgPunctualityRating, avgCommunicationRating: $avgCommunicationRating, avgProfessionalismRating: $avgProfessionalismRating, totalReviews: $totalReviews, completedProjects: $completedProjects, overallRating: $overallRating, badges: $badges, isTrusted: $isTrusted, isTopRated: $isTopRated, isResponsive: $isResponsive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingStatsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.avgQualityRating, avgQualityRating) ||
                other.avgQualityRating == avgQualityRating) &&
            (identical(other.avgPunctualityRating, avgPunctualityRating) ||
                other.avgPunctualityRating == avgPunctualityRating) &&
            (identical(other.avgCommunicationRating, avgCommunicationRating) ||
                other.avgCommunicationRating == avgCommunicationRating) &&
            (identical(
                  other.avgProfessionalismRating,
                  avgProfessionalismRating,
                ) ||
                other.avgProfessionalismRating == avgProfessionalismRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.completedProjects, completedProjects) ||
                other.completedProjects == completedProjects) &&
            (identical(other.overallRating, overallRating) ||
                other.overallRating == overallRating) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.isTrusted, isTrusted) ||
                other.isTrusted == isTrusted) &&
            (identical(other.isTopRated, isTopRated) ||
                other.isTopRated == isTopRated) &&
            (identical(other.isResponsive, isResponsive) ||
                other.isResponsive == isResponsive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    avgQualityRating,
    avgPunctualityRating,
    avgCommunicationRating,
    avgProfessionalismRating,
    totalReviews,
    completedProjects,
    overallRating,
    const DeepCollectionEquality().hash(_badges),
    isTrusted,
    isTopRated,
    isResponsive,
  );

  /// Create a copy of UserRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingStatsImplCopyWith<_$UserRatingStatsImpl> get copyWith =>
      __$$UserRatingStatsImplCopyWithImpl<_$UserRatingStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRatingStatsImplToJson(this);
  }
}

abstract class _UserRatingStats implements UserRatingStats {
  const factory _UserRatingStats({
    required final String userId,
    required final double avgQualityRating,
    required final double avgPunctualityRating,
    required final double avgCommunicationRating,
    required final double avgProfessionalismRating,
    required final int totalReviews,
    required final int completedProjects,
    required final double overallRating,
    required final List<String> badges,
    required final bool isTrusted,
    required final bool isTopRated,
    required final bool isResponsive,
  }) = _$UserRatingStatsImpl;

  factory _UserRatingStats.fromJson(Map<String, dynamic> json) =
      _$UserRatingStatsImpl.fromJson;

  @override
  String get userId;
  @override
  double get avgQualityRating;
  @override
  double get avgPunctualityRating;
  @override
  double get avgCommunicationRating;
  @override
  double get avgProfessionalismRating;
  @override
  int get totalReviews;
  @override
  int get completedProjects;
  @override
  double get overallRating;
  @override
  List<String> get badges;
  @override
  bool get isTrusted;
  @override
  bool get isTopRated;
  @override
  bool get isResponsive;

  /// Create a copy of UserRatingStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingStatsImplCopyWith<_$UserRatingStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBadge _$UserBadgeFromJson(Map<String, dynamic> json) {
  return _UserBadge.fromJson(json);
}

/// @nodoc
mixin _$UserBadge {
  String get badgeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get requirement => throw _privateConstructorUsedError;
  DateTime get awardedAt => throw _privateConstructorUsedError;

  /// Serializes this UserBadge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBadgeCopyWith<UserBadge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBadgeCopyWith<$Res> {
  factory $UserBadgeCopyWith(UserBadge value, $Res Function(UserBadge) then) =
      _$UserBadgeCopyWithImpl<$Res, UserBadge>;
  @useResult
  $Res call({
    String badgeId,
    String name,
    String iconUrl,
    String description,
    String requirement,
    DateTime awardedAt,
  });
}

/// @nodoc
class _$UserBadgeCopyWithImpl<$Res, $Val extends UserBadge>
    implements $UserBadgeCopyWith<$Res> {
  _$UserBadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badgeId = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? description = null,
    Object? requirement = null,
    Object? awardedAt = null,
  }) {
    return _then(
      _value.copyWith(
            badgeId: null == badgeId
                ? _value.badgeId
                : badgeId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            iconUrl: null == iconUrl
                ? _value.iconUrl
                : iconUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            requirement: null == requirement
                ? _value.requirement
                : requirement // ignore: cast_nullable_to_non_nullable
                      as String,
            awardedAt: null == awardedAt
                ? _value.awardedAt
                : awardedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserBadgeImplCopyWith<$Res>
    implements $UserBadgeCopyWith<$Res> {
  factory _$$UserBadgeImplCopyWith(
    _$UserBadgeImpl value,
    $Res Function(_$UserBadgeImpl) then,
  ) = __$$UserBadgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String badgeId,
    String name,
    String iconUrl,
    String description,
    String requirement,
    DateTime awardedAt,
  });
}

/// @nodoc
class __$$UserBadgeImplCopyWithImpl<$Res>
    extends _$UserBadgeCopyWithImpl<$Res, _$UserBadgeImpl>
    implements _$$UserBadgeImplCopyWith<$Res> {
  __$$UserBadgeImplCopyWithImpl(
    _$UserBadgeImpl _value,
    $Res Function(_$UserBadgeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badgeId = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? description = null,
    Object? requirement = null,
    Object? awardedAt = null,
  }) {
    return _then(
      _$UserBadgeImpl(
        badgeId: null == badgeId
            ? _value.badgeId
            : badgeId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        iconUrl: null == iconUrl
            ? _value.iconUrl
            : iconUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        requirement: null == requirement
            ? _value.requirement
            : requirement // ignore: cast_nullable_to_non_nullable
                  as String,
        awardedAt: null == awardedAt
            ? _value.awardedAt
            : awardedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBadgeImpl implements _UserBadge {
  const _$UserBadgeImpl({
    required this.badgeId,
    required this.name,
    required this.iconUrl,
    required this.description,
    required this.requirement,
    required this.awardedAt,
  });

  factory _$UserBadgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBadgeImplFromJson(json);

  @override
  final String badgeId;
  @override
  final String name;
  @override
  final String iconUrl;
  @override
  final String description;
  @override
  final String requirement;
  @override
  final DateTime awardedAt;

  @override
  String toString() {
    return 'UserBadge(badgeId: $badgeId, name: $name, iconUrl: $iconUrl, description: $description, requirement: $requirement, awardedAt: $awardedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBadgeImpl &&
            (identical(other.badgeId, badgeId) || other.badgeId == badgeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.requirement, requirement) ||
                other.requirement == requirement) &&
            (identical(other.awardedAt, awardedAt) ||
                other.awardedAt == awardedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    badgeId,
    name,
    iconUrl,
    description,
    requirement,
    awardedAt,
  );

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBadgeImplCopyWith<_$UserBadgeImpl> get copyWith =>
      __$$UserBadgeImplCopyWithImpl<_$UserBadgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBadgeImplToJson(this);
  }
}

abstract class _UserBadge implements UserBadge {
  const factory _UserBadge({
    required final String badgeId,
    required final String name,
    required final String iconUrl,
    required final String description,
    required final String requirement,
    required final DateTime awardedAt,
  }) = _$UserBadgeImpl;

  factory _UserBadge.fromJson(Map<String, dynamic> json) =
      _$UserBadgeImpl.fromJson;

  @override
  String get badgeId;
  @override
  String get name;
  @override
  String get iconUrl;
  @override
  String get description;
  @override
  String get requirement;
  @override
  DateTime get awardedAt;

  /// Create a copy of UserBadge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBadgeImplCopyWith<_$UserBadgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractorProfile _$ContractorProfileFromJson(Map<String, dynamic> json) {
  return _ContractorProfile.fromJson(json);
}

/// @nodoc
mixin _$ContractorProfile {
  String get contractorId => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<String> get specialties => throw _privateConstructorUsedError;
  List<String> get certifications => throw _privateConstructorUsedError;
  String get experienceYears => throw _privateConstructorUsedError;
  String get serviceArea => throw _privateConstructorUsedError;
  int get minProjectBudgetLkr => throw _privateConstructorUsedError;
  List<String> get portfolioProjectIds => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get acceptsRemoteConsultation => throw _privateConstructorUsedError;
  String? get licenseNumber => throw _privateConstructorUsedError;
  DateTime? get licenseExpiry => throw _privateConstructorUsedError;
  Map<String, dynamic>? get equipment => throw _privateConstructorUsedError;
  List<String> get pastClientReferences => throw _privateConstructorUsedError;
  int get responseTimeMinutes => throw _privateConstructorUsedError;

  /// Serializes this ContractorProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractorProfileCopyWith<ContractorProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorProfileCopyWith<$Res> {
  factory $ContractorProfileCopyWith(
    ContractorProfile value,
    $Res Function(ContractorProfile) then,
  ) = _$ContractorProfileCopyWithImpl<$Res, ContractorProfile>;
  @useResult
  $Res call({
    String contractorId,
    String bio,
    List<String> specialties,
    List<String> certifications,
    String experienceYears,
    String serviceArea,
    int minProjectBudgetLkr,
    List<String> portfolioProjectIds,
    bool isVerified,
    bool acceptsRemoteConsultation,
    String? licenseNumber,
    DateTime? licenseExpiry,
    Map<String, dynamic>? equipment,
    List<String> pastClientReferences,
    int responseTimeMinutes,
  });
}

/// @nodoc
class _$ContractorProfileCopyWithImpl<$Res, $Val extends ContractorProfile>
    implements $ContractorProfileCopyWith<$Res> {
  _$ContractorProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractorId = null,
    Object? bio = null,
    Object? specialties = null,
    Object? certifications = null,
    Object? experienceYears = null,
    Object? serviceArea = null,
    Object? minProjectBudgetLkr = null,
    Object? portfolioProjectIds = null,
    Object? isVerified = null,
    Object? acceptsRemoteConsultation = null,
    Object? licenseNumber = freezed,
    Object? licenseExpiry = freezed,
    Object? equipment = freezed,
    Object? pastClientReferences = null,
    Object? responseTimeMinutes = null,
  }) {
    return _then(
      _value.copyWith(
            contractorId: null == contractorId
                ? _value.contractorId
                : contractorId // ignore: cast_nullable_to_non_nullable
                      as String,
            bio: null == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String,
            specialties: null == specialties
                ? _value.specialties
                : specialties // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            certifications: null == certifications
                ? _value.certifications
                : certifications // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            experienceYears: null == experienceYears
                ? _value.experienceYears
                : experienceYears // ignore: cast_nullable_to_non_nullable
                      as String,
            serviceArea: null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                      as String,
            minProjectBudgetLkr: null == minProjectBudgetLkr
                ? _value.minProjectBudgetLkr
                : minProjectBudgetLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            portfolioProjectIds: null == portfolioProjectIds
                ? _value.portfolioProjectIds
                : portfolioProjectIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            acceptsRemoteConsultation: null == acceptsRemoteConsultation
                ? _value.acceptsRemoteConsultation
                : acceptsRemoteConsultation // ignore: cast_nullable_to_non_nullable
                      as bool,
            licenseNumber: freezed == licenseNumber
                ? _value.licenseNumber
                : licenseNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            licenseExpiry: freezed == licenseExpiry
                ? _value.licenseExpiry
                : licenseExpiry // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            equipment: freezed == equipment
                ? _value.equipment
                : equipment // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            pastClientReferences: null == pastClientReferences
                ? _value.pastClientReferences
                : pastClientReferences // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            responseTimeMinutes: null == responseTimeMinutes
                ? _value.responseTimeMinutes
                : responseTimeMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContractorProfileImplCopyWith<$Res>
    implements $ContractorProfileCopyWith<$Res> {
  factory _$$ContractorProfileImplCopyWith(
    _$ContractorProfileImpl value,
    $Res Function(_$ContractorProfileImpl) then,
  ) = __$$ContractorProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String contractorId,
    String bio,
    List<String> specialties,
    List<String> certifications,
    String experienceYears,
    String serviceArea,
    int minProjectBudgetLkr,
    List<String> portfolioProjectIds,
    bool isVerified,
    bool acceptsRemoteConsultation,
    String? licenseNumber,
    DateTime? licenseExpiry,
    Map<String, dynamic>? equipment,
    List<String> pastClientReferences,
    int responseTimeMinutes,
  });
}

/// @nodoc
class __$$ContractorProfileImplCopyWithImpl<$Res>
    extends _$ContractorProfileCopyWithImpl<$Res, _$ContractorProfileImpl>
    implements _$$ContractorProfileImplCopyWith<$Res> {
  __$$ContractorProfileImplCopyWithImpl(
    _$ContractorProfileImpl _value,
    $Res Function(_$ContractorProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContractorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractorId = null,
    Object? bio = null,
    Object? specialties = null,
    Object? certifications = null,
    Object? experienceYears = null,
    Object? serviceArea = null,
    Object? minProjectBudgetLkr = null,
    Object? portfolioProjectIds = null,
    Object? isVerified = null,
    Object? acceptsRemoteConsultation = null,
    Object? licenseNumber = freezed,
    Object? licenseExpiry = freezed,
    Object? equipment = freezed,
    Object? pastClientReferences = null,
    Object? responseTimeMinutes = null,
  }) {
    return _then(
      _$ContractorProfileImpl(
        contractorId: null == contractorId
            ? _value.contractorId
            : contractorId // ignore: cast_nullable_to_non_nullable
                  as String,
        bio: null == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String,
        specialties: null == specialties
            ? _value._specialties
            : specialties // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        certifications: null == certifications
            ? _value._certifications
            : certifications // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        experienceYears: null == experienceYears
            ? _value.experienceYears
            : experienceYears // ignore: cast_nullable_to_non_nullable
                  as String,
        serviceArea: null == serviceArea
            ? _value.serviceArea
            : serviceArea // ignore: cast_nullable_to_non_nullable
                  as String,
        minProjectBudgetLkr: null == minProjectBudgetLkr
            ? _value.minProjectBudgetLkr
            : minProjectBudgetLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        portfolioProjectIds: null == portfolioProjectIds
            ? _value._portfolioProjectIds
            : portfolioProjectIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        acceptsRemoteConsultation: null == acceptsRemoteConsultation
            ? _value.acceptsRemoteConsultation
            : acceptsRemoteConsultation // ignore: cast_nullable_to_non_nullable
                  as bool,
        licenseNumber: freezed == licenseNumber
            ? _value.licenseNumber
            : licenseNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        licenseExpiry: freezed == licenseExpiry
            ? _value.licenseExpiry
            : licenseExpiry // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        equipment: freezed == equipment
            ? _value._equipment
            : equipment // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        pastClientReferences: null == pastClientReferences
            ? _value._pastClientReferences
            : pastClientReferences // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        responseTimeMinutes: null == responseTimeMinutes
            ? _value.responseTimeMinutes
            : responseTimeMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorProfileImpl implements _ContractorProfile {
  const _$ContractorProfileImpl({
    required this.contractorId,
    required this.bio,
    required final List<String> specialties,
    required final List<String> certifications,
    required this.experienceYears,
    required this.serviceArea,
    required this.minProjectBudgetLkr,
    required final List<String> portfolioProjectIds,
    required this.isVerified,
    required this.acceptsRemoteConsultation,
    required this.licenseNumber,
    required this.licenseExpiry,
    required final Map<String, dynamic>? equipment,
    required final List<String> pastClientReferences,
    required this.responseTimeMinutes,
  }) : _specialties = specialties,
       _certifications = certifications,
       _portfolioProjectIds = portfolioProjectIds,
       _equipment = equipment,
       _pastClientReferences = pastClientReferences;

  factory _$ContractorProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractorProfileImplFromJson(json);

  @override
  final String contractorId;
  @override
  final String bio;
  final List<String> _specialties;
  @override
  List<String> get specialties {
    if (_specialties is EqualUnmodifiableListView) return _specialties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialties);
  }

  final List<String> _certifications;
  @override
  List<String> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  @override
  final String experienceYears;
  @override
  final String serviceArea;
  @override
  final int minProjectBudgetLkr;
  final List<String> _portfolioProjectIds;
  @override
  List<String> get portfolioProjectIds {
    if (_portfolioProjectIds is EqualUnmodifiableListView)
      return _portfolioProjectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_portfolioProjectIds);
  }

  @override
  final bool isVerified;
  @override
  final bool acceptsRemoteConsultation;
  @override
  final String? licenseNumber;
  @override
  final DateTime? licenseExpiry;
  final Map<String, dynamic>? _equipment;
  @override
  Map<String, dynamic>? get equipment {
    final value = _equipment;
    if (value == null) return null;
    if (_equipment is EqualUnmodifiableMapView) return _equipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String> _pastClientReferences;
  @override
  List<String> get pastClientReferences {
    if (_pastClientReferences is EqualUnmodifiableListView)
      return _pastClientReferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastClientReferences);
  }

  @override
  final int responseTimeMinutes;

  @override
  String toString() {
    return 'ContractorProfile(contractorId: $contractorId, bio: $bio, specialties: $specialties, certifications: $certifications, experienceYears: $experienceYears, serviceArea: $serviceArea, minProjectBudgetLkr: $minProjectBudgetLkr, portfolioProjectIds: $portfolioProjectIds, isVerified: $isVerified, acceptsRemoteConsultation: $acceptsRemoteConsultation, licenseNumber: $licenseNumber, licenseExpiry: $licenseExpiry, equipment: $equipment, pastClientReferences: $pastClientReferences, responseTimeMinutes: $responseTimeMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractorProfileImpl &&
            (identical(other.contractorId, contractorId) ||
                other.contractorId == contractorId) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality().equals(
              other._specialties,
              _specialties,
            ) &&
            const DeepCollectionEquality().equals(
              other._certifications,
              _certifications,
            ) &&
            (identical(other.experienceYears, experienceYears) ||
                other.experienceYears == experienceYears) &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            (identical(other.minProjectBudgetLkr, minProjectBudgetLkr) ||
                other.minProjectBudgetLkr == minProjectBudgetLkr) &&
            const DeepCollectionEquality().equals(
              other._portfolioProjectIds,
              _portfolioProjectIds,
            ) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(
                  other.acceptsRemoteConsultation,
                  acceptsRemoteConsultation,
                ) ||
                other.acceptsRemoteConsultation == acceptsRemoteConsultation) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.licenseExpiry, licenseExpiry) ||
                other.licenseExpiry == licenseExpiry) &&
            const DeepCollectionEquality().equals(
              other._equipment,
              _equipment,
            ) &&
            const DeepCollectionEquality().equals(
              other._pastClientReferences,
              _pastClientReferences,
            ) &&
            (identical(other.responseTimeMinutes, responseTimeMinutes) ||
                other.responseTimeMinutes == responseTimeMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    contractorId,
    bio,
    const DeepCollectionEquality().hash(_specialties),
    const DeepCollectionEquality().hash(_certifications),
    experienceYears,
    serviceArea,
    minProjectBudgetLkr,
    const DeepCollectionEquality().hash(_portfolioProjectIds),
    isVerified,
    acceptsRemoteConsultation,
    licenseNumber,
    licenseExpiry,
    const DeepCollectionEquality().hash(_equipment),
    const DeepCollectionEquality().hash(_pastClientReferences),
    responseTimeMinutes,
  );

  /// Create a copy of ContractorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorProfileImplCopyWith<_$ContractorProfileImpl> get copyWith =>
      __$$ContractorProfileImplCopyWithImpl<_$ContractorProfileImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorProfileImplToJson(this);
  }
}

abstract class _ContractorProfile implements ContractorProfile {
  const factory _ContractorProfile({
    required final String contractorId,
    required final String bio,
    required final List<String> specialties,
    required final List<String> certifications,
    required final String experienceYears,
    required final String serviceArea,
    required final int minProjectBudgetLkr,
    required final List<String> portfolioProjectIds,
    required final bool isVerified,
    required final bool acceptsRemoteConsultation,
    required final String? licenseNumber,
    required final DateTime? licenseExpiry,
    required final Map<String, dynamic>? equipment,
    required final List<String> pastClientReferences,
    required final int responseTimeMinutes,
  }) = _$ContractorProfileImpl;

  factory _ContractorProfile.fromJson(Map<String, dynamic> json) =
      _$ContractorProfileImpl.fromJson;

  @override
  String get contractorId;
  @override
  String get bio;
  @override
  List<String> get specialties;
  @override
  List<String> get certifications;
  @override
  String get experienceYears;
  @override
  String get serviceArea;
  @override
  int get minProjectBudgetLkr;
  @override
  List<String> get portfolioProjectIds;
  @override
  bool get isVerified;
  @override
  bool get acceptsRemoteConsultation;
  @override
  String? get licenseNumber;
  @override
  DateTime? get licenseExpiry;
  @override
  Map<String, dynamic>? get equipment;
  @override
  List<String> get pastClientReferences;
  @override
  int get responseTimeMinutes;

  /// Create a copy of ContractorProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractorProfileImplCopyWith<_$ContractorProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PortfolioProject _$PortfolioProjectFromJson(Map<String, dynamic> json) {
  return _PortfolioProject.fromJson(json);
}

/// @nodoc
mixin _$PortfolioProject {
  String get portfolioId => throw _privateConstructorUsedError;
  String get contractorId => throw _privateConstructorUsedError;
  String get projectTitle => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get beforePhotoUrls => throw _privateConstructorUsedError;
  List<String> get afterPhotoUrls => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  DateTime get completedDate => throw _privateConstructorUsedError;
  int get budgetIkr => throw _privateConstructorUsedError;
  int get durationDays => throw _privateConstructorUsedError;
  String? get clientTestimonial => throw _privateConstructorUsedError;
  double get clientRating => throw _privateConstructorUsedError;

  /// Serializes this PortfolioProject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PortfolioProject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PortfolioProjectCopyWith<PortfolioProject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioProjectCopyWith<$Res> {
  factory $PortfolioProjectCopyWith(
    PortfolioProject value,
    $Res Function(PortfolioProject) then,
  ) = _$PortfolioProjectCopyWithImpl<$Res, PortfolioProject>;
  @useResult
  $Res call({
    String portfolioId,
    String contractorId,
    String projectTitle,
    String description,
    List<String> beforePhotoUrls,
    List<String> afterPhotoUrls,
    String? videoUrl,
    DateTime completedDate,
    int budgetIkr,
    int durationDays,
    String? clientTestimonial,
    double clientRating,
  });
}

/// @nodoc
class _$PortfolioProjectCopyWithImpl<$Res, $Val extends PortfolioProject>
    implements $PortfolioProjectCopyWith<$Res> {
  _$PortfolioProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PortfolioProject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolioId = null,
    Object? contractorId = null,
    Object? projectTitle = null,
    Object? description = null,
    Object? beforePhotoUrls = null,
    Object? afterPhotoUrls = null,
    Object? videoUrl = freezed,
    Object? completedDate = null,
    Object? budgetIkr = null,
    Object? durationDays = null,
    Object? clientTestimonial = freezed,
    Object? clientRating = null,
  }) {
    return _then(
      _value.copyWith(
            portfolioId: null == portfolioId
                ? _value.portfolioId
                : portfolioId // ignore: cast_nullable_to_non_nullable
                      as String,
            contractorId: null == contractorId
                ? _value.contractorId
                : contractorId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectTitle: null == projectTitle
                ? _value.projectTitle
                : projectTitle // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            beforePhotoUrls: null == beforePhotoUrls
                ? _value.beforePhotoUrls
                : beforePhotoUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            afterPhotoUrls: null == afterPhotoUrls
                ? _value.afterPhotoUrls
                : afterPhotoUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            videoUrl: freezed == videoUrl
                ? _value.videoUrl
                : videoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            completedDate: null == completedDate
                ? _value.completedDate
                : completedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            budgetIkr: null == budgetIkr
                ? _value.budgetIkr
                : budgetIkr // ignore: cast_nullable_to_non_nullable
                      as int,
            durationDays: null == durationDays
                ? _value.durationDays
                : durationDays // ignore: cast_nullable_to_non_nullable
                      as int,
            clientTestimonial: freezed == clientTestimonial
                ? _value.clientTestimonial
                : clientTestimonial // ignore: cast_nullable_to_non_nullable
                      as String?,
            clientRating: null == clientRating
                ? _value.clientRating
                : clientRating // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PortfolioProjectImplCopyWith<$Res>
    implements $PortfolioProjectCopyWith<$Res> {
  factory _$$PortfolioProjectImplCopyWith(
    _$PortfolioProjectImpl value,
    $Res Function(_$PortfolioProjectImpl) then,
  ) = __$$PortfolioProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String portfolioId,
    String contractorId,
    String projectTitle,
    String description,
    List<String> beforePhotoUrls,
    List<String> afterPhotoUrls,
    String? videoUrl,
    DateTime completedDate,
    int budgetIkr,
    int durationDays,
    String? clientTestimonial,
    double clientRating,
  });
}

/// @nodoc
class __$$PortfolioProjectImplCopyWithImpl<$Res>
    extends _$PortfolioProjectCopyWithImpl<$Res, _$PortfolioProjectImpl>
    implements _$$PortfolioProjectImplCopyWith<$Res> {
  __$$PortfolioProjectImplCopyWithImpl(
    _$PortfolioProjectImpl _value,
    $Res Function(_$PortfolioProjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PortfolioProject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolioId = null,
    Object? contractorId = null,
    Object? projectTitle = null,
    Object? description = null,
    Object? beforePhotoUrls = null,
    Object? afterPhotoUrls = null,
    Object? videoUrl = freezed,
    Object? completedDate = null,
    Object? budgetIkr = null,
    Object? durationDays = null,
    Object? clientTestimonial = freezed,
    Object? clientRating = null,
  }) {
    return _then(
      _$PortfolioProjectImpl(
        portfolioId: null == portfolioId
            ? _value.portfolioId
            : portfolioId // ignore: cast_nullable_to_non_nullable
                  as String,
        contractorId: null == contractorId
            ? _value.contractorId
            : contractorId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectTitle: null == projectTitle
            ? _value.projectTitle
            : projectTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        beforePhotoUrls: null == beforePhotoUrls
            ? _value._beforePhotoUrls
            : beforePhotoUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        afterPhotoUrls: null == afterPhotoUrls
            ? _value._afterPhotoUrls
            : afterPhotoUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        videoUrl: freezed == videoUrl
            ? _value.videoUrl
            : videoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        completedDate: null == completedDate
            ? _value.completedDate
            : completedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        budgetIkr: null == budgetIkr
            ? _value.budgetIkr
            : budgetIkr // ignore: cast_nullable_to_non_nullable
                  as int,
        durationDays: null == durationDays
            ? _value.durationDays
            : durationDays // ignore: cast_nullable_to_non_nullable
                  as int,
        clientTestimonial: freezed == clientTestimonial
            ? _value.clientTestimonial
            : clientTestimonial // ignore: cast_nullable_to_non_nullable
                  as String?,
        clientRating: null == clientRating
            ? _value.clientRating
            : clientRating // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioProjectImpl implements _PortfolioProject {
  const _$PortfolioProjectImpl({
    required this.portfolioId,
    required this.contractorId,
    required this.projectTitle,
    required this.description,
    required final List<String> beforePhotoUrls,
    required final List<String> afterPhotoUrls,
    required this.videoUrl,
    required this.completedDate,
    required this.budgetIkr,
    required this.durationDays,
    required this.clientTestimonial,
    required this.clientRating,
  }) : _beforePhotoUrls = beforePhotoUrls,
       _afterPhotoUrls = afterPhotoUrls;

  factory _$PortfolioProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioProjectImplFromJson(json);

  @override
  final String portfolioId;
  @override
  final String contractorId;
  @override
  final String projectTitle;
  @override
  final String description;
  final List<String> _beforePhotoUrls;
  @override
  List<String> get beforePhotoUrls {
    if (_beforePhotoUrls is EqualUnmodifiableListView) return _beforePhotoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beforePhotoUrls);
  }

  final List<String> _afterPhotoUrls;
  @override
  List<String> get afterPhotoUrls {
    if (_afterPhotoUrls is EqualUnmodifiableListView) return _afterPhotoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_afterPhotoUrls);
  }

  @override
  final String? videoUrl;
  @override
  final DateTime completedDate;
  @override
  final int budgetIkr;
  @override
  final int durationDays;
  @override
  final String? clientTestimonial;
  @override
  final double clientRating;

  @override
  String toString() {
    return 'PortfolioProject(portfolioId: $portfolioId, contractorId: $contractorId, projectTitle: $projectTitle, description: $description, beforePhotoUrls: $beforePhotoUrls, afterPhotoUrls: $afterPhotoUrls, videoUrl: $videoUrl, completedDate: $completedDate, budgetIkr: $budgetIkr, durationDays: $durationDays, clientTestimonial: $clientTestimonial, clientRating: $clientRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioProjectImpl &&
            (identical(other.portfolioId, portfolioId) ||
                other.portfolioId == portfolioId) &&
            (identical(other.contractorId, contractorId) ||
                other.contractorId == contractorId) &&
            (identical(other.projectTitle, projectTitle) ||
                other.projectTitle == projectTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._beforePhotoUrls,
              _beforePhotoUrls,
            ) &&
            const DeepCollectionEquality().equals(
              other._afterPhotoUrls,
              _afterPhotoUrls,
            ) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.budgetIkr, budgetIkr) ||
                other.budgetIkr == budgetIkr) &&
            (identical(other.durationDays, durationDays) ||
                other.durationDays == durationDays) &&
            (identical(other.clientTestimonial, clientTestimonial) ||
                other.clientTestimonial == clientTestimonial) &&
            (identical(other.clientRating, clientRating) ||
                other.clientRating == clientRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    portfolioId,
    contractorId,
    projectTitle,
    description,
    const DeepCollectionEquality().hash(_beforePhotoUrls),
    const DeepCollectionEquality().hash(_afterPhotoUrls),
    videoUrl,
    completedDate,
    budgetIkr,
    durationDays,
    clientTestimonial,
    clientRating,
  );

  /// Create a copy of PortfolioProject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioProjectImplCopyWith<_$PortfolioProjectImpl> get copyWith =>
      __$$PortfolioProjectImplCopyWithImpl<_$PortfolioProjectImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioProjectImplToJson(this);
  }
}

abstract class _PortfolioProject implements PortfolioProject {
  const factory _PortfolioProject({
    required final String portfolioId,
    required final String contractorId,
    required final String projectTitle,
    required final String description,
    required final List<String> beforePhotoUrls,
    required final List<String> afterPhotoUrls,
    required final String? videoUrl,
    required final DateTime completedDate,
    required final int budgetIkr,
    required final int durationDays,
    required final String? clientTestimonial,
    required final double clientRating,
  }) = _$PortfolioProjectImpl;

  factory _PortfolioProject.fromJson(Map<String, dynamic> json) =
      _$PortfolioProjectImpl.fromJson;

  @override
  String get portfolioId;
  @override
  String get contractorId;
  @override
  String get projectTitle;
  @override
  String get description;
  @override
  List<String> get beforePhotoUrls;
  @override
  List<String> get afterPhotoUrls;
  @override
  String? get videoUrl;
  @override
  DateTime get completedDate;
  @override
  int get budgetIkr;
  @override
  int get durationDays;
  @override
  String? get clientTestimonial;
  @override
  double get clientRating;

  /// Create a copy of PortfolioProject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PortfolioProjectImplCopyWith<_$PortfolioProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
