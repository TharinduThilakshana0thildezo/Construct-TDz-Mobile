// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get projectId => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ProjectType get projectType => throw _privateConstructorUsedError;
  ProjectStatus get status => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  int get budgetLkr => throw _privateConstructorUsedError;
  int get timelineMonths => throw _privateConstructorUsedError;
  DateTime get postedAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get completionDeadline =>
      throw _privateConstructorUsedError; // Budget & Payment
  int? get actualBudgetSpent => throw _privateConstructorUsedError;
  double get budgetVariance =>
      throw _privateConstructorUsedError; // Progress & Tracking
  double get progressPercent => throw _privateConstructorUsedError;
  List<ProjectMilestone> get milestones =>
      throw _privateConstructorUsedError; // Content
  List<String> get attachmentUrls => throw _privateConstructorUsedError;
  List<String> get skillsRequired => throw _privateConstructorUsedError;
  String? get requiredCertifications =>
      throw _privateConstructorUsedError; // Advanced Features
  ProjectMetrics? get metrics => throw _privateConstructorUsedError;
  List<ProjectActivity> get activities => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customFields => throw _privateConstructorUsedError;

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call({
    String projectId,
    String clientId,
    String title,
    String description,
    ProjectType projectType,
    ProjectStatus status,
    String district,
    int budgetLkr,
    int timelineMonths,
    DateTime postedAt,
    DateTime? updatedAt,
    DateTime? completionDeadline,
    int? actualBudgetSpent,
    double budgetVariance,
    double progressPercent,
    List<ProjectMilestone> milestones,
    List<String> attachmentUrls,
    List<String> skillsRequired,
    String? requiredCertifications,
    ProjectMetrics? metrics,
    List<ProjectActivity> activities,
    Map<String, dynamic>? customFields,
  });

  $ProjectMetricsCopyWith<$Res>? get metrics;
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? clientId = null,
    Object? title = null,
    Object? description = null,
    Object? projectType = null,
    Object? status = null,
    Object? district = null,
    Object? budgetLkr = null,
    Object? timelineMonths = null,
    Object? postedAt = null,
    Object? updatedAt = freezed,
    Object? completionDeadline = freezed,
    Object? actualBudgetSpent = freezed,
    Object? budgetVariance = null,
    Object? progressPercent = null,
    Object? milestones = null,
    Object? attachmentUrls = null,
    Object? skillsRequired = null,
    Object? requiredCertifications = freezed,
    Object? metrics = freezed,
    Object? activities = null,
    Object? customFields = freezed,
  }) {
    return _then(
      _value.copyWith(
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            clientId: null == clientId
                ? _value.clientId
                : clientId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            projectType: null == projectType
                ? _value.projectType
                : projectType // ignore: cast_nullable_to_non_nullable
                      as ProjectType,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ProjectStatus,
            district: null == district
                ? _value.district
                : district // ignore: cast_nullable_to_non_nullable
                      as String,
            budgetLkr: null == budgetLkr
                ? _value.budgetLkr
                : budgetLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            timelineMonths: null == timelineMonths
                ? _value.timelineMonths
                : timelineMonths // ignore: cast_nullable_to_non_nullable
                      as int,
            postedAt: null == postedAt
                ? _value.postedAt
                : postedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            completionDeadline: freezed == completionDeadline
                ? _value.completionDeadline
                : completionDeadline // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            actualBudgetSpent: freezed == actualBudgetSpent
                ? _value.actualBudgetSpent
                : actualBudgetSpent // ignore: cast_nullable_to_non_nullable
                      as int?,
            budgetVariance: null == budgetVariance
                ? _value.budgetVariance
                : budgetVariance // ignore: cast_nullable_to_non_nullable
                      as double,
            progressPercent: null == progressPercent
                ? _value.progressPercent
                : progressPercent // ignore: cast_nullable_to_non_nullable
                      as double,
            milestones: null == milestones
                ? _value.milestones
                : milestones // ignore: cast_nullable_to_non_nullable
                      as List<ProjectMilestone>,
            attachmentUrls: null == attachmentUrls
                ? _value.attachmentUrls
                : attachmentUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            skillsRequired: null == skillsRequired
                ? _value.skillsRequired
                : skillsRequired // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            requiredCertifications: freezed == requiredCertifications
                ? _value.requiredCertifications
                : requiredCertifications // ignore: cast_nullable_to_non_nullable
                      as String?,
            metrics: freezed == metrics
                ? _value.metrics
                : metrics // ignore: cast_nullable_to_non_nullable
                      as ProjectMetrics?,
            activities: null == activities
                ? _value.activities
                : activities // ignore: cast_nullable_to_non_nullable
                      as List<ProjectActivity>,
            customFields: freezed == customFields
                ? _value.customFields
                : customFields // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectMetricsCopyWith<$Res>? get metrics {
    if (_value.metrics == null) {
      return null;
    }

    return $ProjectMetricsCopyWith<$Res>(_value.metrics!, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
    _$ProjectImpl value,
    $Res Function(_$ProjectImpl) then,
  ) = __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String projectId,
    String clientId,
    String title,
    String description,
    ProjectType projectType,
    ProjectStatus status,
    String district,
    int budgetLkr,
    int timelineMonths,
    DateTime postedAt,
    DateTime? updatedAt,
    DateTime? completionDeadline,
    int? actualBudgetSpent,
    double budgetVariance,
    double progressPercent,
    List<ProjectMilestone> milestones,
    List<String> attachmentUrls,
    List<String> skillsRequired,
    String? requiredCertifications,
    ProjectMetrics? metrics,
    List<ProjectActivity> activities,
    Map<String, dynamic>? customFields,
  });

  @override
  $ProjectMetricsCopyWith<$Res>? get metrics;
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
    _$ProjectImpl _value,
    $Res Function(_$ProjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? clientId = null,
    Object? title = null,
    Object? description = null,
    Object? projectType = null,
    Object? status = null,
    Object? district = null,
    Object? budgetLkr = null,
    Object? timelineMonths = null,
    Object? postedAt = null,
    Object? updatedAt = freezed,
    Object? completionDeadline = freezed,
    Object? actualBudgetSpent = freezed,
    Object? budgetVariance = null,
    Object? progressPercent = null,
    Object? milestones = null,
    Object? attachmentUrls = null,
    Object? skillsRequired = null,
    Object? requiredCertifications = freezed,
    Object? metrics = freezed,
    Object? activities = null,
    Object? customFields = freezed,
  }) {
    return _then(
      _$ProjectImpl(
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        clientId: null == clientId
            ? _value.clientId
            : clientId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        projectType: null == projectType
            ? _value.projectType
            : projectType // ignore: cast_nullable_to_non_nullable
                  as ProjectType,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ProjectStatus,
        district: null == district
            ? _value.district
            : district // ignore: cast_nullable_to_non_nullable
                  as String,
        budgetLkr: null == budgetLkr
            ? _value.budgetLkr
            : budgetLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        timelineMonths: null == timelineMonths
            ? _value.timelineMonths
            : timelineMonths // ignore: cast_nullable_to_non_nullable
                  as int,
        postedAt: null == postedAt
            ? _value.postedAt
            : postedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        completionDeadline: freezed == completionDeadline
            ? _value.completionDeadline
            : completionDeadline // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        actualBudgetSpent: freezed == actualBudgetSpent
            ? _value.actualBudgetSpent
            : actualBudgetSpent // ignore: cast_nullable_to_non_nullable
                  as int?,
        budgetVariance: null == budgetVariance
            ? _value.budgetVariance
            : budgetVariance // ignore: cast_nullable_to_non_nullable
                  as double,
        progressPercent: null == progressPercent
            ? _value.progressPercent
            : progressPercent // ignore: cast_nullable_to_non_nullable
                  as double,
        milestones: null == milestones
            ? _value._milestones
            : milestones // ignore: cast_nullable_to_non_nullable
                  as List<ProjectMilestone>,
        attachmentUrls: null == attachmentUrls
            ? _value._attachmentUrls
            : attachmentUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        skillsRequired: null == skillsRequired
            ? _value._skillsRequired
            : skillsRequired // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        requiredCertifications: freezed == requiredCertifications
            ? _value.requiredCertifications
            : requiredCertifications // ignore: cast_nullable_to_non_nullable
                  as String?,
        metrics: freezed == metrics
            ? _value.metrics
            : metrics // ignore: cast_nullable_to_non_nullable
                  as ProjectMetrics?,
        activities: null == activities
            ? _value._activities
            : activities // ignore: cast_nullable_to_non_nullable
                  as List<ProjectActivity>,
        customFields: freezed == customFields
            ? _value._customFields
            : customFields // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl({
    required this.projectId,
    required this.clientId,
    required this.title,
    required this.description,
    required this.projectType,
    required this.status,
    required this.district,
    required this.budgetLkr,
    required this.timelineMonths,
    required this.postedAt,
    required this.updatedAt,
    required this.completionDeadline,
    required this.actualBudgetSpent,
    required this.budgetVariance,
    required this.progressPercent,
    required final List<ProjectMilestone> milestones,
    required final List<String> attachmentUrls,
    required final List<String> skillsRequired,
    required this.requiredCertifications,
    required this.metrics,
    required final List<ProjectActivity> activities,
    required final Map<String, dynamic>? customFields,
  }) : _milestones = milestones,
       _attachmentUrls = attachmentUrls,
       _skillsRequired = skillsRequired,
       _activities = activities,
       _customFields = customFields;

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String projectId;
  @override
  final String clientId;
  @override
  final String title;
  @override
  final String description;
  @override
  final ProjectType projectType;
  @override
  final ProjectStatus status;
  @override
  final String district;
  @override
  final int budgetLkr;
  @override
  final int timelineMonths;
  @override
  final DateTime postedAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? completionDeadline;
  // Budget & Payment
  @override
  final int? actualBudgetSpent;
  @override
  final double budgetVariance;
  // Progress & Tracking
  @override
  final double progressPercent;
  final List<ProjectMilestone> _milestones;
  @override
  List<ProjectMilestone> get milestones {
    if (_milestones is EqualUnmodifiableListView) return _milestones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_milestones);
  }

  // Content
  final List<String> _attachmentUrls;
  // Content
  @override
  List<String> get attachmentUrls {
    if (_attachmentUrls is EqualUnmodifiableListView) return _attachmentUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachmentUrls);
  }

  final List<String> _skillsRequired;
  @override
  List<String> get skillsRequired {
    if (_skillsRequired is EqualUnmodifiableListView) return _skillsRequired;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skillsRequired);
  }

  @override
  final String? requiredCertifications;
  // Advanced Features
  @override
  final ProjectMetrics? metrics;
  final List<ProjectActivity> _activities;
  @override
  List<ProjectActivity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  final Map<String, dynamic>? _customFields;
  @override
  Map<String, dynamic>? get customFields {
    final value = _customFields;
    if (value == null) return null;
    if (_customFields is EqualUnmodifiableMapView) return _customFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Project(projectId: $projectId, clientId: $clientId, title: $title, description: $description, projectType: $projectType, status: $status, district: $district, budgetLkr: $budgetLkr, timelineMonths: $timelineMonths, postedAt: $postedAt, updatedAt: $updatedAt, completionDeadline: $completionDeadline, actualBudgetSpent: $actualBudgetSpent, budgetVariance: $budgetVariance, progressPercent: $progressPercent, milestones: $milestones, attachmentUrls: $attachmentUrls, skillsRequired: $skillsRequired, requiredCertifications: $requiredCertifications, metrics: $metrics, activities: $activities, customFields: $customFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.projectType, projectType) ||
                other.projectType == projectType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.budgetLkr, budgetLkr) ||
                other.budgetLkr == budgetLkr) &&
            (identical(other.timelineMonths, timelineMonths) ||
                other.timelineMonths == timelineMonths) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completionDeadline, completionDeadline) ||
                other.completionDeadline == completionDeadline) &&
            (identical(other.actualBudgetSpent, actualBudgetSpent) ||
                other.actualBudgetSpent == actualBudgetSpent) &&
            (identical(other.budgetVariance, budgetVariance) ||
                other.budgetVariance == budgetVariance) &&
            (identical(other.progressPercent, progressPercent) ||
                other.progressPercent == progressPercent) &&
            const DeepCollectionEquality().equals(
              other._milestones,
              _milestones,
            ) &&
            const DeepCollectionEquality().equals(
              other._attachmentUrls,
              _attachmentUrls,
            ) &&
            const DeepCollectionEquality().equals(
              other._skillsRequired,
              _skillsRequired,
            ) &&
            (identical(other.requiredCertifications, requiredCertifications) ||
                other.requiredCertifications == requiredCertifications) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            const DeepCollectionEquality().equals(
              other._activities,
              _activities,
            ) &&
            const DeepCollectionEquality().equals(
              other._customFields,
              _customFields,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    projectId,
    clientId,
    title,
    description,
    projectType,
    status,
    district,
    budgetLkr,
    timelineMonths,
    postedAt,
    updatedAt,
    completionDeadline,
    actualBudgetSpent,
    budgetVariance,
    progressPercent,
    const DeepCollectionEquality().hash(_milestones),
    const DeepCollectionEquality().hash(_attachmentUrls),
    const DeepCollectionEquality().hash(_skillsRequired),
    requiredCertifications,
    metrics,
    const DeepCollectionEquality().hash(_activities),
    const DeepCollectionEquality().hash(_customFields),
  ]);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(this);
  }
}

abstract class _Project implements Project {
  const factory _Project({
    required final String projectId,
    required final String clientId,
    required final String title,
    required final String description,
    required final ProjectType projectType,
    required final ProjectStatus status,
    required final String district,
    required final int budgetLkr,
    required final int timelineMonths,
    required final DateTime postedAt,
    required final DateTime? updatedAt,
    required final DateTime? completionDeadline,
    required final int? actualBudgetSpent,
    required final double budgetVariance,
    required final double progressPercent,
    required final List<ProjectMilestone> milestones,
    required final List<String> attachmentUrls,
    required final List<String> skillsRequired,
    required final String? requiredCertifications,
    required final ProjectMetrics? metrics,
    required final List<ProjectActivity> activities,
    required final Map<String, dynamic>? customFields,
  }) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get projectId;
  @override
  String get clientId;
  @override
  String get title;
  @override
  String get description;
  @override
  ProjectType get projectType;
  @override
  ProjectStatus get status;
  @override
  String get district;
  @override
  int get budgetLkr;
  @override
  int get timelineMonths;
  @override
  DateTime get postedAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get completionDeadline; // Budget & Payment
  @override
  int? get actualBudgetSpent;
  @override
  double get budgetVariance; // Progress & Tracking
  @override
  double get progressPercent;
  @override
  List<ProjectMilestone> get milestones; // Content
  @override
  List<String> get attachmentUrls;
  @override
  List<String> get skillsRequired;
  @override
  String? get requiredCertifications; // Advanced Features
  @override
  ProjectMetrics? get metrics;
  @override
  List<ProjectActivity> get activities;
  @override
  Map<String, dynamic>? get customFields;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectMilestone _$ProjectMilestoneFromJson(Map<String, dynamic> json) {
  return _ProjectMilestone.fromJson(json);
}

/// @nodoc
mixin _$ProjectMilestone {
  String get milestoneId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  int get budgetAllocation => throw _privateConstructorUsedError;
  double get completionPercent => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  List<String> get deliverables => throw _privateConstructorUsedError;

  /// Serializes this ProjectMilestone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectMilestone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectMilestoneCopyWith<ProjectMilestone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectMilestoneCopyWith<$Res> {
  factory $ProjectMilestoneCopyWith(
    ProjectMilestone value,
    $Res Function(ProjectMilestone) then,
  ) = _$ProjectMilestoneCopyWithImpl<$Res, ProjectMilestone>;
  @useResult
  $Res call({
    String milestoneId,
    String title,
    String description,
    DateTime dueDate,
    int budgetAllocation,
    double completionPercent,
    bool isCompleted,
    DateTime? completedAt,
    List<String> deliverables,
  });
}

/// @nodoc
class _$ProjectMilestoneCopyWithImpl<$Res, $Val extends ProjectMilestone>
    implements $ProjectMilestoneCopyWith<$Res> {
  _$ProjectMilestoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectMilestone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? milestoneId = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? budgetAllocation = null,
    Object? completionPercent = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? deliverables = null,
  }) {
    return _then(
      _value.copyWith(
            milestoneId: null == milestoneId
                ? _value.milestoneId
                : milestoneId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            dueDate: null == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            budgetAllocation: null == budgetAllocation
                ? _value.budgetAllocation
                : budgetAllocation // ignore: cast_nullable_to_non_nullable
                      as int,
            completionPercent: null == completionPercent
                ? _value.completionPercent
                : completionPercent // ignore: cast_nullable_to_non_nullable
                      as double,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            deliverables: null == deliverables
                ? _value.deliverables
                : deliverables // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectMilestoneImplCopyWith<$Res>
    implements $ProjectMilestoneCopyWith<$Res> {
  factory _$$ProjectMilestoneImplCopyWith(
    _$ProjectMilestoneImpl value,
    $Res Function(_$ProjectMilestoneImpl) then,
  ) = __$$ProjectMilestoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String milestoneId,
    String title,
    String description,
    DateTime dueDate,
    int budgetAllocation,
    double completionPercent,
    bool isCompleted,
    DateTime? completedAt,
    List<String> deliverables,
  });
}

/// @nodoc
class __$$ProjectMilestoneImplCopyWithImpl<$Res>
    extends _$ProjectMilestoneCopyWithImpl<$Res, _$ProjectMilestoneImpl>
    implements _$$ProjectMilestoneImplCopyWith<$Res> {
  __$$ProjectMilestoneImplCopyWithImpl(
    _$ProjectMilestoneImpl _value,
    $Res Function(_$ProjectMilestoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectMilestone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? milestoneId = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? budgetAllocation = null,
    Object? completionPercent = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? deliverables = null,
  }) {
    return _then(
      _$ProjectMilestoneImpl(
        milestoneId: null == milestoneId
            ? _value.milestoneId
            : milestoneId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        dueDate: null == dueDate
            ? _value.dueDate
            : dueDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        budgetAllocation: null == budgetAllocation
            ? _value.budgetAllocation
            : budgetAllocation // ignore: cast_nullable_to_non_nullable
                  as int,
        completionPercent: null == completionPercent
            ? _value.completionPercent
            : completionPercent // ignore: cast_nullable_to_non_nullable
                  as double,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        deliverables: null == deliverables
            ? _value._deliverables
            : deliverables // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectMilestoneImpl implements _ProjectMilestone {
  const _$ProjectMilestoneImpl({
    required this.milestoneId,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.budgetAllocation,
    required this.completionPercent,
    required this.isCompleted,
    required this.completedAt,
    required final List<String> deliverables,
  }) : _deliverables = deliverables;

  factory _$ProjectMilestoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectMilestoneImplFromJson(json);

  @override
  final String milestoneId;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime dueDate;
  @override
  final int budgetAllocation;
  @override
  final double completionPercent;
  @override
  final bool isCompleted;
  @override
  final DateTime? completedAt;
  final List<String> _deliverables;
  @override
  List<String> get deliverables {
    if (_deliverables is EqualUnmodifiableListView) return _deliverables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliverables);
  }

  @override
  String toString() {
    return 'ProjectMilestone(milestoneId: $milestoneId, title: $title, description: $description, dueDate: $dueDate, budgetAllocation: $budgetAllocation, completionPercent: $completionPercent, isCompleted: $isCompleted, completedAt: $completedAt, deliverables: $deliverables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectMilestoneImpl &&
            (identical(other.milestoneId, milestoneId) ||
                other.milestoneId == milestoneId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.budgetAllocation, budgetAllocation) ||
                other.budgetAllocation == budgetAllocation) &&
            (identical(other.completionPercent, completionPercent) ||
                other.completionPercent == completionPercent) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality().equals(
              other._deliverables,
              _deliverables,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    milestoneId,
    title,
    description,
    dueDate,
    budgetAllocation,
    completionPercent,
    isCompleted,
    completedAt,
    const DeepCollectionEquality().hash(_deliverables),
  );

  /// Create a copy of ProjectMilestone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectMilestoneImplCopyWith<_$ProjectMilestoneImpl> get copyWith =>
      __$$ProjectMilestoneImplCopyWithImpl<_$ProjectMilestoneImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectMilestoneImplToJson(this);
  }
}

abstract class _ProjectMilestone implements ProjectMilestone {
  const factory _ProjectMilestone({
    required final String milestoneId,
    required final String title,
    required final String description,
    required final DateTime dueDate,
    required final int budgetAllocation,
    required final double completionPercent,
    required final bool isCompleted,
    required final DateTime? completedAt,
    required final List<String> deliverables,
  }) = _$ProjectMilestoneImpl;

  factory _ProjectMilestone.fromJson(Map<String, dynamic> json) =
      _$ProjectMilestoneImpl.fromJson;

  @override
  String get milestoneId;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get dueDate;
  @override
  int get budgetAllocation;
  @override
  double get completionPercent;
  @override
  bool get isCompleted;
  @override
  DateTime? get completedAt;
  @override
  List<String> get deliverables;

  /// Create a copy of ProjectMilestone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectMilestoneImplCopyWith<_$ProjectMilestoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectMetrics _$ProjectMetricsFromJson(Map<String, dynamic> json) {
  return _ProjectMetrics.fromJson(json);
}

/// @nodoc
mixin _$ProjectMetrics {
  int get totalBidsReceived => throw _privateConstructorUsedError;
  int get acceptedBidsCount => throw _privateConstructorUsedError;
  double get avgBidPrice => throw _privateConstructorUsedError;
  double get highestBidPrice => throw _privateConstructorUsedError;
  double get lowestBidPrice => throw _privateConstructorUsedError;
  List<String> get topContractors => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  int get saveCount => throw _privateConstructorUsedError;
  DateTime? get predictedCompletionDate => throw _privateConstructorUsedError;
  double get successProbability => throw _privateConstructorUsedError;

  /// Serializes this ProjectMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectMetricsCopyWith<ProjectMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectMetricsCopyWith<$Res> {
  factory $ProjectMetricsCopyWith(
    ProjectMetrics value,
    $Res Function(ProjectMetrics) then,
  ) = _$ProjectMetricsCopyWithImpl<$Res, ProjectMetrics>;
  @useResult
  $Res call({
    int totalBidsReceived,
    int acceptedBidsCount,
    double avgBidPrice,
    double highestBidPrice,
    double lowestBidPrice,
    List<String> topContractors,
    int viewCount,
    int saveCount,
    DateTime? predictedCompletionDate,
    double successProbability,
  });
}

/// @nodoc
class _$ProjectMetricsCopyWithImpl<$Res, $Val extends ProjectMetrics>
    implements $ProjectMetricsCopyWith<$Res> {
  _$ProjectMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBidsReceived = null,
    Object? acceptedBidsCount = null,
    Object? avgBidPrice = null,
    Object? highestBidPrice = null,
    Object? lowestBidPrice = null,
    Object? topContractors = null,
    Object? viewCount = null,
    Object? saveCount = null,
    Object? predictedCompletionDate = freezed,
    Object? successProbability = null,
  }) {
    return _then(
      _value.copyWith(
            totalBidsReceived: null == totalBidsReceived
                ? _value.totalBidsReceived
                : totalBidsReceived // ignore: cast_nullable_to_non_nullable
                      as int,
            acceptedBidsCount: null == acceptedBidsCount
                ? _value.acceptedBidsCount
                : acceptedBidsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            avgBidPrice: null == avgBidPrice
                ? _value.avgBidPrice
                : avgBidPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            highestBidPrice: null == highestBidPrice
                ? _value.highestBidPrice
                : highestBidPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            lowestBidPrice: null == lowestBidPrice
                ? _value.lowestBidPrice
                : lowestBidPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            topContractors: null == topContractors
                ? _value.topContractors
                : topContractors // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            viewCount: null == viewCount
                ? _value.viewCount
                : viewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            saveCount: null == saveCount
                ? _value.saveCount
                : saveCount // ignore: cast_nullable_to_non_nullable
                      as int,
            predictedCompletionDate: freezed == predictedCompletionDate
                ? _value.predictedCompletionDate
                : predictedCompletionDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            successProbability: null == successProbability
                ? _value.successProbability
                : successProbability // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectMetricsImplCopyWith<$Res>
    implements $ProjectMetricsCopyWith<$Res> {
  factory _$$ProjectMetricsImplCopyWith(
    _$ProjectMetricsImpl value,
    $Res Function(_$ProjectMetricsImpl) then,
  ) = __$$ProjectMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalBidsReceived,
    int acceptedBidsCount,
    double avgBidPrice,
    double highestBidPrice,
    double lowestBidPrice,
    List<String> topContractors,
    int viewCount,
    int saveCount,
    DateTime? predictedCompletionDate,
    double successProbability,
  });
}

/// @nodoc
class __$$ProjectMetricsImplCopyWithImpl<$Res>
    extends _$ProjectMetricsCopyWithImpl<$Res, _$ProjectMetricsImpl>
    implements _$$ProjectMetricsImplCopyWith<$Res> {
  __$$ProjectMetricsImplCopyWithImpl(
    _$ProjectMetricsImpl _value,
    $Res Function(_$ProjectMetricsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBidsReceived = null,
    Object? acceptedBidsCount = null,
    Object? avgBidPrice = null,
    Object? highestBidPrice = null,
    Object? lowestBidPrice = null,
    Object? topContractors = null,
    Object? viewCount = null,
    Object? saveCount = null,
    Object? predictedCompletionDate = freezed,
    Object? successProbability = null,
  }) {
    return _then(
      _$ProjectMetricsImpl(
        totalBidsReceived: null == totalBidsReceived
            ? _value.totalBidsReceived
            : totalBidsReceived // ignore: cast_nullable_to_non_nullable
                  as int,
        acceptedBidsCount: null == acceptedBidsCount
            ? _value.acceptedBidsCount
            : acceptedBidsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        avgBidPrice: null == avgBidPrice
            ? _value.avgBidPrice
            : avgBidPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        highestBidPrice: null == highestBidPrice
            ? _value.highestBidPrice
            : highestBidPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        lowestBidPrice: null == lowestBidPrice
            ? _value.lowestBidPrice
            : lowestBidPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        topContractors: null == topContractors
            ? _value._topContractors
            : topContractors // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        viewCount: null == viewCount
            ? _value.viewCount
            : viewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        saveCount: null == saveCount
            ? _value.saveCount
            : saveCount // ignore: cast_nullable_to_non_nullable
                  as int,
        predictedCompletionDate: freezed == predictedCompletionDate
            ? _value.predictedCompletionDate
            : predictedCompletionDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        successProbability: null == successProbability
            ? _value.successProbability
            : successProbability // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectMetricsImpl implements _ProjectMetrics {
  const _$ProjectMetricsImpl({
    required this.totalBidsReceived,
    required this.acceptedBidsCount,
    required this.avgBidPrice,
    required this.highestBidPrice,
    required this.lowestBidPrice,
    required final List<String> topContractors,
    required this.viewCount,
    required this.saveCount,
    required this.predictedCompletionDate,
    required this.successProbability,
  }) : _topContractors = topContractors;

  factory _$ProjectMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectMetricsImplFromJson(json);

  @override
  final int totalBidsReceived;
  @override
  final int acceptedBidsCount;
  @override
  final double avgBidPrice;
  @override
  final double highestBidPrice;
  @override
  final double lowestBidPrice;
  final List<String> _topContractors;
  @override
  List<String> get topContractors {
    if (_topContractors is EqualUnmodifiableListView) return _topContractors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topContractors);
  }

  @override
  final int viewCount;
  @override
  final int saveCount;
  @override
  final DateTime? predictedCompletionDate;
  @override
  final double successProbability;

  @override
  String toString() {
    return 'ProjectMetrics(totalBidsReceived: $totalBidsReceived, acceptedBidsCount: $acceptedBidsCount, avgBidPrice: $avgBidPrice, highestBidPrice: $highestBidPrice, lowestBidPrice: $lowestBidPrice, topContractors: $topContractors, viewCount: $viewCount, saveCount: $saveCount, predictedCompletionDate: $predictedCompletionDate, successProbability: $successProbability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectMetricsImpl &&
            (identical(other.totalBidsReceived, totalBidsReceived) ||
                other.totalBidsReceived == totalBidsReceived) &&
            (identical(other.acceptedBidsCount, acceptedBidsCount) ||
                other.acceptedBidsCount == acceptedBidsCount) &&
            (identical(other.avgBidPrice, avgBidPrice) ||
                other.avgBidPrice == avgBidPrice) &&
            (identical(other.highestBidPrice, highestBidPrice) ||
                other.highestBidPrice == highestBidPrice) &&
            (identical(other.lowestBidPrice, lowestBidPrice) ||
                other.lowestBidPrice == lowestBidPrice) &&
            const DeepCollectionEquality().equals(
              other._topContractors,
              _topContractors,
            ) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.saveCount, saveCount) ||
                other.saveCount == saveCount) &&
            (identical(
                  other.predictedCompletionDate,
                  predictedCompletionDate,
                ) ||
                other.predictedCompletionDate == predictedCompletionDate) &&
            (identical(other.successProbability, successProbability) ||
                other.successProbability == successProbability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalBidsReceived,
    acceptedBidsCount,
    avgBidPrice,
    highestBidPrice,
    lowestBidPrice,
    const DeepCollectionEquality().hash(_topContractors),
    viewCount,
    saveCount,
    predictedCompletionDate,
    successProbability,
  );

  /// Create a copy of ProjectMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectMetricsImplCopyWith<_$ProjectMetricsImpl> get copyWith =>
      __$$ProjectMetricsImplCopyWithImpl<_$ProjectMetricsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectMetricsImplToJson(this);
  }
}

abstract class _ProjectMetrics implements ProjectMetrics {
  const factory _ProjectMetrics({
    required final int totalBidsReceived,
    required final int acceptedBidsCount,
    required final double avgBidPrice,
    required final double highestBidPrice,
    required final double lowestBidPrice,
    required final List<String> topContractors,
    required final int viewCount,
    required final int saveCount,
    required final DateTime? predictedCompletionDate,
    required final double successProbability,
  }) = _$ProjectMetricsImpl;

  factory _ProjectMetrics.fromJson(Map<String, dynamic> json) =
      _$ProjectMetricsImpl.fromJson;

  @override
  int get totalBidsReceived;
  @override
  int get acceptedBidsCount;
  @override
  double get avgBidPrice;
  @override
  double get highestBidPrice;
  @override
  double get lowestBidPrice;
  @override
  List<String> get topContractors;
  @override
  int get viewCount;
  @override
  int get saveCount;
  @override
  DateTime? get predictedCompletionDate;
  @override
  double get successProbability;

  /// Create a copy of ProjectMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectMetricsImplCopyWith<_$ProjectMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectActivity _$ProjectActivityFromJson(Map<String, dynamic> json) {
  return _ProjectActivity.fromJson(json);
}

/// @nodoc
mixin _$ProjectActivity {
  String get activityId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  ActivityType get type => throw _privateConstructorUsedError;
  String get actorId => throw _privateConstructorUsedError;
  String get actorName => throw _privateConstructorUsedError;
  String get actionDetails => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String>? get mentionedUsers => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this ProjectActivity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectActivityCopyWith<ProjectActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectActivityCopyWith<$Res> {
  factory $ProjectActivityCopyWith(
    ProjectActivity value,
    $Res Function(ProjectActivity) then,
  ) = _$ProjectActivityCopyWithImpl<$Res, ProjectActivity>;
  @useResult
  $Res call({
    String activityId,
    String projectId,
    ActivityType type,
    String actorId,
    String actorName,
    String actionDetails,
    DateTime timestamp,
    List<String>? mentionedUsers,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$ProjectActivityCopyWithImpl<$Res, $Val extends ProjectActivity>
    implements $ProjectActivityCopyWith<$Res> {
  _$ProjectActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? projectId = null,
    Object? type = null,
    Object? actorId = null,
    Object? actorName = null,
    Object? actionDetails = null,
    Object? timestamp = null,
    Object? mentionedUsers = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            activityId: null == activityId
                ? _value.activityId
                : activityId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as ActivityType,
            actorId: null == actorId
                ? _value.actorId
                : actorId // ignore: cast_nullable_to_non_nullable
                      as String,
            actorName: null == actorName
                ? _value.actorName
                : actorName // ignore: cast_nullable_to_non_nullable
                      as String,
            actionDetails: null == actionDetails
                ? _value.actionDetails
                : actionDetails // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            mentionedUsers: freezed == mentionedUsers
                ? _value.mentionedUsers
                : mentionedUsers // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectActivityImplCopyWith<$Res>
    implements $ProjectActivityCopyWith<$Res> {
  factory _$$ProjectActivityImplCopyWith(
    _$ProjectActivityImpl value,
    $Res Function(_$ProjectActivityImpl) then,
  ) = __$$ProjectActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String activityId,
    String projectId,
    ActivityType type,
    String actorId,
    String actorName,
    String actionDetails,
    DateTime timestamp,
    List<String>? mentionedUsers,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$ProjectActivityImplCopyWithImpl<$Res>
    extends _$ProjectActivityCopyWithImpl<$Res, _$ProjectActivityImpl>
    implements _$$ProjectActivityImplCopyWith<$Res> {
  __$$ProjectActivityImplCopyWithImpl(
    _$ProjectActivityImpl _value,
    $Res Function(_$ProjectActivityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? projectId = null,
    Object? type = null,
    Object? actorId = null,
    Object? actorName = null,
    Object? actionDetails = null,
    Object? timestamp = null,
    Object? mentionedUsers = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$ProjectActivityImpl(
        activityId: null == activityId
            ? _value.activityId
            : activityId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ActivityType,
        actorId: null == actorId
            ? _value.actorId
            : actorId // ignore: cast_nullable_to_non_nullable
                  as String,
        actorName: null == actorName
            ? _value.actorName
            : actorName // ignore: cast_nullable_to_non_nullable
                  as String,
        actionDetails: null == actionDetails
            ? _value.actionDetails
            : actionDetails // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        mentionedUsers: freezed == mentionedUsers
            ? _value._mentionedUsers
            : mentionedUsers // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectActivityImpl implements _ProjectActivity {
  const _$ProjectActivityImpl({
    required this.activityId,
    required this.projectId,
    required this.type,
    required this.actorId,
    required this.actorName,
    required this.actionDetails,
    required this.timestamp,
    required final List<String>? mentionedUsers,
    required final Map<String, dynamic>? metadata,
  }) : _mentionedUsers = mentionedUsers,
       _metadata = metadata;

  factory _$ProjectActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectActivityImplFromJson(json);

  @override
  final String activityId;
  @override
  final String projectId;
  @override
  final ActivityType type;
  @override
  final String actorId;
  @override
  final String actorName;
  @override
  final String actionDetails;
  @override
  final DateTime timestamp;
  final List<String>? _mentionedUsers;
  @override
  List<String>? get mentionedUsers {
    final value = _mentionedUsers;
    if (value == null) return null;
    if (_mentionedUsers is EqualUnmodifiableListView) return _mentionedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ProjectActivity(activityId: $activityId, projectId: $projectId, type: $type, actorId: $actorId, actorName: $actorName, actionDetails: $actionDetails, timestamp: $timestamp, mentionedUsers: $mentionedUsers, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectActivityImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actionDetails, actionDetails) ||
                other.actionDetails == actionDetails) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(
              other._mentionedUsers,
              _mentionedUsers,
            ) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    activityId,
    projectId,
    type,
    actorId,
    actorName,
    actionDetails,
    timestamp,
    const DeepCollectionEquality().hash(_mentionedUsers),
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of ProjectActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectActivityImplCopyWith<_$ProjectActivityImpl> get copyWith =>
      __$$ProjectActivityImplCopyWithImpl<_$ProjectActivityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectActivityImplToJson(this);
  }
}

abstract class _ProjectActivity implements ProjectActivity {
  const factory _ProjectActivity({
    required final String activityId,
    required final String projectId,
    required final ActivityType type,
    required final String actorId,
    required final String actorName,
    required final String actionDetails,
    required final DateTime timestamp,
    required final List<String>? mentionedUsers,
    required final Map<String, dynamic>? metadata,
  }) = _$ProjectActivityImpl;

  factory _ProjectActivity.fromJson(Map<String, dynamic> json) =
      _$ProjectActivityImpl.fromJson;

  @override
  String get activityId;
  @override
  String get projectId;
  @override
  ActivityType get type;
  @override
  String get actorId;
  @override
  String get actorName;
  @override
  String get actionDetails;
  @override
  DateTime get timestamp;
  @override
  List<String>? get mentionedUsers;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of ProjectActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectActivityImplCopyWith<_$ProjectActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CostBreakdown _$CostBreakdownFromJson(Map<String, dynamic> json) {
  return _CostBreakdown.fromJson(json);
}

/// @nodoc
mixin _$CostBreakdown {
  String get category =>
      throw _privateConstructorUsedError; // Labour, Materials, Equipment, etc.
  int get estimatedCost => throw _privateConstructorUsedError;
  int? get actualCost => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  int get unitPrice => throw _privateConstructorUsedError;

  /// Serializes this CostBreakdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CostBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CostBreakdownCopyWith<CostBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostBreakdownCopyWith<$Res> {
  factory $CostBreakdownCopyWith(
    CostBreakdown value,
    $Res Function(CostBreakdown) then,
  ) = _$CostBreakdownCopyWithImpl<$Res, CostBreakdown>;
  @useResult
  $Res call({
    String category,
    int estimatedCost,
    int? actualCost,
    int quantity,
    String unit,
    int unitPrice,
  });
}

/// @nodoc
class _$CostBreakdownCopyWithImpl<$Res, $Val extends CostBreakdown>
    implements $CostBreakdownCopyWith<$Res> {
  _$CostBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CostBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? estimatedCost = null,
    Object? actualCost = freezed,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
  }) {
    return _then(
      _value.copyWith(
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedCost: null == estimatedCost
                ? _value.estimatedCost
                : estimatedCost // ignore: cast_nullable_to_non_nullable
                      as int,
            actualCost: freezed == actualCost
                ? _value.actualCost
                : actualCost // ignore: cast_nullable_to_non_nullable
                      as int?,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            unit: null == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String,
            unitPrice: null == unitPrice
                ? _value.unitPrice
                : unitPrice // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CostBreakdownImplCopyWith<$Res>
    implements $CostBreakdownCopyWith<$Res> {
  factory _$$CostBreakdownImplCopyWith(
    _$CostBreakdownImpl value,
    $Res Function(_$CostBreakdownImpl) then,
  ) = __$$CostBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String category,
    int estimatedCost,
    int? actualCost,
    int quantity,
    String unit,
    int unitPrice,
  });
}

/// @nodoc
class __$$CostBreakdownImplCopyWithImpl<$Res>
    extends _$CostBreakdownCopyWithImpl<$Res, _$CostBreakdownImpl>
    implements _$$CostBreakdownImplCopyWith<$Res> {
  __$$CostBreakdownImplCopyWithImpl(
    _$CostBreakdownImpl _value,
    $Res Function(_$CostBreakdownImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CostBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? estimatedCost = null,
    Object? actualCost = freezed,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
  }) {
    return _then(
      _$CostBreakdownImpl(
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedCost: null == estimatedCost
            ? _value.estimatedCost
            : estimatedCost // ignore: cast_nullable_to_non_nullable
                  as int,
        actualCost: freezed == actualCost
            ? _value.actualCost
            : actualCost // ignore: cast_nullable_to_non_nullable
                  as int?,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        unit: null == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String,
        unitPrice: null == unitPrice
            ? _value.unitPrice
            : unitPrice // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CostBreakdownImpl implements _CostBreakdown {
  const _$CostBreakdownImpl({
    required this.category,
    required this.estimatedCost,
    required this.actualCost,
    required this.quantity,
    required this.unit,
    required this.unitPrice,
  });

  factory _$CostBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$CostBreakdownImplFromJson(json);

  @override
  final String category;
  // Labour, Materials, Equipment, etc.
  @override
  final int estimatedCost;
  @override
  final int? actualCost;
  @override
  final int quantity;
  @override
  final String unit;
  @override
  final int unitPrice;

  @override
  String toString() {
    return 'CostBreakdown(category: $category, estimatedCost: $estimatedCost, actualCost: $actualCost, quantity: $quantity, unit: $unit, unitPrice: $unitPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CostBreakdownImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    category,
    estimatedCost,
    actualCost,
    quantity,
    unit,
    unitPrice,
  );

  /// Create a copy of CostBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CostBreakdownImplCopyWith<_$CostBreakdownImpl> get copyWith =>
      __$$CostBreakdownImplCopyWithImpl<_$CostBreakdownImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CostBreakdownImplToJson(this);
  }
}

abstract class _CostBreakdown implements CostBreakdown {
  const factory _CostBreakdown({
    required final String category,
    required final int estimatedCost,
    required final int? actualCost,
    required final int quantity,
    required final String unit,
    required final int unitPrice,
  }) = _$CostBreakdownImpl;

  factory _CostBreakdown.fromJson(Map<String, dynamic> json) =
      _$CostBreakdownImpl.fromJson;

  @override
  String get category; // Labour, Materials, Equipment, etc.
  @override
  int get estimatedCost;
  @override
  int? get actualCost;
  @override
  int get quantity;
  @override
  String get unit;
  @override
  int get unitPrice;

  /// Create a copy of CostBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CostBreakdownImplCopyWith<_$CostBreakdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
