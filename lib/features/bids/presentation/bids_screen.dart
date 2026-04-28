import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../messages/presentation/chat_screen.dart';
import '../data/bids_demo_data.dart';

class BidsScreen extends StatefulWidget {
  const BidsScreen({super.key});

  @override
  State<BidsScreen> createState() => _BidsScreenState();
}

class _BidsScreenState extends State<BidsScreen> {
  String _selectedFilter = 'All Proposals';
  final List<String> _filters = [
    'All Proposals',
    'Shortlisted',
    'Under Review',
  ];

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Bids & Proposals', style: TextStyle(fontSize: 16)),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.filter_list), onPressed: () {}),
        ],
      ),
      body: user == null
          ? Center(
              child: Text(
                'Please log in to view bids.',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                ),
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: _selectedFilter,
                        dropdownColor: Theme.of(context).cardTheme.color,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(138),
                        ),
                        underline: const SizedBox(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() => _selectedFilter = newValue);
                          }
                        },
                        items: _filters
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _BidsList(
                    status: _getFilterStatus(),
                    contractorId: user.uid,
                  ),
                ),
              ],
            ),
    );
  }

  String _getFilterStatus() {
    if (_selectedFilter == 'Shortlisted') return 'shortlisted';
    if (_selectedFilter == 'Under Review') return 'under_review';
    return 'all';
  }
}

class _BidsList extends StatelessWidget {
  const _BidsList({required this.status, required this.contractorId});
  final String status;
  final String contractorId;

  @override
  Widget build(BuildContext context) {
    final demoEnabledStream = FirebaseFirestore.instance
        .collection(bidsAdminControlsCollection)
        .doc(bidsAdminControlsDocId)
        .snapshots();

    // Keep the query simple so Firestore does not require a composite index.
    final query = FirebaseFirestore.instance
        .collection('bids')
        .where('contractorId', isEqualTo: contractorId);

    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: demoEnabledStream,
      builder: (context, controlSnapshot) {
        final demoModeEnabled =
            controlSnapshot.data?.data()?['demoModeEnabled'] == true;

        return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: query.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(
                            context,
                          ).colorScheme.error.withValues(alpha: 0.1),
                        ),
                        child: Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Unable to load bids',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Check the Firestore connection or use the admin panel to seed demo bids.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                      const SizedBox(height: 24),
                      FilledButton(
                        onPressed: () {
                          (context as Element).markNeedsBuild();
                        },
                        child: const Text('Try Again'),
                      ),
                    ],
                  ),
                ),
              );
            }

            if (!snapshot.hasData) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                itemCount: 3,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Shimmer.fromColors(
                    baseColor:
                        Theme.of(
                          context,
                        ).cardTheme.color?.withValues(alpha: 0.5) ??
                        Colors.grey.shade300,
                    highlightColor:
                        Theme.of(context).cardTheme.color ??
                        Colors.grey.shade100,
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardTheme.color,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              );
            }

            final allDocs = snapshot.data!.docs.toList()
              ..sort((left, right) {
                DateTime toDate(dynamic value) {
                  if (value is Timestamp) return value.toDate();
                  if (value is DateTime) return value;
                  return DateTime.fromMillisecondsSinceEpoch(0);
                }

                return toDate(
                  right.data()['createdAt'],
                ).compareTo(toDate(left.data()['createdAt']));
              });

            final filteredDocs = status == 'all'
                ? allDocs
                : allDocs.where((doc) => doc['status'] == status).toList();

            if (filteredDocs.isEmpty && demoModeEnabled) {
              final demoBids = buildDemoBids(contractorId: contractorId);
              final demoFiltered = status == 'all'
                  ? demoBids
                  : demoBids.where((doc) => doc['status'] == status).toList();

              return _BidsListView(bids: demoFiltered, isDemo: true);
            }

            if (filteredDocs.isEmpty) {
              final label = status == 'all'
                  ? 'proposals'
                  : status.replaceAll('_', ' ');
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.1),
                      ),
                      child: Icon(
                        Icons.inbox_outlined,
                        size: 48,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.3),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No $label yet',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      demoModeEnabled
                          ? 'Use Admin > Bids to seed demo proposals.'
                          : 'When contractors submit bids, they\'ll appear here',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }

            return _BidsListView(
              bids: filteredDocs
                  .map((doc) => doc.data())
                  .toList(growable: false),
              isDemo: false,
            );
          },
        );
      },
    );
  }
}

class _BidsListView extends StatelessWidget {
  const _BidsListView({required this.bids, required this.isDemo});

  final List<Map<String, dynamic>> bids;
  final bool isDemo;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      itemCount: bids.length,
      itemBuilder: (context, index) {
        final bidData = bids[index];

        final projectTitle = (bidData['projectTitle'] ?? 'Project') as String;
        final amount = bidData['amountLkr']?.toString() ?? '-';
        final timeline = bidData['timelineMonths']?.toString() ?? '-';
        final capacity = bidData['capacity'] as String? ?? 'High Capacity';
        final status = (bidData['status'] ?? 'under_review') as String;
        final subtitle = (bidData['message'] ?? '') as String;

        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      projectTitle,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (isDemo)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5A824).withValues(alpha: 0.14),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const Text(
                        'DEMO',
                        style: TextStyle(
                          color: Color(0xFFE5A824),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8,
                        ),
                      ),
                    )
                  else
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5A824).withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.picture_as_pdf_outlined,
                        color: Color(0xFFE5A824),
                        size: 20,
                      ),
                    ),
                ],
              ),
              if (subtitle.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.62),
                    fontSize: 13,
                  ),
                ),
              ],
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _metricColumn(context, 'BUDGET', 'LKR ${amount}M'),
                  _metricColumn(context, 'TIMELINE', '$timeline Months'),
                  _metricColumn(context, 'CAPACITY', capacity),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'Status: ${status.replaceAll('_', ' ')}',
                style: TextStyle(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.52),
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ChatScreen(
                              chatId: 'elite_builders_support',
                            ),
                          ),
                        );
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFFE5A824),
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      icon: const Icon(Icons.chat_bubble_outline, size: 18),
                      label: const Text(
                        'Chat',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget _metricColumn(BuildContext context, String label, String value) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.4),
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
