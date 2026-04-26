# Development Setup Guide - ConstructionLK

## Prerequisites

Before starting, ensure you have installed:
- **Flutter**: 3.10.8+ and Dart 3.10.8+
- **Android Studio** or **Xcode** (for native development)
- **Git** for version control
- **Visual Studio Code** or **Android Studio** IDE
- **Node.js** 16+ (for Firebase CLI)

### Installation Commands

```bash
# Install Flutter (macOS/Linux)
git clone https://github.com/flutter/flutter.git ~/flutter
export PATH="$PATH:$HOME/flutter/bin"

# Install Firebase CLI
npm install -g firebase-tools

# Install build_runner dependencies
dart pub global activate build_runner
```

## Project Setup

### 1. Clone & Install Dependencies

```bash
git clone <repository-url> construction-lk
cd construction-lk

# Get flutter packages
flutter pub get

# Generate code files (models, repositories, etc.)
dart run build_runner build --delete-conflicting-outputs
```

### 2. Firebase Configuration

```bash
# Install FlutterFire CLI
dart pub global activate flutterfire_cli

# Configure Firebase (will create firebase_options.dart)
flutterfire configure

# Select development Firebase project when prompted
# Recommended Firebase projects:
# - Production: construction-lk-prod
# - Staging: construction-lk-staging
# - Development: construction-lk-dev
```

### 3. Environment Setup

```bash
# Copy environment template
cp .env.example .env

# Edit .env with your credentials
nano .env

# Required values:
# - STRIPE_PUBLISHABLE_KEY
# - STRIPE_SECRET_KEY
# - Firebase project credentials
```

### 4. Android Setup

```bash
cd android

# Configure SDK
sdkmanager "platforms;android-34" "build-tools;34.0.0"

# Configure signing for release builds
# Edit android/app/build.gradle.kts with actual keys

cd ..
```

### 5. iOS Setup (macOS only)

```bash
cd ios

# Install pods
pod install --repo-update

# Update pods periodically
pod repo update

cd ..
```

## Development Commands

### Running the App

```bash
# Development (debug mode)
flutter run

# With logs
flutter run -v

# Specific device
flutter devices  # List available devices
flutter run -d <device-id>

# Release mode
flutter run --release

# Profile mode (performance testing)
flutter run --profile
```

### Code Generation

```bash
# One-time generation
dart run build_runner build --delete-conflicting-outputs

# Watch mode (regenerates on changes)
dart run build_runner watch

# Clean and rebuild
dart run build_runner clean && dart run build_runner build --delete-conflicting-outputs
```

### Code Quality

```bash
# Analyze code
dart analyze

# Format code
dart format .

# Fix common issues
dart fix --apply

# More aggressive fixes (preview)
dart fix --dry-run
```

### Testing

```bash
# Run all tests
flutter test

# Run specific test
flutter test test/features/projects/repositories/project_repository_test.dart

# Run with coverage
flutter test --coverage

# View coverage report
lcov --list coverage/lcov.info
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

### Database & CLI

```bash
# Start Firebase Emulator
firebase emulators:start

# Firebase CLI commands
firebase login
firebase projects:list
firebase firestore:indexes

# Deploy Firestore rules
firebase deploy --only firestore:rules

# View logs
firebase functions:log
```

## Debugging

### Debug Mode

```bash
# Enable verbose logging
flutter run -v

# Dart DevTools
dart devtools

# Or: flutter pub global run devtools
```

### Performance Profiling

```bash
# Performance overlay (shows fps)
flutter run --profile

# DevTools performance tab
# Press 'p' during flutter run to open DevTools
```

### Hot Reload & Restart

During `flutter run`:
- Press `r` to hot reload
- Press `R` to hot restart
- Press `h`  for help

## Git Workflow

### Naming Conventions

```bash
# Feature branches
git checkout -b feature/project-matching

# Bug fixes
git checkout -b fix/payment-issue

# Hotfixes
git checkout -b hotfix/critical-bug

# Release branches
git checkout -b release/v1.0.0
```

### Commit Conventions

```bash
# Feature commit
git commit -m "feat: add project matching algorithm"

# Fix commit
git commit -m "fix: resolve bid calculation error"

# Documentation
git commit -m "docs: update README with setup instructions"

# Refactor
git commit -m "refactor: simplify payment service logic"

# Tests
git commit -m "test: add unit tests for validators"

# Breaking change (major version bump)
git commit -m "feat!: complete redesign of bid system"
```

## Continuous Integration

### Pre-commit Checklist

- [ ] All tests pass: `flutter test`
- [ ] Code is formatted: `dart format .`
- [ ] No lint errors: `dart analyze`
- [ ] Build succeeds: `flutter build apk --dry-run`
- [ ] Commit messages follow convention
- [ ] No API keys in code

### CI/CD Pipeline

GitHub Actions workflow files in `.github/workflows/`:
- `test.yml` - Runs tests on PR
- `build.yml` - Builds APK/IPA
- `deploy.yml` - Deploys to Firebase

## Troubleshooting

### Common Issues

**Issue**: `flutter pub get` fails
```bash
# Solution: Clean and retry
flutter clean
flutter pub cache clean
flutter pub get
```

**Issue**: Build errors on Android
```bash
# Solution: Clean gradle
cd android
./gradlew clean
cd ..
flutter pub get
flutter run
```

**Issue**: iOS Pod issues
```bash
# Solution: Update pods
cd ios
rm -rf Pods
rm Podfile.lock
pod install --repo-update
cd ..
flutter run
```

**Issue**: Firestore rules rejected writes
```bash
# Solution: Check rules and auth state
# 1. Verify user is authenticated
# 2. Check Firestore rules match your code
# 3. Review firebase.log for detailed errors
```

**Issue**: Build takes too long
```bash
# Solution: Use profile or release mode for faster testing
flutter run --profile
# Disable debug prints in release builds
```

## IDE Setup

### VS Code

1. Install extensions:
   - Flutter
   - Dart
   - Firebase Explorer
   - REST Client

2. Create `.vscode/launch.json`:
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Flutter Debug",
      "type": "dart",
      "request": "launch",
      "program": "lib/main.dart",
      "cwd": "${workspaceFolder}",
      "args": ["--flavor", "dev"]
    }
  ]
}
```

### Android Studio

1. Install plugins:
   - Flutter
   - Dart
   - Firebase

2. Configure Dart SDK path
3. Set up emulator or connect device

## Performance Tips

1. **Use release mode for testing**: Debug mode is slower
2. **Enable ShrinkResources in release builds**
3. **Monitor frame rates**: Use Performance overlay
4. **Profile regularly**: Track performance regressions
5. **Optimize images**: Use compressed formats
6. **Use const constructors**: Reduces rebuild overhead

## Security Best Practices

- Never commit `.env` files or API keys
- Use `.gitignore` to exclude sensitive files
- Rotate credentials regularly
- Use different Firebase projects for different environments
- Implement certificate pinning for production
- Use secure storage for sensitive data

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Firebase & Flutter](https://firebase.google.com/docs/flutter/setup)
- [Riverpod Documentation](https://riverpod.dev)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [ConstructionLK API Docs](./API_DOCS.md)

## Support

For development help:
- Check existing issues: Check GitHub Issues
- Create new issue: Include error logs and steps to reproduce
- Ask in team Slack: #development channel
- Email: dev-support@constructionlk.com

---

Last Updated: April 5, 2026
Maintained by: ConstructionLK Development Team
