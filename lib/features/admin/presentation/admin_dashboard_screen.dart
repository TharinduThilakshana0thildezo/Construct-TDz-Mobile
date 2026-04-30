import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../core/models/app_user.dart';
import '../../../core/theme/app_theme.dart';
import '../../bids/data/bids_demo_data.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key, required this.adminUser});
  final AppUser adminUser;

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  final _uidController = TextEditingController();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _demoContractorUidController = TextEditingController();
  final _demoProjectPrefixController = TextEditingController(text: 'Demo');
  UserRole _newUserRole = UserRole.client;
  bool _newUserOnboarding = true;
  bool _savingUser = false;
  bool _seedingBids = false;

  @override
  void dispose() {
    _uidController.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _demoContractorUidController.dispose();
    _demoProjectPrefixController.dispose();
    super.dispose();
  }

  Future<void> _addOrUpdateUser() async {
    final uid = _uidController.text.trim();
    final email = _emailController.text.trim().toLowerCase();
    final name = _nameController.text.trim();

    if (uid.isEmpty || email.isEmpty) {
      _showMessage('UID and email are required.');
      return;
    }

    setState(() => _savingUser = true);
    try {
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'uid': uid,
        'email': email,
        'displayName': name,
        'role': _newUserRole.name,
        'onboardingCompleted': _newUserOnboarding,
        'managedByAdmin': true,
        'updatedAt': FieldValue.serverTimestamp(),
        'createdAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      _uidController.clear();
      _emailController.clear();
      _nameController.clear();
      setState(() {
        _newUserRole = UserRole.client;
        _newUserOnboarding = true;
      });
      _showMessage('User record saved.');
    } catch (e) {
      _showMessage('Failed to save user: $e');
    } finally {
      if (mounted) setState(() => _savingUser = false);
    }
  }

  Future<void> _deleteUser(
    DocumentSnapshot<Map<String, dynamic>> userDoc,
  ) async {
    final data = userDoc.data() ?? const <String, dynamic>{};
    final uid = userDoc.id;
    final email = (data['email'] ?? '') as String;

    if (email.toLowerCase() == 'admin@gmail.com') {
      _showMessage('Admin account cannot be deleted from the app.');
      return;
    }

    final confirmed = await _confirm(
      'Delete user?',
      'This deletes the user profile, all projects created by this user, and chats that include this user.',
    );
    if (!confirmed) return;

    try {
      await _deleteProjectsByClient(uid);
      await _deleteChatsByParticipant(uid);
      await FirebaseFirestore.instance.collection('users').doc(uid).delete();

      _showMessage('User profile and linked data deleted.');
    } catch (e) {
      _showMessage('Failed to delete user: $e');
    }
  }

  Future<void> _deleteProject(
    DocumentSnapshot<Map<String, dynamic>> projectDoc,
  ) async {
    final confirmed = await _confirm(
      'Delete project?',
      'This deletes the project and linked chats/messages.',
    );
    if (!confirmed) return;

    try {
      final projectId = projectDoc.id;
      await _deleteChatsByProject(projectId);
      await FirebaseFirestore.instance
          .collection('projects')
          .doc(projectId)
          .delete();
      _showMessage('Project deleted.');
    } catch (e) {
      _showMessage('Failed to delete project: $e');
    }
  }

  Future<void> _setUserRole(String uid, UserRole role) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'role': role.name,
        'updatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
      _showMessage('Role updated to ${role.name}.');
    } catch (e) {
      _showMessage('Failed to update role: $e');
    }
  }

  Future<void> _setProjectStatus(String projectId, String status) async {
    try {
      await FirebaseFirestore.instance
          .collection('projects')
          .doc(projectId)
          .set({
            'status': status,
            'updatedAt': FieldValue.serverTimestamp(),
          }, SetOptions(merge: true));
      _showMessage('Project status updated to $status.');
    } catch (e) {
      _showMessage('Failed to update status: $e');
    }
  }

  Future<void> _setDemoModeEnabled(bool enabled) async {
    try {
      await FirebaseFirestore.instance
          .collection(bidsAdminControlsCollection)
          .doc(bidsAdminControlsDocId)
          .set({
            'demoModeEnabled': enabled,
            'updatedAt': FieldValue.serverTimestamp(),
            'updatedBy': widget.adminUser.uid,
          }, SetOptions(merge: true));
      _showMessage(enabled ? 'Demo bids enabled.' : 'Demo bids disabled.');
    } catch (e) {
      _showMessage('Failed to update demo mode: $e');
    }
  }

  Future<void> _seedDemoBids() async {
    final contractorUid = _demoContractorUidController.text.trim();
    if (contractorUid.isEmpty) {
      _showMessage('Enter a contractor UID to seed demo bids.');
      return;
    }

    final projectPrefix = _demoProjectPrefixController.text.trim();
    setState(() => _seedingBids = true);
    try {
      final batch = FirebaseFirestore.instance.batch();
      final demoBids = buildDemoBids(
        contractorId: contractorUid,
        projectTitlePrefix: projectPrefix,
        forFirestore: true,
      );

      for (final bid in demoBids) {
        final doc = FirebaseFirestore.instance.collection('bids').doc();
        batch.set(doc, {
          ...bid,
          'seedSource': bidsDemoSeedSource,
          'isDemo': true,
          'createdBy': widget.adminUser.uid,
          'updatedBy': widget.adminUser.uid,
          'createdAt': FieldValue.serverTimestamp(),
          'updatedAt': FieldValue.serverTimestamp(),
        });
      }

      batch.set(
        FirebaseFirestore.instance
            .collection(bidsAdminControlsCollection)
            .doc(bidsAdminControlsDocId),
        {
          'demoModeEnabled': true,
          'lastSeededAt': FieldValue.serverTimestamp(),
          'lastSeededBy': widget.adminUser.uid,
          'demoContractorUid': contractorUid,
          'demoProjectPrefix': projectPrefix,
          'updatedAt': FieldValue.serverTimestamp(),
        },
        SetOptions(merge: true),
      );

      await batch.commit();
      _showMessage('Seeded demo bids for $contractorUid.');
    } catch (e) {
      _showMessage('Failed to seed demo bids: $e');
    } finally {
      if (mounted) setState(() => _seedingBids = false);
    }
  }

  Future<void> _clearDemoBids() async {
    final contractorUid = _demoContractorUidController.text.trim();
    try {
      final query = FirebaseFirestore.instance
          .collection('bids')
          .where('seedSource', isEqualTo: bidsDemoSeedSource);

      final snapshot = await query.get();
      final batch = FirebaseFirestore.instance.batch();

      for (final doc in snapshot.docs) {
        final bidContractorId = (doc.data()['contractorId'] ?? '') as String;
        if (contractorUid.isNotEmpty && bidContractorId != contractorUid) {
          continue;
        }
        batch.delete(doc.reference);
      }

      batch.set(
        FirebaseFirestore.instance
            .collection(bidsAdminControlsCollection)
            .doc(bidsAdminControlsDocId),
        {
          'demoModeEnabled': false,
          'demoClearedAt': FieldValue.serverTimestamp(),
          'demoClearedBy': widget.adminUser.uid,
          'updatedAt': FieldValue.serverTimestamp(),
        },
        SetOptions(merge: true),
      );

      await batch.commit();
      _showMessage('Cleared demo bids.');
    } catch (e) {
      _showMessage('Failed to clear demo bids: $e');
    }
  }

  Future<void> _deleteProjectsByClient(String clientId) async {
    final projects = await FirebaseFirestore.instance
        .collection('projects')
        .where('clientId', isEqualTo: clientId)
        .get();

    for (final doc in projects.docs) {
      await _deleteChatsByProject(doc.id);
      await doc.reference.delete();
    }
  }

  Future<void> _deleteChatsByParticipant(String uid) async {
    final chats = await FirebaseFirestore.instance
        .collection('chats')
        .where('participants', arrayContains: uid)
        .get();

    for (final chat in chats.docs) {
      await _deleteChatWithMessages(chat.reference);
    }
  }

  Future<void> _deleteChatsByProject(String projectId) async {
    final chats = await FirebaseFirestore.instance
        .collection('chats')
        .where('projectId', isEqualTo: projectId)
        .get();

    for (final chat in chats.docs) {
      await _deleteChatWithMessages(chat.reference);
    }
  }

  Future<void> _deleteChatWithMessages(
    DocumentReference<Map<String, dynamic>> chatRef,
  ) async {
    final messages = await chatRef.collection('messages').get();
    for (final msg in messages.docs) {
      await msg.reference.delete();
    }
    await chatRef.delete();
  }

  Future<bool> _confirm(String title, String message) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Confirm'),
          ),
        ],
      ),
    );

    return result ?? false;
  }

  void _showMessage(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    if (widget.adminUser.role != UserRole.admin) {
      return const Center(child: Text('Access denied.'));
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Admin Control Center',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Manage users, projects, and moderation actions from one place.',
                style: TextStyle(color: AppTheme.mutedOnSurface(context)),
              ),
              const SizedBox(height: 16),
              _buildStats(),
              const SizedBox(height: 18),
              _buildAddUserCard(),
              const SizedBox(height: 18),
              _buildUsersList(),
              const SizedBox(height: 18),
              _buildProjectsList(),
              const SizedBox(height: 18),
              _buildBidsControlCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStats() {
    final usersStream = FirebaseFirestore.instance
        .collection('users')
        .snapshots();
    final projectsStream = FirebaseFirestore.instance
        .collection('projects')
        .snapshots();
    final chatsStream = FirebaseFirestore.instance
        .collection('chats')
        .snapshots();

    return Row(
      children: [
        Expanded(
          child: _liveCountCard(
            label: 'Users',
            stream: usersStream,
            icon: Icons.people_outline,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _liveCountCard(
            label: 'Projects',
            stream: projectsStream,
            icon: Icons.work_outline,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _liveCountCard(
            label: 'Chats',
            stream: chatsStream,
            icon: Icons.chat_bubble_outline,
          ),
        ),
      ],
    );
  }

  Widget _liveCountCard({
    required String label,
    required Stream<QuerySnapshot<Map<String, dynamic>>> stream,
    required IconData icon,
  }) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: stream,
      builder: (context, snapshot) {
        final count = snapshot.data?.docs.length ?? 0;
        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
            borderRadius: BorderRadius.circular(AppTheme.radiusMd),
            border: Border.all(
              color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: AppTheme.gold, size: 18),
              const SizedBox(height: 8),
              Text(
                '$count',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                label,
                style: TextStyle(color: AppTheme.mutedOnSurface(context)),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAddUserCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
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
          const Text(
            'Add or Update User Profile',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _uidController,
            decoration: const InputDecoration(labelText: 'User UID'),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Display name'),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<UserRole>(
                  key: ValueKey<UserRole>(_newUserRole),
                  initialValue: _newUserRole,
                  decoration: const InputDecoration(labelText: 'Role'),
                  items: UserRole.values
                      .map(
                        (role) => DropdownMenuItem<UserRole>(
                          value: role,
                          child: Text(role.name),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() => _newUserRole = value);
                    }
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: SwitchListTile(
                  value: _newUserOnboarding,
                  onChanged: (value) =>
                      setState(() => _newUserOnboarding = value),
                  title: const Text('Onboarded'),
                  dense: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          FilledButton.icon(
            onPressed: _savingUser ? null : _addOrUpdateUser,
            icon: _savingUser
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.save_outlined),
            label: const Text('Save User Profile'),
          ),
          const SizedBox(height: 6),
          Text(
            'Note: This updates Firestore user profiles. Deleting Auth accounts must be done from Firebase Console/Admin SDK.',
            style: TextStyle(
              fontSize: 11,
              color: AppTheme.mutedOnSurface(context, opacity: 0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUsersList() {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Failed to load users: ${snapshot.error}');
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final users = snapshot.data!.docs.toList()
          ..sort((a, b) {
            DateTime toDate(dynamic value) {
              if (value is Timestamp) return value.toDate();
              if (value is DateTime) return value;
              return DateTime.fromMillisecondsSinceEpoch(0);
            }

            final aData = a.data();
            final bData = b.data();
            final aDate = toDate(aData['updatedAt'] ?? aData['createdAt']);
            final bDate = toDate(bData['updatedAt'] ?? bData['createdAt']);
            return bDate.compareTo(aDate);
          });
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
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
              const Text(
                'Manage Users',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              if (users.isEmpty)
                Text(
                  'No user profiles found.',
                  style: TextStyle(color: AppTheme.mutedOnSurface(context)),
                ),
              for (final user in users) _userTile(user),
            ],
          ),
        );
      },
    );
  }

  Widget _userTile(DocumentSnapshot<Map<String, dynamic>> userDoc) {
    final data = userDoc.data() ?? const <String, dynamic>{};
    final uid = userDoc.id;
    final email = (data['email'] ?? 'unknown@email.com') as String;
    final displayName = (data['displayName'] ?? 'Unnamed') as String;
    final roleName = (data['role'] ?? 'client') as String;
    final role = _parseRole(roleName);

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.surfaceFor(Theme.of(context).brightness),
        borderRadius: BorderRadius.circular(AppTheme.radiusMd),
        border: Border.all(
          color: AppTheme.borderFor(Theme.of(context).brightness),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            displayName,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 2),
          Text(
            email,
            style: TextStyle(color: AppTheme.mutedOnSurface(context)),
          ),
          const SizedBox(height: 2),
          Text(
            'UID: $uid',
            style: TextStyle(
              fontSize: 11,
              color: AppTheme.mutedOnSurface(context, opacity: 0.5),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<UserRole>(
                  key: ValueKey<String>('role-$uid-$roleName'),
                  initialValue: role,
                  decoration: const InputDecoration(labelText: 'Role'),
                  items: UserRole.values
                      .map(
                        (item) => DropdownMenuItem<UserRole>(
                          value: item,
                          child: Text(item.name),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      _setUserRole(uid, value);
                    }
                  },
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                tooltip: 'Delete user',
                onPressed: () => _deleteUser(userDoc),
                icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsList() {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
          .collection('projects')
          .orderBy('updatedAt', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Failed to load projects: ${snapshot.error}');
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final projects = snapshot.data!.docs;
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
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
              const Text(
                'Manage Projects',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              if (projects.isEmpty)
                Text(
                  'No projects found.',
                  style: TextStyle(color: AppTheme.mutedOnSurface(context)),
                ),
              for (final project in projects) _projectTile(project),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBidsControlCard() {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
          .collection(bidsAdminControlsCollection)
          .doc(bidsAdminControlsDocId)
          .snapshots(),
      builder: (context, snapshot) {
        final data = snapshot.data?.data() ?? const <String, dynamic>{};
        final demoModeEnabled = data['demoModeEnabled'] == true;
        final lastSeededAt = data['lastSeededAt'];
        final contractorUid = (data['demoContractorUid'] ?? '') as String;
        final projectPrefix = (data['demoProjectPrefix'] ?? 'Demo') as String;

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
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
              const Text(
                'Bids Control',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 6),
              Text(
                'Seed demo proposals and toggle the fallback data visible in the bids screen.',
                style: TextStyle(color: AppTheme.mutedOnSurface(context)),
              ),
              const SizedBox(height: 12),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Demo mode enabled'),
                subtitle: Text(
                  demoModeEnabled
                      ? 'Demo bids are available in the bids tab.'
                      : 'Demo bids are hidden until enabled.',
                ),
                value: demoModeEnabled,
                onChanged: _setDemoModeEnabled,
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _demoContractorUidController,
                decoration: InputDecoration(
                  labelText: 'Target contractor UID',
                  hintText: contractorUid.isEmpty
                      ? 'Enter UID to seed'
                      : contractorUid,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _demoProjectPrefixController,
                decoration: InputDecoration(
                  labelText: 'Project prefix',
                  hintText: projectPrefix,
                ),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  FilledButton.icon(
                    onPressed: _seedingBids ? null : _seedDemoBids,
                    icon: _seedingBids
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.auto_awesome_outlined),
                    label: const Text('Seed Demo Bids'),
                  ),
                  OutlinedButton.icon(
                    onPressed: _clearDemoBids,
                    icon: const Icon(Icons.delete_outline),
                    label: const Text('Clear Demo Bids'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                lastSeededAt == null
                    ? 'No demo seed recorded yet.'
                    : 'Last seeded: ${lastSeededAt is Timestamp ? lastSeededAt.toDate() : lastSeededAt}',
                style: TextStyle(
                  fontSize: 11,
                  color: AppTheme.mutedOnSurface(context, opacity: 0.55),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _projectTile(DocumentSnapshot<Map<String, dynamic>> projectDoc) {
    final data = projectDoc.data() ?? const <String, dynamic>{};
    final title = (data['title'] ?? 'Untitled project') as String;
    final district = (data['district'] ?? '-') as String;
    final status = (data['status'] ?? 'draft') as String;
    final clientId = (data['clientId'] ?? '-') as String;

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.surfaceFor(Theme.of(context).brightness),
        borderRadius: BorderRadius.circular(AppTheme.radiusMd),
        border: Border.all(
          color: AppTheme.borderFor(Theme.of(context).brightness),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 2),
          Text('District: $district'),
          Text(
            'Client: $clientId',
            style: TextStyle(color: AppTheme.mutedOnSurface(context)),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  key: ValueKey<String>('status-${projectDoc.id}-$status'),
                  initialValue: status,
                  decoration: const InputDecoration(labelText: 'Status'),
                  items: const [
                    DropdownMenuItem(value: 'draft', child: Text('draft')),
                    DropdownMenuItem(value: 'active', child: Text('active')),
                    DropdownMenuItem(
                      value: 'completed',
                      child: Text('completed'),
                    ),
                    DropdownMenuItem(
                      value: 'archived',
                      child: Text('archived'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      _setProjectStatus(projectDoc.id, value);
                    }
                  },
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                tooltip: 'Delete project',
                onPressed: () => _deleteProject(projectDoc),
                icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }

  UserRole _parseRole(String roleName) {
    switch (roleName) {
      case 'admin':
        return UserRole.admin;
      case 'contractor':
        return UserRole.contractor;
      case 'engineer':
        return UserRole.engineer;
      case 'client':
      default:
        return UserRole.client;
    }
  }
}
