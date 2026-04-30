import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/models/app_user.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/ui_components/animated_entrance.dart';
import '../../onboarding/presentation/how_it_works_screen.dart';
import '../../projects/presentation/post_new_project_screen.dart';
import '../../projects/presentation/project_details_screen.dart';
import '../../profile/presentation/connections_screen.dart';
import '../../profile/presentation/notifications_screen.dart';
import 'cost_estimator_screen.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key, required this.user});
  final AppUser user;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Row(
        children: [
          const Icon(Icons.architecture, color: AppTheme.gold),
          const SizedBox(width: 8),
          const Text(
            'CONSTRUCTIONLK',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none),
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => NotificationsScreen()));
          },
        ),
      ],
    ),
    body: RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back, ${user.displayName.isEmpty ? 'Namal' : user.displayName}',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Find verified professionals, live projects, and secure collaboration in one place.',
                          style: TextStyle(
                            color: AppTheme.mutedOnSurface(context),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 120),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppTheme.gold.withAlpha(25),
                            AppTheme.gold.withAlpha(12),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(AppTheme.radiusMd),
                        border: Border.all(color: AppTheme.gold.withAlpha(77)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.gold.withAlpha(51),
                            ),
                            child: const Icon(
                              Icons.lightbulb_outline,
                              color: AppTheme.gold,
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Need a quick walkthrough?',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.gold,
                                  ),
                                ),
                                Text(
                                  'Open the guide to see how projects, bids, and chats work.',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppTheme.mutedOnSurface(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => const HowItWorksScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: AppTheme.gold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 180),
                    child: _buildHeroCard(context),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: EntranceAnimation(
                          delay: const Duration(milliseconds: 240),
                          child: _actionTile(
                            context: context,
                            icon: Icons.people_alt_outlined,
                            label: 'First\nConnection',
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => const ConnectionsScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: EntranceAnimation(
                          delay: const Duration(milliseconds: 300),
                          child: _actionTile(
                            context: cont ext,
                            icon: Icons.calculate_outlined,
                            label: 'Cost\nEstimator',
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => const CostEstimatorScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 360),
                    child: _buildPlatformStats(context),
                  ),
                  const SizedBox(height: 24),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 420),
                    child: _premiumBanner(context),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
          StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: FirebaseFirestore.instance
                .collection('projects')
                .orderBy('createdAt', descending: true)
                .limit(5)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const SliverToBoxAdapter(child: SizedBox());
              }

              if (!snapshot.hasData) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      child: Shimmer.fromColors(
                        baseColor:
                            Theme.of(context).cardTheme.color ??
                            Colors.grey.shade300,
                        highlightColor: Theme.of(
                          context,
                        ).scaffoldBackgroundColor,
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardTheme.color,
                            borderRadius: BorderRadius.circular(
                              AppTheme.radiusMd,
                            ),
                          ),
                        ),
                      ),
                    ),
                    childCount: 3,
                  ),
                );
              }

              final docs = snapshot.data!.docs;
              if (docs.isEmpty) {
                return const SliverToBoxAdapter(child: SizedBox());
              }

              return SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final data = docs[index].data();
                  final name = (data['title'] ?? 'Untitled') as String;
                  final district = (data['district'] ?? '') as String;
                  final progress = (data['progressPercent'] ?? 0) as num;

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 6,
                    ),
                    child: EntranceAnimation(
                      delay: Duration(milliseconds: 40 * index),
                      child: ListTile(
                        tileColor: Theme.of(context).cardTheme.color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppTheme.radiusMd,
                          ),
                          side: BorderSide(
                            color:
                                Theme.of(context).dividerTheme.color ??
                                Colors.transparent,
                          ),
                        ),
                        title: Hero(
                          tag: 'project-title-${docs[index].id}',
                          child: Material(
                            type: MaterialType.transparency,
                            child: Text(
                              name,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ),
                        subtitle: Text(
                          district.isEmpty
                              ? 'Project'
                              : '$district • ${progress.toInt()}%',
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withAlpha(138),
                          ),
                        ),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(138),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ProjectDetailsScreen(
                                projectId: docs[index].id,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }, childCount: docs.length),
              );
            },
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    ),
  );

  Widget _buildHeroCard(BuildContext context) => Card(
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      side: BorderSide(
        color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Post your next project',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Create a detailed brief and invite verified contractors to bid.',
            style: TextStyle(
              color: AppTheme.mutedOnSurface(context),
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const PostNewProjectScreen()),
              );
            },
            style: FilledButton.styleFrom(
              backgroundColor: AppTheme.gold,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppTheme.radiusSm),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Post a Project'),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, size: 16),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  Widget _actionTile({
    required BuildContext context,
    required IconData icon,
    required String label,
    VoidCallback? onTap,
  }) => Card(
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      side: BorderSide(
        color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
      ),
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: AppTheme.gold, size: 28),
            const SizedBox(height: 16),
            Text(
              label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _statColumn(
    BuildContext context,
    String number,
    String symbol,
    String title,
    String subtitle,
  ) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            symbol,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.gold,
            ),
          ),
        ],
      ),
      const SizedBox(height: 4),
      Text(
        title,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
          letterSpacing: 0.5,
        ),
      ),
      const SizedBox(height: 2),
      Text(
        subtitle,
        style: TextStyle(
          fontSize: 11,
          color: Theme.of(context).colorScheme.onSurface.withAlpha(97),
        ),
      ),
    ],
  );

  Widget _premiumBanner(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppTheme.darkBackground
          : const Color(0xFFFFFDF5),
      borderRadius: BorderRadius.circular(AppTheme.radiusMd),
      border: Border.all(color: AppTheme.gold.withValues(alpha: 0.3)),
    ),
    child: Row(
      children: [
        const Icon(Icons.verified_user, color: AppTheme.gold, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 12,
                color: AppTheme.mutedOnSurface(context),
                height: 1.4,
              ),
              children: [
                TextSpan(
                  text: 'Premium Verification. ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text:
                      'All contractors are background-checked for the highest standards.',
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  Widget _buildPlatformStats(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Platform Statistics',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          Row(
            children: [
              const Icon(Icons.circle, color: AppTheme.gold, size: 10),
              const SizedBox(width: 6),
              const Text(
                'LIVE UPDATES',
                style: TextStyle(
                  fontSize: 12,
                  color: AppTheme.gold,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 16),
      Row(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: FirebaseFirestore.instance
                  .collection('users')
                  .where('role', whereIn: ['contractor', 'engineer'])
                  .snapshots(),
              builder: (context, snapshot) => _statColumn(
                context,
                _formatCount(snapshot.data?.docs.length),
                '+',
                'PROFESSIONALS',
                snapshot.hasData ? 'Verified network' : 'Loading network',
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: FirebaseFirestore.instance
                  .collection('projects')
                  .where('status', isEqualTo: 'active')
                  .snapshots(),
              builder: (context, snapshot) => _statColumn(
                context,
                _formatCount(snapshot.data?.docs.length),
                '+',
                'ACTIVE PROJECTS',
                snapshot.hasData ? 'Islandwide activity' : 'Loading activity',
              ),
            ),
          ),
        ],
      ),
    ],
  );

  String _formatCount(int? count) {
    if (count == null) return '--';
    return NumberFormat.decimalPattern().format(count);
  }
}
