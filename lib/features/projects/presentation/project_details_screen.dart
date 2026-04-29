import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({super.key, required this.projectId});
  final String projectId;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Project Details', style: TextStyle(fontSize: 16)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          future: FirebaseFirestore.instance.collection('projects').doc(projectId).get(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}', style: TextStyle(color: Theme.of(context).colorScheme.error)));
            }
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator(color: Color(0xFFE5A824)));
            }

            final data = snapshot.data!.data();
            if (data == null) {
              return Center(child: Text('Project not found.', style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(138))));
            }

            final title = (data['title'] ?? 'Untitled') as String;
            final projectType = (data['projectType'] ?? 'General') as String;
            final district = (data['district'] ?? 'Unknown District') as String;
            final budgetLkr = data['budgetLkr']?.toString() ?? '-';
            final timelineMonths = data['timelineMonths']?.toString() ?? '-';
            final description = (data['description'] ?? '') as String;
            final status = (data['status'] ?? 'Draft').toString().toUpperCase();

            final progressPercent = (data['progressPercent'] ?? 0) as num;
            final attachments = (data['attachments'] ?? const []) as List;

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE5A824).withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          status,
                          style: const TextStyle(color: Color(0xFFE5A824), fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 0.5),
                        ),
                      ),
                      Text(
                        'ID: 24901',
                        style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(61), fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Hero(
                    tag: 'project-title-$projectId',
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Theme.of(context).colorScheme.onSurface.withAlpha(138), size: 14),
                      const SizedBox(width: 4),
                      Text('$district, Sri Lanka', style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(138), fontSize: 13)),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _detailColumn(context, 'TYPE', projectType),
                      _detailColumn(context, 'BUDGET', 'LKR ${budgetLkr}M'),
                      _detailColumn(context, 'TIMELINE', '$timelineMonths Mo'),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Text('Project Progress', style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${progressPercent.toInt()}% completed', style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(138), fontSize: 12)),
                      const Text('On Schedule', style: TextStyle(color: Color(0xFFE5A824), fontSize: 12, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  LinearProgressIndicator(
                    value: progressPercent / 100,
                    backgroundColor: Theme.of(context).dividerTheme.color ?? Colors.transparent,
                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFE5A824)),
                    minHeight: 8,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  const SizedBox(height: 32),
                  Text('Overview', style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 12),
                  Text(
                    description.isEmpty ? 'No description provided.' : description,
                    style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(138), fontSize: 14, height: 1.5),
                  ),
                  const SizedBox(height: 32),
                  Text('Documentation', style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 16),
                  if (attachments.isEmpty)
                    Text('No documents attached.', style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(61), fontSize: 14))
                  else
                    ...attachments.map((a) {
                      final map = a is Map ? a.cast<String, dynamic>() : <String, dynamic>{};
                      final name = (map['name'] ?? 'Document') as String;
                      final downloadUrl = map['downloadUrl'] as String?;
                      return _attachmentTile(context, name, downloadUrl);
                    }),
                ],
              ),
            );
          },
        ),
      ),
    );

  Widget _detailColumn(BuildContext context, String label, String value) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withAlpha(97), fontSize: 10, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontSize: 13, fontWeight: FontWeight.bold)),
      ],
    );

  Widget _attachmentTile(BuildContext context, String name, String? url) => Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).dividerTheme.color ?? Colors.transparent),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFE5A824).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.picture_as_pdf_outlined, color: Color(0xFFE5A824), size: 18),
          ),
          const SizedBox(width: 16),
          Expanded(child: Text(name, style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontWeight: FontWeight.bold))),
          IconButton(
            icon: Icon(Icons.copy_rounded, size: 18, color: Theme.of(context).colorScheme.onSurface.withAlpha(138)),
            onPressed: () {
              if (url != null) {
                Clipboard.setData(ClipboardData(text: url));
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Link copied to clipboard')));
              }
            },
          ),
        ],
      ),
    );
}

