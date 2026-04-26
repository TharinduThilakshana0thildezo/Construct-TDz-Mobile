import 'package:freezed_annotation/freezed_annotation.dart';

part 'collaboration_model.freezed.dart';
part 'collaboration_model.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String messageId,
    required String chatId,
    required String senderId,
    required String message,
    required DateTime createdAt,
    required bool isEncrypted,
    required List<String>? attachmentUrls,
    required List<String>? mentionedUsers,
    required String? replyToMessageId,
    required int? reactions,
    required List<String>? readBy,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

@freezed
class Chat with _$Chat {
  const factory Chat({
    required String chatId,
    required String? projectId,
    required List<String> participants,
    required String? title,
    required DateTime createdAt,
    required DateTime? lastMessageAt,
    required String? lastMessage,
    required bool isGroupChat,
    required Map<String, DateTime> lastReadAt,
    required List<ChatMessage> messages,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

@freezed
class VideoCall with _$VideoCall {
  const factory VideoCall({
    required String callId,
    required String chatId,
    required String initiatorId,
    required List<String> participantIds,
    required DateTime startTime,
    required DateTime? endTime,
    required int durationSeconds,
    required String recordingUrl,
    required bool isScreenSharing,
  }) = _VideoCall;

  factory VideoCall.fromJson(Map<String, dynamic> json) =>
      _$VideoCallFromJson(json);
}

@freezed
class ProjectDocument with _$ProjectDocument {
  const factory ProjectDocument({
    required String documentId,
    required String projectId,
    required String name,
    required String type, // contract, blueprint, invoice, permit, etc.
    required String storageUrl,
    required int fileSizeBytes,
    required DateTime uploadedAt,
    required String uploadedBy,
    required int? version,
    required bool requiresSignature,
    required Map<String, DateTime>? signedBy,
    required DateTime? expiryDate,
    required String? ocrExtractedText,
  }) = _ProjectDocument;

  factory ProjectDocument.fromJson(Map<String, dynamic> json) =>
      _$ProjectDocumentFromJson(json);
}

@freezed
class DigitalSignature with _$DigitalSignature {
  const factory DigitalSignature({
    required String signatureId,
    required String documentId,
    required String signedBy,
    required DateTime signedAt,
    required String signatureHash,
    required String? ipAddress,
    required bool isValid,
  }) = _DigitalSignature;

  factory DigitalSignature.fromJson(Map<String, dynamic> json) =>
      _$DigitalSignatureFromJson(json);
}

@freezed
class ChangeOrder with _$ChangeOrder {
  const factory ChangeOrder({
    required String changeOrderId,
    required String projectId,
    required String requestedBy,
    required String description,
    required int costImpactLkr,
    required int timelineImpactDays,
    required String status, // pending, approved, rejected
    required DateTime createdAt,
    required DateTime? approvedAt,
    required String? approverComments,
    required List<String> attachmentUrls,
  }) = _ChangeOrder;

  factory ChangeOrder.fromJson(Map<String, dynamic> json) =>
      _$ChangeOrderFromJson(json);
}
