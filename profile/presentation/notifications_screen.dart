import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shimmer/shimmer.dart';
import '../services/notification_service.dart';
import '../models/notification_model.dart';

class NotificationsScreen extends StatelessWidget {

  NotificationsScreen({super.key});
  final NotificationService _notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    final userId = FirebaseAuth.instance.currentUser?.uid;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Notifications', style: TextStyle(fontSize: 16)),
        centerTitle: true,
      ),
      body: userId == null
          ? const Center(child: Text('Please log in to see notifications.'))
          : StreamBuilder<List<AppNotification>>(
              stream: _notificationService.streamNotifications(userId),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Error: ${snapshot.error}',
                      style: TextStyle(color: Theme.of(context).colorScheme.error),
                    ),
                  );
                }

                if (!snapshot.hasData) {
                  return _buildShimmerList(context);
                }

                final notifications = snapshot.data!;
                if (notifications.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications_off_outlined,
                            size: 64, color: Theme.of(context).colorScheme.onSurface.withAlpha(61)),
                        const SizedBox(height: 16),
                        Text(
                          'No new notifications',
                          style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(138)),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    final note = notifications[index];
                    return _NotificationTile(
                      notification: note,
                      userId: userId,
                      onTap: () => _notificationService.markAsRead(userId, note.id),
                    );
                  },
                );
              },
            ),
    );
  }

  Widget _buildShimmerList(BuildContext context) => ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Shimmer.fromColors(
          baseColor: Theme.of(context).cardTheme.color ?? Colors.grey.shade300,
          highlightColor: Theme.of(context).scaffoldBackgroundColor,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).cardTheme.color,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
}

class _NotificationTile extends StatelessWidget {

  const _NotificationTile({
    required this.notification,
    required this.userId,
    required this.onTap,
  });
  final AppNotification notification;
  final String userId;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: notification.isRead
          ? Theme.of(context).cardTheme.color
          : Theme.of(context).colorScheme.primary.withAlpha(15),
      child: ListTile(
        leading: Icon(
          notification.isRead ? Icons.notifications_outlined : Icons.notifications_active,
          color: notification.isRead ? Theme.of(context).colorScheme.onSurface.withAlpha(138) : const Color(0xFFE5A824),
        ),
        title: Text(
          notification.title,
          style: TextStyle(
            fontWeight: notification.isRead ? FontWeight.normal : FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notification.body,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(138)),
            ),
            const SizedBox(height: 4),
            Text(
              _formatTimestamp(notification.timestamp),
              style: TextStyle(fontSize: 10, color: Theme.of(context).colorScheme.onSurface.withAlpha(97)),
            ),
          ],
        ),
        trailing: notification.isRead
            ? null
            : Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Color(0xFFE5A824),
                  shape: BoxShape.circle,
                ),
              ),
        onTap: onTap,
      ),
    );

  String _formatTimestamp(DateTime dt) => "${dt.day}/${dt.month}/${dt.year} ${dt.hour}:${dt.minute.toString().padLeft(2, '0')}";
}
