import 'package:cloud_firestore/cloud_firestore.dart';

const String bidsAdminControlsCollection = 'admin_controls';
const String bidsAdminControlsDocId = 'bids';
const String bidsDemoSeedSource = 'admin_demo';

const List<Map<String, Object>> bidsDemoTemplates = [
  {
    'projectTitle': 'Green Villa Renovation',
    'amountLkr': 1850000,
    'timelineMonths': 5,
    'capacity': 'Medium Capacity',
    'status': 'under_review',
    'subtitle': 'Interior and facade refresh for a suburban family home.',
  },
  {
    'projectTitle': 'Lakeside Office Extension',
    'amountLkr': 3200000,
    'timelineMonths': 7,
    'capacity': 'High Capacity',
    'status': 'shortlisted',
    'subtitle': 'Steel-framed extension with meeting spaces and utilities.',
  },
  {
    'projectTitle': 'Compact Apartment Fit-Out',
    'amountLkr': 940000,
    'timelineMonths': 3,
    'capacity': 'Low Capacity',
    'status': 'under_review',
    'subtitle': 'Kitchen, lighting, and finishing works for a city apartment.',
  },
];

List<Map<String, dynamic>> buildDemoBids({
  required String contractorId,
  String projectTitlePrefix = 'Demo',
  bool forFirestore = false,
}) {
  final prefix = projectTitlePrefix.trim().isEmpty
      ? 'Demo'
      : projectTitlePrefix.trim();

  return bidsDemoTemplates
      .asMap()
      .entries
      .map((entry) {
        final index = entry.key;
        final template = entry.value;
        final createdAt = DateTime.now().subtract(
          Duration(minutes: index * 18),
        );

        return <String, dynamic>{
          'contractorId': contractorId,
          'projectId':
              '${prefix.toLowerCase().replaceAll(' ', '_')}_${template['projectTitle']}',
          'projectTitle': '${prefix} ${template['projectTitle']}',
          'amountLkr': template['amountLkr'],
          'timelineMonths': template['timelineMonths'],
          'capacity': template['capacity'],
          'status': template['status'],
          'message': template['subtitle'],
          'seedSource': bidsDemoSeedSource,
          'isDemo': true,
          'createdAt': forFirestore ? FieldValue.serverTimestamp() : createdAt,
          'updatedAt': forFirestore ? FieldValue.serverTimestamp() : createdAt,
        };
      })
      .toList(growable: false);
}
