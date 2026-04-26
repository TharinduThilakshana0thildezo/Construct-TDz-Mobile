enum UserRole { client, contractor, engineer, admin }

class AppUser {
  const AppUser({
    required this.uid,
    required this.email,
    required this.role,
    required this.displayName,
    required this.onboardingCompleted,
  });
  final String uid;
  final String email;
  final UserRole role;
  final String displayName;
  final bool onboardingCompleted;

  static UserRole _roleFromString(String? value) {
    switch (value) {
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

  String get roleAsString {
    switch (role) {
      case UserRole.admin:
        return 'admin';
      case UserRole.contractor:
        return 'contractor';
      case UserRole.engineer:
        return 'engineer';
      case UserRole.client:
        return 'client';
    }
  }

  static AppUser fromFirestore(Map<String, dynamic> data) => AppUser(
    uid: (data['uid'] ?? '') as String,
    email: (data['email'] ?? '') as String,
    role: _roleFromString(data['role'] as String?),
    displayName: (data['displayName'] ?? '') as String,
    onboardingCompleted: (data['onboardingCompleted'] ?? false) as bool,
  );
}
