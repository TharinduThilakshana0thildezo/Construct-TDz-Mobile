import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/ui_components/animated_entrance.dart';
import 'project_details_screen.dart';
import 'post_new_project_screen.dart';

class ProjectsManagementScreen extends StatefulWidget {
  const ProjectsManagementScreen({super.key});

  @override
  State<ProjectsManagementScreen> createState() =>
      _ProjectsManagementScreenState();
}

class _ProjectsManagementScreenState extends State<ProjectsManagementScreen> {
  final _searchController = TextEditingController();
  String _selectedTab = 'All Projects';
  final List<String> _tabs = ['All Projects', 'Ongoing', 'Completed'];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, size: 18),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text('Project Management', style: TextStyle(fontSize: 16)),
      centerTitle: true,
      actions: [
        IconButton(icon: const Icon(Icons.filter_list), onPressed: () {}),
      ],
    ),
    body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: TextField(
              controller: _searchController,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: Colors.white54,
                ),
                hintText: 'Search projects, locations...',
                hintStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(61),
                ),
                fillColor: Theme.of(context).cardTheme.color,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppTheme.radiusXl),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
              onChanged: (_) => setState(() {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: _tabs.map((tab) {
                final isSelected = _selectedTab == tab;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedTab = tab),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppTheme.gold
                            : Theme.of(context).cardTheme.color,
                        borderRadius: BorderRadius.circular(AppTheme.radiusXl),
                        border: Border.all(
                          color: isSelected
                              ? Colors.transparent
                              : (Theme.of(context).dividerTheme.color ??
                                    Colors.transparent),
                        ),
                      ),
                      child: Text(
                        tab,
                        style: TextStyle(
                          color: isSelected
                              ? Colors.black
                              : Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: _ProjectsList(
              statusFilter: _selectedTab,
              searchQuery: _searchController.text.trim().toLowerCase(),
            ),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const PostNewProjectScreen()));
      },
      backgroundColor: const Color(0xFFE5A824),
      foregroundColor: Colors.black,
      elevation: 2,
      child: const Icon(Icons.add),
    ),
  );
}

class _ProjectsList extends StatelessWidget {
  const _ProjectsList({required this.statusFilter, required this.searchQuery});
  final String statusFilter;
  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    Query<Map<String, dynamic>> query = FirebaseFirestore.instance.collection(
      'projects',
    );

    if (statusFilter == 'Ongoing') {
      query = query.where('status', isEqualTo: 'active');
    } else if (statusFilter == 'Completed') {
      query = query.where('status', isEqualTo: 'completed');
    }

    query = query.orderBy('createdAt', descending: true);

    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: query.snapshots(),
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
          return const Center(
            child: CircularProgressIndicator(color: AppTheme.gold),
          );
        }

        var docs = snapshot.data!.docs;

        if (searchQuery.isNotEmpty) {
          docs = docs.where((doc) {
            final title = (doc.data()['title'] ?? '').toString().toLowerCase();
            final district = (doc.data()['district'] ?? '')
                .toString()
                .toLowerCase();
            return title.contains(searchQuery) ||
                district.contains(searchQuery);
          }).toList();
        }

        if (docs.isEmpty) {
          return Center(
            child: Text(
              'No projects found.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
              ),
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          itemCount: docs.length,
          itemBuilder: (context, index) {
            final data = docs[index].data();
            final projectId = docs[index].id;
            return AnimatedEntrance(
              delay: Duration(milliseconds: 50 * index),
              child: _ProjectCard(data: data, projectId: projectId),
            );
          },
        );
      },
    );
  }
}

class _ProjectCard extends StatelessWidget {
  const _ProjectCard({required this.data, required this.projectId});
  final Map<String, dynamic> data;
  final String projectId;

  @override
  Widget build(BuildContext context) {
    final title = (data['title'] ?? 'Untitled') as String;
    final district = (data['district'] ?? 'Unknown District') as String;
    final budgetLkr = data['budgetLkr']?.toString() ?? 'N/A';
    final progress = (data['progressPercent'] ?? 0) as num;
    final status = (data['status'] ?? 'unknown') as String;

    final isCompleted = status == 'completed';
    final statusLabel = isCompleted ? 'COMPLETED' : 'ONGOING';
    final statusColor = isCompleted ? Colors.teal : Colors.green;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(AppTheme.radiusLg),
        border: Border.all(
          color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(AppTheme.radiusSm),
                ),
                child: Text(
                  statusLabel,
                  style: TextStyle(
                    color: statusColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                size: 14,
              ),
              const SizedBox(width: 4),
              Text(
                '$district, Sri Lanka',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BUDGET',
                    style: TextStyle(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withAlpha(97),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'LKR ${budgetLkr}M',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              if (isCompleted)
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'STATUS',
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Handed Over',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              else
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'PROGRESS',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(97),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${progress.toInt()}%',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
            ],
          ),
          if (!isCompleted) ...[
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: progress / 100,
              backgroundColor:
                  Theme.of(context).dividerTheme.color ?? Colors.transparent,
              valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.gold),
              minHeight: 6,
              borderRadius: BorderRadius.circular(3),
            ),
          ],
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) =>
                            ProjectDetailsScreen(projectId: projectId),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppTheme.gold,
                    side: const BorderSide(color: AppTheme.gold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppTheme.radiusSm),
                    ),
                  ),
                  child: Text(isCompleted ? 'View Report' : 'View Details'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) =>
                            ProjectDetailsScreen(projectId: projectId),
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: AppTheme.gold,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppTheme.radiusSm),
                    ),
                  ),
                  child: Text(isCompleted ? 'View Archive' : 'Manage Project'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
