// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collaboration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      messageId: json['messageId'] as String,
      chatId: json['chatId'] as String,
      senderId: json['senderId'] as String,
      message: json['message'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isEncrypted: json['isEncrypted'] as bool,
      attachmentUrls: (json['attachmentUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mentionedUsers: (json['mentionedUsers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      replyToMessageId: json['replyToMessageId'] as String?,
      reactions: (json['reactions'] as num?)?.toInt(),
      readBy: (json['readBy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'chatId': instance.chatId,
      'senderId': instance.senderId,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
      'isEncrypted': instance.isEncrypted,
      'attachmentUrls': instance.attachmentUrls,
      'mentionedUsers': instance.mentionedUsers,
      'replyToMessageId': instance.replyToMessageId,
      'reactions': instance.reactions,
      'readBy': instance.readBy,
    };

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
  chatId: json['chatId'] as String,
  projectId: json['projectId'] as String?,
  participants: (json['participants'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  title: json['title'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  lastMessageAt: json['lastMessageAt'] == null
      ? null
      : DateTime.parse(json['lastMessageAt'] as String),
  lastMessage: json['lastMessage'] as String?,
  isGroupChat: json['isGroupChat'] as bool,
  lastReadAt: (json['lastReadAt'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, DateTime.parse(e as String)),
  ),
  messages: (json['messages'] as List<dynamic>)
      .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'projectId': instance.projectId,
      'participants': instance.participants,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastMessageAt': instance.lastMessageAt?.toIso8601String(),
      'lastMessage': instance.lastMessage,
      'isGroupChat': instance.isGroupChat,
      'lastReadAt': instance.lastReadAt.map(
        (k, e) => MapEntry(k, e.toIso8601String()),
      ),
      'messages': instance.messages,
    };

_$VideoCallImpl _$$VideoCallImplFromJson(Map<String, dynamic> json) =>
    _$VideoCallImpl(
      callId: json['callId'] as String,
      chatId: json['chatId'] as String,
      initiatorId: json['initiatorId'] as String,
      participantIds: (json['participantIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      recordingUrl: json['recordingUrl'] as String,
      isScreenSharing: json['isScreenSharing'] as bool,
    );

Map<String, dynamic> _$$VideoCallImplToJson(_$VideoCallImpl instance) =>
    <String, dynamic>{
      'callId': instance.callId,
      'chatId': instance.chatId,
      'initiatorId': instance.initiatorId,
      'participantIds': instance.participantIds,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'durationSeconds': instance.durationSeconds,
      'recordingUrl': instance.recordingUrl,
      'isScreenSharing': instance.isScreenSharing,
    };

_$ProjectDocumentImpl _$$ProjectDocumentImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectDocumentImpl(
  documentId: json['documentId'] as String,
  projectId: json['projectId'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  storageUrl: json['storageUrl'] as String,
  fileSizeBytes: (json['fileSizeBytes'] as num).toInt(),
  uploadedAt: DateTime.parse(json['uploadedAt'] as String),
  uploadedBy: json['uploadedBy'] as String,
  version: (json['version'] as num?)?.toInt(),
  requiresSignature: json['requiresSignature'] as bool,
  signedBy: (json['signedBy'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, DateTime.parse(e as String)),
  ),
  expiryDate: json['expiryDate'] == null
      ? null
      : DateTime.parse(json['expiryDate'] as String),
  ocrExtractedText: json['ocrExtractedText'] as String?,
);

Map<String, dynamic> _$$ProjectDocumentImplToJson(
  _$ProjectDocumentImpl instance,
) => <String, dynamic>{
  'documentId': instance.documentId,
  'projectId': instance.projectId,
  'name': instance.name,
  'type': instance.type,
  'storageUrl': instance.storageUrl,
  'fileSizeBytes': instance.fileSizeBytes,
  'uploadedAt': instance.uploadedAt.toIso8601String(),
  'uploadedBy': instance.uploadedBy,
  'version': instance.version,
  'requiresSignature': instance.requiresSignature,
  'signedBy': instance.signedBy?.map(
    (k, e) => MapEntry(k, e.toIso8601String()),
  ),
  'expiryDate': instance.expiryDate?.toIso8601String(),
  'ocrExtractedText': instance.ocrExtractedText,
};

_$DigitalSignatureImpl _$$DigitalSignatureImplFromJson(
  Map<String, dynamic> json,
) => _$DigitalSignatureImpl(
  signatureId: json['signatureId'] as String,
  documentId: json['documentId'] as String,
  signedBy: json['signedBy'] as String,
  signedAt: DateTime.parse(json['signedAt'] as String),
  signatureHash: json['signatureHash'] as String,
  ipAddress: json['ipAddress'] as String?,
  isValid: json['isValid'] as bool,
);

Map<String, dynamic> _$$DigitalSignatureImplToJson(
  _$DigitalSignatureImpl instance,
) => <String, dynamic>{
  'signatureId': instance.signatureId,
  'documentId': instance.documentId,
  'signedBy': instance.signedBy,
  'signedAt': instance.signedAt.toIso8601String(),
  'signatureHash': instance.signatureHash,
  'ipAddress': instance.ipAddress,
  'isValid': instance.isValid,
};

_$ChangeOrderImpl _$$ChangeOrderImplFromJson(Map<String, dynamic> json) =>
    _$ChangeOrderImpl(
      changeOrderId: json['changeOrderId'] as String,
      projectId: json['projectId'] as String,
      requestedBy: json['requestedBy'] as String,
      description: json['description'] as String,
      costImpactLkr: (json['costImpactLkr'] as num).toInt(),
      timelineImpactDays: (json['timelineImpactDays'] as num).toInt(),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      approvedAt: json['approvedAt'] == null
          ? null
          : DateTime.parse(json['approvedAt'] as String),
      approverComments: json['approverComments'] as String?,
      attachmentUrls: (json['attachmentUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ChangeOrderImplToJson(_$ChangeOrderImpl instance) =>
    <String, dynamic>{
      'changeOrderId': instance.changeOrderId,
      'projectId': instance.projectId,
      'requestedBy': instance.requestedBy,
      'description': instance.description,
      'costImpactLkr': instance.costImpactLkr,
      'timelineImpactDays': instance.timelineImpactDays,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'approverComments': instance.approverComments,
      'attachmentUrls': instance.attachmentUrls,
    };
