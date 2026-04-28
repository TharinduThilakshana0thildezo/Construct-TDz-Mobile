import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> resolveChatTitle({
  required Map<String, dynamic> chatData,
  required String chatId,
  required String? currentUserId,
}) async {
  final participants = _stringList(chatData['participants']);

  if (currentUserId != null && participants.length == 2) {
    final peerId = participants.firstWhere(
      (participantId) => participantId != currentUserId,
      orElse: () => '',
    );

    if (peerId.isNotEmpty) {
      final peerSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(peerId)
          .get();
      final peerName = (peerSnapshot.data()?['displayName'] ?? '')
          .toString()
          .trim();

      if (peerName.isNotEmpty) return peerName;
    }
  }

  final title =
      chatData['title'] ?? chatData['projectTitle'] ?? chatData['projectName'];
  if (title is String && title.trim().isNotEmpty) return title.trim();

  return chatId.replaceAll('_', ' ');
}

List<String> _stringList(dynamic value) {
  if (value is! List) return const <String>[];
  return value.whereType<String>().toList(growable: false);
}
