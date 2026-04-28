import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/auth/local_admin_session.dart';
import '../../../core/models/app_user.dart';
import '../../../core/theme/app_theme.dart';
import '../../admin/presentation/admin_dashboard_screen.dart';
import '../../home/presentation/home_tab.dart';
import '../../messages/presentation/messages_tab.dart';
import '../../projects/presentation/projects_management_screen.dart';
import '../../profile/presentation/profile_tab.dart';

class MainTabScaffold extends StatefulWidget {
  const MainTabScaffold({super.key, required this.user});
  final AppUser user;

  @override
  State<MainTabScaffold> createState() => _MainTabScaffoldState();
}

class _MainTabScaffoldState extends State<MainTabScaffold> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isAdmin = widget.user.role == UserRole.admin;

    final tabs = isAdmin
        ? [
            AdminDashboardScreen(adminUser: widget.user),
            const ProjectsManagementScreen(),
            const MessagesTab(),
            ProfileTab(user: widget.user),
          ]
        : [
            HomeTab(user: widget.user),
            const ProjectsManagementScreen(),
            const MessagesTab(),
            ProfileTab(user: widget.user),
          ];

    final titles = isAdmin
        ? ['Admin', 'Projects', 'Messages', 'Profile']
        : ['Home', 'Projects', 'Messages', 'Profile'];

    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_tabIndex], style: const TextStyle(fontSize: 16)),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'Logout',
            onPressed: () async {
              await LocalAdminSession.clear();
              await FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.logout_outlined, size: 20),
          ),
        ],
      ),
      body: IndexedStack(index: _tabIndex, children: tabs),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          currentIndex: _tabIndex,
          onTap: (value) => setState(() => _tabIndex = value),
          selectedItemColor: AppTheme.gold,
          unselectedItemColor: Theme.of(
            context,
          ).colorScheme.onSurface.withValues(alpha: 0.54),
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(fontSize: 10),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(
                  isAdmin
                      ? Icons.admin_panel_settings_outlined
                      : Icons.home_outlined,
                ),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(isAdmin ? Icons.admin_panel_settings : Icons.home),
              ),
              label: isAdmin ? 'Admin' : 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.work_outline),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.work),
              ),
              label: 'Projects',
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.chat_bubble_outline),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.chat_bubble),
              ),
              label: 'Messages',
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.person_outline),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.person),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
