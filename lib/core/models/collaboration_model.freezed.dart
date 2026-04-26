// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collaboration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  String get messageId => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isEncrypted => throw _privateConstructorUsedError;
  List<String>? get attachmentUrls => throw _privateConstructorUsedError;
  List<String>? get mentionedUsers => throw _privateConstructorUsedError;
  String? get replyToMessageId => throw _privateConstructorUsedError;
  int? get reactions => throw _privateConstructorUsedError;
  List<String>? get readBy => throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
    ChatMessage value,
    $Res Function(ChatMessage) then,
  ) = _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call({
    String messageId,
    String chatId,
    String senderId,
    String message,
    DateTime createdAt,
    bool isEncrypted,
    List<String>? attachmentUrls,
    List<String>? mentionedUsers,
    String? replyToMessageId,
    int? reactions,
    List<String>? readBy,
  });
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? chatId = null,
    Object? senderId = null,
    Object? message = null,
    Object? createdAt = null,
    Object? isEncrypted = null,
    Object? attachmentUrls = freezed,
    Object? mentionedUsers = freezed,
    Object? replyToMessageId = freezed,
    Object? reactions = freezed,
    Object? readBy = freezed,
  }) {
    return _then(
      _value.copyWith(
            messageId: null == messageId
                ? _value.messageId
                : messageId // ignore: cast_nullable_to_non_nullable
                      as String,
            chatId: null == chatId
                ? _value.chatId
                : chatId // ignore: cast_nullable_to_non_nullable
                      as String,
            senderId: null == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isEncrypted: null == isEncrypted
                ? _value.isEncrypted
                : isEncrypted // ignore: cast_nullable_to_non_nullable
                      as bool,
            attachmentUrls: freezed == attachmentUrls
                ? _value.attachmentUrls
                : attachmentUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            mentionedUsers: freezed == mentionedUsers
                ? _value.mentionedUsers
                : mentionedUsers // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            replyToMessageId: freezed == replyToMessageId
                ? _value.replyToMessageId
                : replyToMessageId // ignore: cast_nullable_to_non_nullable
                      as String?,
            reactions: freezed == reactions
                ? _value.reactions
                : reactions // ignore: cast_nullable_to_non_nullable
                      as int?,
            readBy: freezed == readBy
                ? _value.readBy
                : readBy // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
    _$ChatMessageImpl value,
    $Res Function(_$ChatMessageImpl) then,
  ) = __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String messageId,
    String chatId,
    String senderId,
    String message,
    DateTime createdAt,
    bool isEncrypted,
    List<String>? attachmentUrls,
    List<String>? mentionedUsers,
    String? replyToMessageId,
    int? reactions,
    List<String>? readBy,
  });
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
    _$ChatMessageImpl _value,
    $Res Function(_$ChatMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? chatId = null,
    Object? senderId = null,
    Object? message = null,
    Object? createdAt = null,
    Object? isEncrypted = null,
    Object? attachmentUrls = freezed,
    Object? mentionedUsers = freezed,
    Object? replyToMessageId = freezed,
    Object? reactions = freezed,
    Object? readBy = freezed,
  }) {
    return _then(
      _$ChatMessageImpl(
        messageId: null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as String,
        chatId: null == chatId
            ? _value.chatId
            : chatId // ignore: cast_nullable_to_non_nullable
                  as String,
        senderId: null == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isEncrypted: null == isEncrypted
            ? _value.isEncrypted
            : isEncrypted // ignore: cast_nullable_to_non_nullable
                  as bool,
        attachmentUrls: freezed == attachmentUrls
            ? _value._attachmentUrls
            : attachmentUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        mentionedUsers: freezed == mentionedUsers
            ? _value._mentionedUsers
            : mentionedUsers // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        replyToMessageId: freezed == replyToMessageId
            ? _value.replyToMessageId
            : replyToMessageId // ignore: cast_nullable_to_non_nullable
                  as String?,
        reactions: freezed == reactions
            ? _value.reactions
            : reactions // ignore: cast_nullable_to_non_nullable
                  as int?,
        readBy: freezed == readBy
            ? _value._readBy
            : readBy // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl({
    required this.messageId,
    required this.chatId,
    required this.senderId,
    required this.message,
    required this.createdAt,
    required this.isEncrypted,
    required final List<String>? attachmentUrls,
    required final List<String>? mentionedUsers,
    required this.replyToMessageId,
    required this.reactions,
    required final List<String>? readBy,
  }) : _attachmentUrls = attachmentUrls,
       _mentionedUsers = mentionedUsers,
       _readBy = readBy;

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final String messageId;
  @override
  final String chatId;
  @override
  final String senderId;
  @override
  final String message;
  @override
  final DateTime createdAt;
  @override
  final bool isEncrypted;
  final List<String>? _attachmentUrls;
  @override
  List<String>? get attachmentUrls {
    final value = _attachmentUrls;
    if (value == null) return null;
    if (_attachmentUrls is EqualUnmodifiableListView) return _attachmentUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _mentionedUsers;
  @override
  List<String>? get mentionedUsers {
    final value = _mentionedUsers;
    if (value == null) return null;
    if (_mentionedUsers is EqualUnmodifiableListView) return _mentionedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? replyToMessageId;
  @override
  final int? reactions;
  final List<String>? _readBy;
  @override
  List<String>? get readBy {
    final value = _readBy;
    if (value == null) return null;
    if (_readBy is EqualUnmodifiableListView) return _readBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatMessage(messageId: $messageId, chatId: $chatId, senderId: $senderId, message: $message, createdAt: $createdAt, isEncrypted: $isEncrypted, attachmentUrls: $attachmentUrls, mentionedUsers: $mentionedUsers, replyToMessageId: $replyToMessageId, reactions: $reactions, readBy: $readBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isEncrypted, isEncrypted) ||
                other.isEncrypted == isEncrypted) &&
            const DeepCollectionEquality().equals(
              other._attachmentUrls,
              _attachmentUrls,
            ) &&
            const DeepCollectionEquality().equals(
              other._mentionedUsers,
              _mentionedUsers,
            ) &&
            (identical(other.replyToMessageId, replyToMessageId) ||
                other.replyToMessageId == replyToMessageId) &&
            (identical(other.reactions, reactions) ||
                other.reactions == reactions) &&
            const DeepCollectionEquality().equals(other._readBy, _readBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    messageId,
    chatId,
    senderId,
    message,
    createdAt,
    isEncrypted,
    const DeepCollectionEquality().hash(_attachmentUrls),
    const DeepCollectionEquality().hash(_mentionedUsers),
    replyToMessageId,
    reactions,
    const DeepCollectionEquality().hash(_readBy),
  );

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(this);
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage({
    required final String messageId,
    required final String chatId,
    required final String senderId,
    required final String message,
    required final DateTime createdAt,
    required final bool isEncrypted,
    required final List<String>? attachmentUrls,
    required final List<String>? mentionedUsers,
    required final String? replyToMessageId,
    required final int? reactions,
    required final List<String>? readBy,
  }) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  String get messageId;
  @override
  String get chatId;
  @override
  String get senderId;
  @override
  String get message;
  @override
  DateTime get createdAt;
  @override
  bool get isEncrypted;
  @override
  List<String>? get attachmentUrls;
  @override
  List<String>? get mentionedUsers;
  @override
  String? get replyToMessageId;
  @override
  int? get reactions;
  @override
  List<String>? get readBy;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  String get chatId => throw _privateConstructorUsedError;
  String? get projectId => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  String? get lastMessage => throw _privateConstructorUsedError;
  bool get isGroupChat => throw _privateConstructorUsedError;
  Map<String, DateTime> get lastReadAt => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;

  /// Serializes this Chat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call({
    String chatId,
    String? projectId,
    List<String> participants,
    String? title,
    DateTime createdAt,
    DateTime? lastMessageAt,
    String? lastMessage,
    bool isGroupChat,
    Map<String, DateTime> lastReadAt,
    List<ChatMessage> messages,
  });
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? projectId = freezed,
    Object? participants = null,
    Object? title = freezed,
    Object? createdAt = null,
    Object? lastMessageAt = freezed,
    Object? lastMessage = freezed,
    Object? isGroupChat = null,
    Object? lastReadAt = null,
    Object? messages = null,
  }) {
    return _then(
      _value.copyWith(
            chatId: null == chatId
                ? _value.chatId
                : chatId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: freezed == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String?,
            participants: null == participants
                ? _value.participants
                : participants // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            lastMessageAt: freezed == lastMessageAt
                ? _value.lastMessageAt
                : lastMessageAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            lastMessage: freezed == lastMessage
                ? _value.lastMessage
                : lastMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            isGroupChat: null == isGroupChat
                ? _value.isGroupChat
                : isGroupChat // ignore: cast_nullable_to_non_nullable
                      as bool,
            lastReadAt: null == lastReadAt
                ? _value.lastReadAt
                : lastReadAt // ignore: cast_nullable_to_non_nullable
                      as Map<String, DateTime>,
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<ChatMessage>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatImplCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$ChatImplCopyWith(
    _$ChatImpl value,
    $Res Function(_$ChatImpl) then,
  ) = __$$ChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String chatId,
    String? projectId,
    List<String> participants,
    String? title,
    DateTime createdAt,
    DateTime? lastMessageAt,
    String? lastMessage,
    bool isGroupChat,
    Map<String, DateTime> lastReadAt,
    List<ChatMessage> messages,
  });
}

/// @nodoc
class __$$ChatImplCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$ChatImpl>
    implements _$$ChatImplCopyWith<$Res> {
  __$$ChatImplCopyWithImpl(_$ChatImpl _value, $Res Function(_$ChatImpl) _then)
    : super(_value, _then);

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? projectId = freezed,
    Object? participants = null,
    Object? title = freezed,
    Object? createdAt = null,
    Object? lastMessageAt = freezed,
    Object? lastMessage = freezed,
    Object? isGroupChat = null,
    Object? lastReadAt = null,
    Object? messages = null,
  }) {
    return _then(
      _$ChatImpl(
        chatId: null == chatId
            ? _value.chatId
            : chatId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: freezed == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String?,
        participants: null == participants
            ? _value._participants
            : participants // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        lastMessageAt: freezed == lastMessageAt
            ? _value.lastMessageAt
            : lastMessageAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        lastMessage: freezed == lastMessage
            ? _value.lastMessage
            : lastMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        isGroupChat: null == isGroupChat
            ? _value.isGroupChat
            : isGroupChat // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastReadAt: null == lastReadAt
            ? _value._lastReadAt
            : lastReadAt // ignore: cast_nullable_to_non_nullable
                  as Map<String, DateTime>,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatImpl implements _Chat {
  const _$ChatImpl({
    required this.chatId,
    required this.projectId,
    required final List<String> participants,
    required this.title,
    required this.createdAt,
    required this.lastMessageAt,
    required this.lastMessage,
    required this.isGroupChat,
    required final Map<String, DateTime> lastReadAt,
    required final List<ChatMessage> messages,
  }) : _participants = participants,
       _lastReadAt = lastReadAt,
       _messages = messages;

  factory _$ChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatImplFromJson(json);

  @override
  final String chatId;
  @override
  final String? projectId;
  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final String? title;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastMessageAt;
  @override
  final String? lastMessage;
  @override
  final bool isGroupChat;
  final Map<String, DateTime> _lastReadAt;
  @override
  Map<String, DateTime> get lastReadAt {
    if (_lastReadAt is EqualUnmodifiableMapView) return _lastReadAt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lastReadAt);
  }

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'Chat(chatId: $chatId, projectId: $projectId, participants: $participants, title: $title, createdAt: $createdAt, lastMessageAt: $lastMessageAt, lastMessage: $lastMessage, isGroupChat: $isGroupChat, lastReadAt: $lastReadAt, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            const DeepCollectionEquality().equals(
              other._participants,
              _participants,
            ) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.isGroupChat, isGroupChat) ||
                other.isGroupChat == isGroupChat) &&
            const DeepCollectionEquality().equals(
              other._lastReadAt,
              _lastReadAt,
            ) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    chatId,
    projectId,
    const DeepCollectionEquality().hash(_participants),
    title,
    createdAt,
    lastMessageAt,
    lastMessage,
    isGroupChat,
    const DeepCollectionEquality().hash(_lastReadAt),
    const DeepCollectionEquality().hash(_messages),
  );

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      __$$ChatImplCopyWithImpl<_$ChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatImplToJson(this);
  }
}

abstract class _Chat implements Chat {
  const factory _Chat({
    required final String chatId,
    required final String? projectId,
    required final List<String> participants,
    required final String? title,
    required final DateTime createdAt,
    required final DateTime? lastMessageAt,
    required final String? lastMessage,
    required final bool isGroupChat,
    required final Map<String, DateTime> lastReadAt,
    required final List<ChatMessage> messages,
  }) = _$ChatImpl;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$ChatImpl.fromJson;

  @override
  String get chatId;
  @override
  String? get projectId;
  @override
  List<String> get participants;
  @override
  String? get title;
  @override
  DateTime get createdAt;
  @override
  DateTime? get lastMessageAt;
  @override
  String? get lastMessage;
  @override
  bool get isGroupChat;
  @override
  Map<String, DateTime> get lastReadAt;
  @override
  List<ChatMessage> get messages;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoCall _$VideoCallFromJson(Map<String, dynamic> json) {
  return _VideoCall.fromJson(json);
}

/// @nodoc
mixin _$VideoCall {
  String get callId => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get initiatorId => throw _privateConstructorUsedError;
  List<String> get participantIds => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  String get recordingUrl => throw _privateConstructorUsedError;
  bool get isScreenSharing => throw _privateConstructorUsedError;

  /// Serializes this VideoCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoCallCopyWith<VideoCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallCopyWith<$Res> {
  factory $VideoCallCopyWith(VideoCall value, $Res Function(VideoCall) then) =
      _$VideoCallCopyWithImpl<$Res, VideoCall>;
  @useResult
  $Res call({
    String callId,
    String chatId,
    String initiatorId,
    List<String> participantIds,
    DateTime startTime,
    DateTime? endTime,
    int durationSeconds,
    String recordingUrl,
    bool isScreenSharing,
  });
}

/// @nodoc
class _$VideoCallCopyWithImpl<$Res, $Val extends VideoCall>
    implements $VideoCallCopyWith<$Res> {
  _$VideoCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
    Object? chatId = null,
    Object? initiatorId = null,
    Object? participantIds = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? durationSeconds = null,
    Object? recordingUrl = null,
    Object? isScreenSharing = null,
  }) {
    return _then(
      _value.copyWith(
            callId: null == callId
                ? _value.callId
                : callId // ignore: cast_nullable_to_non_nullable
                      as String,
            chatId: null == chatId
                ? _value.chatId
                : chatId // ignore: cast_nullable_to_non_nullable
                      as String,
            initiatorId: null == initiatorId
                ? _value.initiatorId
                : initiatorId // ignore: cast_nullable_to_non_nullable
                      as String,
            participantIds: null == participantIds
                ? _value.participantIds
                : participantIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            durationSeconds: null == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            recordingUrl: null == recordingUrl
                ? _value.recordingUrl
                : recordingUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            isScreenSharing: null == isScreenSharing
                ? _value.isScreenSharing
                : isScreenSharing // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VideoCallImplCopyWith<$Res>
    implements $VideoCallCopyWith<$Res> {
  factory _$$VideoCallImplCopyWith(
    _$VideoCallImpl value,
    $Res Function(_$VideoCallImpl) then,
  ) = __$$VideoCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String callId,
    String chatId,
    String initiatorId,
    List<String> participantIds,
    DateTime startTime,
    DateTime? endTime,
    int durationSeconds,
    String recordingUrl,
    bool isScreenSharing,
  });
}

/// @nodoc
class __$$VideoCallImplCopyWithImpl<$Res>
    extends _$VideoCallCopyWithImpl<$Res, _$VideoCallImpl>
    implements _$$VideoCallImplCopyWith<$Res> {
  __$$VideoCallImplCopyWithImpl(
    _$VideoCallImpl _value,
    $Res Function(_$VideoCallImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VideoCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = null,
    Object? chatId = null,
    Object? initiatorId = null,
    Object? participantIds = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? durationSeconds = null,
    Object? recordingUrl = null,
    Object? isScreenSharing = null,
  }) {
    return _then(
      _$VideoCallImpl(
        callId: null == callId
            ? _value.callId
            : callId // ignore: cast_nullable_to_non_nullable
                  as String,
        chatId: null == chatId
            ? _value.chatId
            : chatId // ignore: cast_nullable_to_non_nullable
                  as String,
        initiatorId: null == initiatorId
            ? _value.initiatorId
            : initiatorId // ignore: cast_nullable_to_non_nullable
                  as String,
        participantIds: null == participantIds
            ? _value._participantIds
            : participantIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        recordingUrl: null == recordingUrl
            ? _value.recordingUrl
            : recordingUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        isScreenSharing: null == isScreenSharing
            ? _value.isScreenSharing
            : isScreenSharing // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoCallImpl implements _VideoCall {
  const _$VideoCallImpl({
    required this.callId,
    required this.chatId,
    required this.initiatorId,
    required final List<String> participantIds,
    required this.startTime,
    required this.endTime,
    required this.durationSeconds,
    required this.recordingUrl,
    required this.isScreenSharing,
  }) : _participantIds = participantIds;

  factory _$VideoCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoCallImplFromJson(json);

  @override
  final String callId;
  @override
  final String chatId;
  @override
  final String initiatorId;
  final List<String> _participantIds;
  @override
  List<String> get participantIds {
    if (_participantIds is EqualUnmodifiableListView) return _participantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantIds);
  }

  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final int durationSeconds;
  @override
  final String recordingUrl;
  @override
  final bool isScreenSharing;

  @override
  String toString() {
    return 'VideoCall(callId: $callId, chatId: $chatId, initiatorId: $initiatorId, participantIds: $participantIds, startTime: $startTime, endTime: $endTime, durationSeconds: $durationSeconds, recordingUrl: $recordingUrl, isScreenSharing: $isScreenSharing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoCallImpl &&
            (identical(other.callId, callId) || other.callId == callId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.initiatorId, initiatorId) ||
                other.initiatorId == initiatorId) &&
            const DeepCollectionEquality().equals(
              other._participantIds,
              _participantIds,
            ) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            (identical(other.isScreenSharing, isScreenSharing) ||
                other.isScreenSharing == isScreenSharing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    callId,
    chatId,
    initiatorId,
    const DeepCollectionEquality().hash(_participantIds),
    startTime,
    endTime,
    durationSeconds,
    recordingUrl,
    isScreenSharing,
  );

  /// Create a copy of VideoCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoCallImplCopyWith<_$VideoCallImpl> get copyWith =>
      __$$VideoCallImplCopyWithImpl<_$VideoCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoCallImplToJson(this);
  }
}

abstract class _VideoCall implements VideoCall {
  const factory _VideoCall({
    required final String callId,
    required final String chatId,
    required final String initiatorId,
    required final List<String> participantIds,
    required final DateTime startTime,
    required final DateTime? endTime,
    required final int durationSeconds,
    required final String recordingUrl,
    required final bool isScreenSharing,
  }) = _$VideoCallImpl;

  factory _VideoCall.fromJson(Map<String, dynamic> json) =
      _$VideoCallImpl.fromJson;

  @override
  String get callId;
  @override
  String get chatId;
  @override
  String get initiatorId;
  @override
  List<String> get participantIds;
  @override
  DateTime get startTime;
  @override
  DateTime? get endTime;
  @override
  int get durationSeconds;
  @override
  String get recordingUrl;
  @override
  bool get isScreenSharing;

  /// Create a copy of VideoCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoCallImplCopyWith<_$VideoCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectDocument _$ProjectDocumentFromJson(Map<String, dynamic> json) {
  return _ProjectDocument.fromJson(json);
}

/// @nodoc
mixin _$ProjectDocument {
  String get documentId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // contract, blueprint, invoice, permit, etc.
  String get storageUrl => throw _privateConstructorUsedError;
  int get fileSizeBytes => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;
  String get uploadedBy => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  bool get requiresSignature => throw _privateConstructorUsedError;
  Map<String, DateTime>? get signedBy => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get ocrExtractedText => throw _privateConstructorUsedError;

  /// Serializes this ProjectDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDocumentCopyWith<ProjectDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDocumentCopyWith<$Res> {
  factory $ProjectDocumentCopyWith(
    ProjectDocument value,
    $Res Function(ProjectDocument) then,
  ) = _$ProjectDocumentCopyWithImpl<$Res, ProjectDocument>;
  @useResult
  $Res call({
    String documentId,
    String projectId,
    String name,
    String type,
    String storageUrl,
    int fileSizeBytes,
    DateTime uploadedAt,
    String uploadedBy,
    int? version,
    bool requiresSignature,
    Map<String, DateTime>? signedBy,
    DateTime? expiryDate,
    String? ocrExtractedText,
  });
}

/// @nodoc
class _$ProjectDocumentCopyWithImpl<$Res, $Val extends ProjectDocument>
    implements $ProjectDocumentCopyWith<$Res> {
  _$ProjectDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? projectId = null,
    Object? name = null,
    Object? type = null,
    Object? storageUrl = null,
    Object? fileSizeBytes = null,
    Object? uploadedAt = null,
    Object? uploadedBy = null,
    Object? version = freezed,
    Object? requiresSignature = null,
    Object? signedBy = freezed,
    Object? expiryDate = freezed,
    Object? ocrExtractedText = freezed,
  }) {
    return _then(
      _value.copyWith(
            documentId: null == documentId
                ? _value.documentId
                : documentId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            storageUrl: null == storageUrl
                ? _value.storageUrl
                : storageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            fileSizeBytes: null == fileSizeBytes
                ? _value.fileSizeBytes
                : fileSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            uploadedAt: null == uploadedAt
                ? _value.uploadedAt
                : uploadedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            uploadedBy: null == uploadedBy
                ? _value.uploadedBy
                : uploadedBy // ignore: cast_nullable_to_non_nullable
                      as String,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as int?,
            requiresSignature: null == requiresSignature
                ? _value.requiresSignature
                : requiresSignature // ignore: cast_nullable_to_non_nullable
                      as bool,
            signedBy: freezed == signedBy
                ? _value.signedBy
                : signedBy // ignore: cast_nullable_to_non_nullable
                      as Map<String, DateTime>?,
            expiryDate: freezed == expiryDate
                ? _value.expiryDate
                : expiryDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            ocrExtractedText: freezed == ocrExtractedText
                ? _value.ocrExtractedText
                : ocrExtractedText // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectDocumentImplCopyWith<$Res>
    implements $ProjectDocumentCopyWith<$Res> {
  factory _$$ProjectDocumentImplCopyWith(
    _$ProjectDocumentImpl value,
    $Res Function(_$ProjectDocumentImpl) then,
  ) = __$$ProjectDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String documentId,
    String projectId,
    String name,
    String type,
    String storageUrl,
    int fileSizeBytes,
    DateTime uploadedAt,
    String uploadedBy,
    int? version,
    bool requiresSignature,
    Map<String, DateTime>? signedBy,
    DateTime? expiryDate,
    String? ocrExtractedText,
  });
}

/// @nodoc
class __$$ProjectDocumentImplCopyWithImpl<$Res>
    extends _$ProjectDocumentCopyWithImpl<$Res, _$ProjectDocumentImpl>
    implements _$$ProjectDocumentImplCopyWith<$Res> {
  __$$ProjectDocumentImplCopyWithImpl(
    _$ProjectDocumentImpl _value,
    $Res Function(_$ProjectDocumentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? projectId = null,
    Object? name = null,
    Object? type = null,
    Object? storageUrl = null,
    Object? fileSizeBytes = null,
    Object? uploadedAt = null,
    Object? uploadedBy = null,
    Object? version = freezed,
    Object? requiresSignature = null,
    Object? signedBy = freezed,
    Object? expiryDate = freezed,
    Object? ocrExtractedText = freezed,
  }) {
    return _then(
      _$ProjectDocumentImpl(
        documentId: null == documentId
            ? _value.documentId
            : documentId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        storageUrl: null == storageUrl
            ? _value.storageUrl
            : storageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        fileSizeBytes: null == fileSizeBytes
            ? _value.fileSizeBytes
            : fileSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        uploadedAt: null == uploadedAt
            ? _value.uploadedAt
            : uploadedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        uploadedBy: null == uploadedBy
            ? _value.uploadedBy
            : uploadedBy // ignore: cast_nullable_to_non_nullable
                  as String,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as int?,
        requiresSignature: null == requiresSignature
            ? _value.requiresSignature
            : requiresSignature // ignore: cast_nullable_to_non_nullable
                  as bool,
        signedBy: freezed == signedBy
            ? _value._signedBy
            : signedBy // ignore: cast_nullable_to_non_nullable
                  as Map<String, DateTime>?,
        expiryDate: freezed == expiryDate
            ? _value.expiryDate
            : expiryDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        ocrExtractedText: freezed == ocrExtractedText
            ? _value.ocrExtractedText
            : ocrExtractedText // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectDocumentImpl implements _ProjectDocument {
  const _$ProjectDocumentImpl({
    required this.documentId,
    required this.projectId,
    required this.name,
    required this.type,
    required this.storageUrl,
    required this.fileSizeBytes,
    required this.uploadedAt,
    required this.uploadedBy,
    required this.version,
    required this.requiresSignature,
    required final Map<String, DateTime>? signedBy,
    required this.expiryDate,
    required this.ocrExtractedText,
  }) : _signedBy = signedBy;

  factory _$ProjectDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDocumentImplFromJson(json);

  @override
  final String documentId;
  @override
  final String projectId;
  @override
  final String name;
  @override
  final String type;
  // contract, blueprint, invoice, permit, etc.
  @override
  final String storageUrl;
  @override
  final int fileSizeBytes;
  @override
  final DateTime uploadedAt;
  @override
  final String uploadedBy;
  @override
  final int? version;
  @override
  final bool requiresSignature;
  final Map<String, DateTime>? _signedBy;
  @override
  Map<String, DateTime>? get signedBy {
    final value = _signedBy;
    if (value == null) return null;
    if (_signedBy is EqualUnmodifiableMapView) return _signedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? expiryDate;
  @override
  final String? ocrExtractedText;

  @override
  String toString() {
    return 'ProjectDocument(documentId: $documentId, projectId: $projectId, name: $name, type: $type, storageUrl: $storageUrl, fileSizeBytes: $fileSizeBytes, uploadedAt: $uploadedAt, uploadedBy: $uploadedBy, version: $version, requiresSignature: $requiresSignature, signedBy: $signedBy, expiryDate: $expiryDate, ocrExtractedText: $ocrExtractedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDocumentImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.storageUrl, storageUrl) ||
                other.storageUrl == storageUrl) &&
            (identical(other.fileSizeBytes, fileSizeBytes) ||
                other.fileSizeBytes == fileSizeBytes) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.uploadedBy, uploadedBy) ||
                other.uploadedBy == uploadedBy) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.requiresSignature, requiresSignature) ||
                other.requiresSignature == requiresSignature) &&
            const DeepCollectionEquality().equals(other._signedBy, _signedBy) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.ocrExtractedText, ocrExtractedText) ||
                other.ocrExtractedText == ocrExtractedText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    documentId,
    projectId,
    name,
    type,
    storageUrl,
    fileSizeBytes,
    uploadedAt,
    uploadedBy,
    version,
    requiresSignature,
    const DeepCollectionEquality().hash(_signedBy),
    expiryDate,
    ocrExtractedText,
  );

  /// Create a copy of ProjectDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDocumentImplCopyWith<_$ProjectDocumentImpl> get copyWith =>
      __$$ProjectDocumentImplCopyWithImpl<_$ProjectDocumentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDocumentImplToJson(this);
  }
}

abstract class _ProjectDocument implements ProjectDocument {
  const factory _ProjectDocument({
    required final String documentId,
    required final String projectId,
    required final String name,
    required final String type,
    required final String storageUrl,
    required final int fileSizeBytes,
    required final DateTime uploadedAt,
    required final String uploadedBy,
    required final int? version,
    required final bool requiresSignature,
    required final Map<String, DateTime>? signedBy,
    required final DateTime? expiryDate,
    required final String? ocrExtractedText,
  }) = _$ProjectDocumentImpl;

  factory _ProjectDocument.fromJson(Map<String, dynamic> json) =
      _$ProjectDocumentImpl.fromJson;

  @override
  String get documentId;
  @override
  String get projectId;
  @override
  String get name;
  @override
  String get type; // contract, blueprint, invoice, permit, etc.
  @override
  String get storageUrl;
  @override
  int get fileSizeBytes;
  @override
  DateTime get uploadedAt;
  @override
  String get uploadedBy;
  @override
  int? get version;
  @override
  bool get requiresSignature;
  @override
  Map<String, DateTime>? get signedBy;
  @override
  DateTime? get expiryDate;
  @override
  String? get ocrExtractedText;

  /// Create a copy of ProjectDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDocumentImplCopyWith<_$ProjectDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DigitalSignature _$DigitalSignatureFromJson(Map<String, dynamic> json) {
  return _DigitalSignature.fromJson(json);
}

/// @nodoc
mixin _$DigitalSignature {
  String get signatureId => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get signedBy => throw _privateConstructorUsedError;
  DateTime get signedAt => throw _privateConstructorUsedError;
  String get signatureHash => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  /// Serializes this DigitalSignature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DigitalSignature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DigitalSignatureCopyWith<DigitalSignature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigitalSignatureCopyWith<$Res> {
  factory $DigitalSignatureCopyWith(
    DigitalSignature value,
    $Res Function(DigitalSignature) then,
  ) = _$DigitalSignatureCopyWithImpl<$Res, DigitalSignature>;
  @useResult
  $Res call({
    String signatureId,
    String documentId,
    String signedBy,
    DateTime signedAt,
    String signatureHash,
    String? ipAddress,
    bool isValid,
  });
}

/// @nodoc
class _$DigitalSignatureCopyWithImpl<$Res, $Val extends DigitalSignature>
    implements $DigitalSignatureCopyWith<$Res> {
  _$DigitalSignatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DigitalSignature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatureId = null,
    Object? documentId = null,
    Object? signedBy = null,
    Object? signedAt = null,
    Object? signatureHash = null,
    Object? ipAddress = freezed,
    Object? isValid = null,
  }) {
    return _then(
      _value.copyWith(
            signatureId: null == signatureId
                ? _value.signatureId
                : signatureId // ignore: cast_nullable_to_non_nullable
                      as String,
            documentId: null == documentId
                ? _value.documentId
                : documentId // ignore: cast_nullable_to_non_nullable
                      as String,
            signedBy: null == signedBy
                ? _value.signedBy
                : signedBy // ignore: cast_nullable_to_non_nullable
                      as String,
            signedAt: null == signedAt
                ? _value.signedAt
                : signedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            signatureHash: null == signatureHash
                ? _value.signatureHash
                : signatureHash // ignore: cast_nullable_to_non_nullable
                      as String,
            ipAddress: freezed == ipAddress
                ? _value.ipAddress
                : ipAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            isValid: null == isValid
                ? _value.isValid
                : isValid // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DigitalSignatureImplCopyWith<$Res>
    implements $DigitalSignatureCopyWith<$Res> {
  factory _$$DigitalSignatureImplCopyWith(
    _$DigitalSignatureImpl value,
    $Res Function(_$DigitalSignatureImpl) then,
  ) = __$$DigitalSignatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String signatureId,
    String documentId,
    String signedBy,
    DateTime signedAt,
    String signatureHash,
    String? ipAddress,
    bool isValid,
  });
}

/// @nodoc
class __$$DigitalSignatureImplCopyWithImpl<$Res>
    extends _$DigitalSignatureCopyWithImpl<$Res, _$DigitalSignatureImpl>
    implements _$$DigitalSignatureImplCopyWith<$Res> {
  __$$DigitalSignatureImplCopyWithImpl(
    _$DigitalSignatureImpl _value,
    $Res Function(_$DigitalSignatureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DigitalSignature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatureId = null,
    Object? documentId = null,
    Object? signedBy = null,
    Object? signedAt = null,
    Object? signatureHash = null,
    Object? ipAddress = freezed,
    Object? isValid = null,
  }) {
    return _then(
      _$DigitalSignatureImpl(
        signatureId: null == signatureId
            ? _value.signatureId
            : signatureId // ignore: cast_nullable_to_non_nullable
                  as String,
        documentId: null == documentId
            ? _value.documentId
            : documentId // ignore: cast_nullable_to_non_nullable
                  as String,
        signedBy: null == signedBy
            ? _value.signedBy
            : signedBy // ignore: cast_nullable_to_non_nullable
                  as String,
        signedAt: null == signedAt
            ? _value.signedAt
            : signedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        signatureHash: null == signatureHash
            ? _value.signatureHash
            : signatureHash // ignore: cast_nullable_to_non_nullable
                  as String,
        ipAddress: freezed == ipAddress
            ? _value.ipAddress
            : ipAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        isValid: null == isValid
            ? _value.isValid
            : isValid // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DigitalSignatureImpl implements _DigitalSignature {
  const _$DigitalSignatureImpl({
    required this.signatureId,
    required this.documentId,
    required this.signedBy,
    required this.signedAt,
    required this.signatureHash,
    required this.ipAddress,
    required this.isValid,
  });

  factory _$DigitalSignatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$DigitalSignatureImplFromJson(json);

  @override
  final String signatureId;
  @override
  final String documentId;
  @override
  final String signedBy;
  @override
  final DateTime signedAt;
  @override
  final String signatureHash;
  @override
  final String? ipAddress;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'DigitalSignature(signatureId: $signatureId, documentId: $documentId, signedBy: $signedBy, signedAt: $signedAt, signatureHash: $signatureHash, ipAddress: $ipAddress, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DigitalSignatureImpl &&
            (identical(other.signatureId, signatureId) ||
                other.signatureId == signatureId) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.signedBy, signedBy) ||
                other.signedBy == signedBy) &&
            (identical(other.signedAt, signedAt) ||
                other.signedAt == signedAt) &&
            (identical(other.signatureHash, signatureHash) ||
                other.signatureHash == signatureHash) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    signatureId,
    documentId,
    signedBy,
    signedAt,
    signatureHash,
    ipAddress,
    isValid,
  );

  /// Create a copy of DigitalSignature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DigitalSignatureImplCopyWith<_$DigitalSignatureImpl> get copyWith =>
      __$$DigitalSignatureImplCopyWithImpl<_$DigitalSignatureImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DigitalSignatureImplToJson(this);
  }
}

abstract class _DigitalSignature implements DigitalSignature {
  const factory _DigitalSignature({
    required final String signatureId,
    required final String documentId,
    required final String signedBy,
    required final DateTime signedAt,
    required final String signatureHash,
    required final String? ipAddress,
    required final bool isValid,
  }) = _$DigitalSignatureImpl;

  factory _DigitalSignature.fromJson(Map<String, dynamic> json) =
      _$DigitalSignatureImpl.fromJson;

  @override
  String get signatureId;
  @override
  String get documentId;
  @override
  String get signedBy;
  @override
  DateTime get signedAt;
  @override
  String get signatureHash;
  @override
  String? get ipAddress;
  @override
  bool get isValid;

  /// Create a copy of DigitalSignature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DigitalSignatureImplCopyWith<_$DigitalSignatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeOrder _$ChangeOrderFromJson(Map<String, dynamic> json) {
  return _ChangeOrder.fromJson(json);
}

/// @nodoc
mixin _$ChangeOrder {
  String get changeOrderId => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get requestedBy => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get costImpactLkr => throw _privateConstructorUsedError;
  int get timelineImpactDays => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // pending, approved, rejected
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  String? get approverComments => throw _privateConstructorUsedError;
  List<String> get attachmentUrls => throw _privateConstructorUsedError;

  /// Serializes this ChangeOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeOrderCopyWith<ChangeOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeOrderCopyWith<$Res> {
  factory $ChangeOrderCopyWith(
    ChangeOrder value,
    $Res Function(ChangeOrder) then,
  ) = _$ChangeOrderCopyWithImpl<$Res, ChangeOrder>;
  @useResult
  $Res call({
    String changeOrderId,
    String projectId,
    String requestedBy,
    String description,
    int costImpactLkr,
    int timelineImpactDays,
    String status,
    DateTime createdAt,
    DateTime? approvedAt,
    String? approverComments,
    List<String> attachmentUrls,
  });
}

/// @nodoc
class _$ChangeOrderCopyWithImpl<$Res, $Val extends ChangeOrder>
    implements $ChangeOrderCopyWith<$Res> {
  _$ChangeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeOrderId = null,
    Object? projectId = null,
    Object? requestedBy = null,
    Object? description = null,
    Object? costImpactLkr = null,
    Object? timelineImpactDays = null,
    Object? status = null,
    Object? createdAt = null,
    Object? approvedAt = freezed,
    Object? approverComments = freezed,
    Object? attachmentUrls = null,
  }) {
    return _then(
      _value.copyWith(
            changeOrderId: null == changeOrderId
                ? _value.changeOrderId
                : changeOrderId // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            requestedBy: null == requestedBy
                ? _value.requestedBy
                : requestedBy // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            costImpactLkr: null == costImpactLkr
                ? _value.costImpactLkr
                : costImpactLkr // ignore: cast_nullable_to_non_nullable
                      as int,
            timelineImpactDays: null == timelineImpactDays
                ? _value.timelineImpactDays
                : timelineImpactDays // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            approvedAt: freezed == approvedAt
                ? _value.approvedAt
                : approvedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            approverComments: freezed == approverComments
                ? _value.approverComments
                : approverComments // ignore: cast_nullable_to_non_nullable
                      as String?,
            attachmentUrls: null == attachmentUrls
                ? _value.attachmentUrls
                : attachmentUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangeOrderImplCopyWith<$Res>
    implements $ChangeOrderCopyWith<$Res> {
  factory _$$ChangeOrderImplCopyWith(
    _$ChangeOrderImpl value,
    $Res Function(_$ChangeOrderImpl) then,
  ) = __$$ChangeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String changeOrderId,
    String projectId,
    String requestedBy,
    String description,
    int costImpactLkr,
    int timelineImpactDays,
    String status,
    DateTime createdAt,
    DateTime? approvedAt,
    String? approverComments,
    List<String> attachmentUrls,
  });
}

/// @nodoc
class __$$ChangeOrderImplCopyWithImpl<$Res>
    extends _$ChangeOrderCopyWithImpl<$Res, _$ChangeOrderImpl>
    implements _$$ChangeOrderImplCopyWith<$Res> {
  __$$ChangeOrderImplCopyWithImpl(
    _$ChangeOrderImpl _value,
    $Res Function(_$ChangeOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeOrderId = null,
    Object? projectId = null,
    Object? requestedBy = null,
    Object? description = null,
    Object? costImpactLkr = null,
    Object? timelineImpactDays = null,
    Object? status = null,
    Object? createdAt = null,
    Object? approvedAt = freezed,
    Object? approverComments = freezed,
    Object? attachmentUrls = null,
  }) {
    return _then(
      _$ChangeOrderImpl(
        changeOrderId: null == changeOrderId
            ? _value.changeOrderId
            : changeOrderId // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        requestedBy: null == requestedBy
            ? _value.requestedBy
            : requestedBy // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        costImpactLkr: null == costImpactLkr
            ? _value.costImpactLkr
            : costImpactLkr // ignore: cast_nullable_to_non_nullable
                  as int,
        timelineImpactDays: null == timelineImpactDays
            ? _value.timelineImpactDays
            : timelineImpactDays // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        approvedAt: freezed == approvedAt
            ? _value.approvedAt
            : approvedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        approverComments: freezed == approverComments
            ? _value.approverComments
            : approverComments // ignore: cast_nullable_to_non_nullable
                  as String?,
        attachmentUrls: null == attachmentUrls
            ? _value._attachmentUrls
            : attachmentUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeOrderImpl implements _ChangeOrder {
  const _$ChangeOrderImpl({
    required this.changeOrderId,
    required this.projectId,
    required this.requestedBy,
    required this.description,
    required this.costImpactLkr,
    required this.timelineImpactDays,
    required this.status,
    required this.createdAt,
    required this.approvedAt,
    required this.approverComments,
    required final List<String> attachmentUrls,
  }) : _attachmentUrls = attachmentUrls;

  factory _$ChangeOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeOrderImplFromJson(json);

  @override
  final String changeOrderId;
  @override
  final String projectId;
  @override
  final String requestedBy;
  @override
  final String description;
  @override
  final int costImpactLkr;
  @override
  final int timelineImpactDays;
  @override
  final String status;
  // pending, approved, rejected
  @override
  final DateTime createdAt;
  @override
  final DateTime? approvedAt;
  @override
  final String? approverComments;
  final List<String> _attachmentUrls;
  @override
  List<String> get attachmentUrls {
    if (_attachmentUrls is EqualUnmodifiableListView) return _attachmentUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachmentUrls);
  }

  @override
  String toString() {
    return 'ChangeOrder(changeOrderId: $changeOrderId, projectId: $projectId, requestedBy: $requestedBy, description: $description, costImpactLkr: $costImpactLkr, timelineImpactDays: $timelineImpactDays, status: $status, createdAt: $createdAt, approvedAt: $approvedAt, approverComments: $approverComments, attachmentUrls: $attachmentUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOrderImpl &&
            (identical(other.changeOrderId, changeOrderId) ||
                other.changeOrderId == changeOrderId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.costImpactLkr, costImpactLkr) ||
                other.costImpactLkr == costImpactLkr) &&
            (identical(other.timelineImpactDays, timelineImpactDays) ||
                other.timelineImpactDays == timelineImpactDays) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.approverComments, approverComments) ||
                other.approverComments == approverComments) &&
            const DeepCollectionEquality().equals(
              other._attachmentUrls,
              _attachmentUrls,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    changeOrderId,
    projectId,
    requestedBy,
    description,
    costImpactLkr,
    timelineImpactDays,
    status,
    createdAt,
    approvedAt,
    approverComments,
    const DeepCollectionEquality().hash(_attachmentUrls),
  );

  /// Create a copy of ChangeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeOrderImplCopyWith<_$ChangeOrderImpl> get copyWith =>
      __$$ChangeOrderImplCopyWithImpl<_$ChangeOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeOrderImplToJson(this);
  }
}

abstract class _ChangeOrder implements ChangeOrder {
  const factory _ChangeOrder({
    required final String changeOrderId,
    required final String projectId,
    required final String requestedBy,
    required final String description,
    required final int costImpactLkr,
    required final int timelineImpactDays,
    required final String status,
    required final DateTime createdAt,
    required final DateTime? approvedAt,
    required final String? approverComments,
    required final List<String> attachmentUrls,
  }) = _$ChangeOrderImpl;

  factory _ChangeOrder.fromJson(Map<String, dynamic> json) =
      _$ChangeOrderImpl.fromJson;

  @override
  String get changeOrderId;
  @override
  String get projectId;
  @override
  String get requestedBy;
  @override
  String get description;
  @override
  int get costImpactLkr;
  @override
  int get timelineImpactDays;
  @override
  String get status; // pending, approved, rejected
  @override
  DateTime get createdAt;
  @override
  DateTime? get approvedAt;
  @override
  String? get approverComments;
  @override
  List<String> get attachmentUrls;

  /// Create a copy of ChangeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeOrderImplCopyWith<_$ChangeOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
