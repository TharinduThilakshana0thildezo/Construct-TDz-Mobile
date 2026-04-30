 ConstructionLK

> A production-ready construction hiring marketplace built with Flutter, connecting clients and contractors across Sri Lanka.

[![Flutter](https://img.shields.io/badge/Flutter-3.10+-02569B?style=flat&logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.10+-0175C2?style=flat&logo=dart)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Enabled-FFCA28?style=flat&logo=firebase)](https://firebase.google.com)
[![Stripe](https://img.shields.io/badge/Stripe-Integrated-635BFF?style=flat&logo=stripe)](https://stripe.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE.md)
[![Version](https://img.shields.io/badge/Version-1.0.0-blue.svg)](CHANGELOG.md)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)]()

---

## Table of Contents

- [Overview](#overview)
- [Key Features](#key-features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Code Generation](#code-generation)
- [Security Rules](#security-rules)
- [Testing](#testing)
- [Performance](#performance)
- [Roadmap](#roadmap)
- [Platform Support](#platform-support)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

ConstructionLK is a comprehensive, full-featured platform designed to modernize how construction projects are managed and contractors are hired in Sri Lanka. It provides a seamless experience for both clients posting projects and contractors seeking work — backed by escrow payments, AI-powered matching, and real-time collaboration tools.

---

## Key Features

| Feature | Description |
|---|---|
| **Smart Matching** | AI-powered contractor recommendations based on skills, ratings, and location |
| **Secure Payments** | Escrow-based milestone payments with Stripe integration |
| **Reputation System** | Multi-dimensional reviews and contractor ratings |
| **Advanced Analytics** | Real-time dashboards with ROI and performance tracking |
| **Premium Tiers** | Subscription plans with unlockable advanced capabilities |
| **Gamification** | Points, badges, leaderboards, and achievement tracking |
| **Real-time Collaboration** | Video calls, messaging, and shared document management |

---

## Tech Stack

### Frontend
- **Flutter 3.10+** — Cross-platform mobile development (iOS & Android)
- **Riverpod 2.4+** — State management and dependency injection
- **Freezed** — Immutable models and code generation

### Backend
- **Firebase** — Auth, Firestore, Storage, Analytics, and Crashlytics
- **Stripe** — Payment processing and escrow management
- **Node.js / Cloud Functions** — Serverless business logic (optional)

### Data & Storage
- **Cloud Firestore** — Real-time database
- **Firebase Storage** — File and media hosting
- **Hive** — Local offline caching
- **Shared Preferences** — Lightweight key-value settings

### Security
- **flutter_secure_storage** — Encrypted sensitive data storage
- **AES Encryption** — End-to-end message and document encryption
- **OAuth 2.0** — Secure authentication

---

## Project Structure

```
lib/
├── main.dart                          # App entry point
├── app/
│   └── root_app.dart                  # Root widget with theme
├── core/
│   ├── models/                        # Freezed data models
│   │   ├── project_model.dart
│   │   ├── bid_model.dart
│   │   ├── payment_model.dart
│   │   ├── review_model.dart
│   │   ├── subscription_model.dart
│   │   ├── collaboration_model.dart
│   │   └── app_user.dart
│   ├── repositories/                  # Firestore data layer
│   │   ├── firestore_repository.dart
│   │   ├── project_repository.dart
│   │   ├── bid_repository.dart
│   │   ├── payment_repository.dart
│   │   └── review_repository.dart
│   ├── services/                      # Business logic layer
│   │   ├── payment_service.dart
│   │   ├── matching_service.dart
│   │   ├── analytics_service.dart
│   │   └── bid_recommendation_service.dart
│   ├── providers/                     # Riverpod state providers
│   │   ├── repository_providers.dart
│   │   └── project_providers.dart
│   ├── utils/
│   │   ├── app_constants.dart
│   │   ├── logger.dart
│   │   ├── exceptions.dart
│   │   └── validators.dart
│   ├── theme/
│   └── ui_components/
├── features/
│   ├── auth/                          # Authentication flows
│   ├── bids/                          # Bidding system
│   ├── projects/                      # Project management
│   ├── messages/                      # Messaging & collaboration
│   ├── payments/                      # Payment handling
│   ├── profile/                       # User profiles
│   ├── home/                          # Home dashboard
│   ├── marketplace/                   # Advanced search & discovery
│   ├── analytics/                     # User analytics
│   ├── subscriptions/                 # Premium feature management
│   └── onboarding/                    # Onboarding flows
└── firebase_options.dart              # Firebase configuration

test/                                  # Unit & widget tests
android/                               # Android native
ios/                                   # iOS native
```

---

## Getting Started

### Prerequisites

- Flutter **3.10.8+** and Dart **3.10.8+**
- A configured [Firebase](https://firebase.google.com) project
- A [Stripe](https://stripe.com) account for payments

### Installation

**1. Clone the repository**
```bash
git clone https://github.com/yourusername/construction-lk.git
cd construction-lk
```

**2. Install dependencies**
```bash
flutter pub get
```

**3. Generate code files**
```bash
dart run build_runner build --delete-conflicting-outputs
```

**4. Configure Firebase**
```bash
flutterfire configure
```

**5. Set environment variables**

Create a `.env` file in the project root:
```env
FLAVOR=dev
STRIPE_PUBLISHABLE_KEY=pk_test_xxxxx
STRIPE_SECRET_KEY=sk_test_xxxxx
```

**6. Run the app**
```bash
flutter run
```

---

## Code Generation

This project uses `build_runner` for automatic code generation (Freezed models, Riverpod providers, etc.).

```bash
# One-time build
dart run build_runner build

# Watch mode (rebuilds on file changes)
dart run build_runner watch

# Clean rebuild
dart run build_runner clean && dart run build_runner build --delete-conflicting-outputs
```

---

## Security Rules

Apply the following rules in your Firebase Console under **Firestore > Rules**:

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {

    // Users can only read/write their own documents
    match /users/{document=**} {
      allow read, write: if request.auth.uid == document;
    }

    // Projects are readable by all authenticated users
    match /projects/{document=**} {
      allow read: if request.auth != null;
      allow create: if request.auth != null
                    && request.resource.data.clientId == request.auth.uid;
      allow update, delete: if request.auth.uid == resource.data.clientId;
    }

    // Apply similar rules for bids, payments, reviews, etc.
  }
}
```

---

## Testing

```bash
# Run all tests
flutter test

# Run a specific test file
flutter test test/features/projects/repositories/project_repository_test.dart

# Run with coverage report
flutter test --coverage
lcov --list coverage/lcov.info
```

---

## Performance

### Images
- Compress images before upload to Firebase Storage
- Use lazy loading for long scrollable lists
- Cache images locally using `cached_network_image`

### Firestore
- Paginate all list queries (recommended: 20 items per page)
- Define composite indexes for complex queries
- Use field masks for partial document updates
- Denormalize data strategically to reduce read operations

### State Management
- Derive state via Riverpod providers rather than storing redundant copies
- Use `FamilyProvider` for parameterized queries
- Clean up stream listeners and subscriptions to prevent memory leaks

### Error Handling
- Wrap all Firestore calls in `try-catch` blocks
- Log errors with Firebase Crashlytics
- Surface user-friendly error messages with retry options

---

## Roadmap

### Phase 1 — Foundation ✅
- Project posting and bidding
- Basic messaging
- User authentication
- Project progress tracking

### Phase 2 — Trust & Payments 🔄
- Review and rating system
- Stripe payment integration
- Escrow milestone management
- Contractor badge and verification system

### Phase 3 — Intelligence *(Q3 2024)*
- AI-powered contractor matching
- Predictive project analytics
- Smart bid recommendations

### Phase 4 — Premium Features *(Q4 2024)*
- Subscription tier management
- Advanced analytics dashboards
- Third-party API access

### Phase 5 — AR & Advanced *(Q1 2025)*
- Augmented reality site visualization
- Video consultation calls
- Advanced document version management

---

## Platform Support

| Platform | Minimum Version |
|---|---|
| iOS | 12.0+ |
| Android | API 21 (Android 5.0)+ |
| Web | Planned |
| Desktop | Planned |

---

## Security Checklist

- [ ] API keys rotated regularly
- [ ] HTTPS enforced for all network connections
- [ ] Sensitive data encrypted in transit and at rest
- [ ] Firebase Security Rules properly configured and tested
- [ ] Regular security audits scheduled
- [ ] User data backup strategy in place
- [ ] GDPR compliance verified
- [ ] PCI DSS compliance confirmed for payment flows

---

## Monitoring & Analytics

| Tool | Purpose |
|---|---|
| Firebase Analytics | User behavior and funnel tracking |
| Firebase Crashlytics | Real-time crash reporting |
| Stripe Analytics | Payment metrics and revenue tracking |
| Custom Analytics | Business-specific KPIs and dashboards |

---

## Contributing

Contributions are welcome. Please follow the steps below:

1. Fork the repository and create a feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
2. Follow the code style guide (enforced by `dart analyze`)
3. Write tests for any new functionality
4. Commit with clear, descriptive messages
5. Push to your fork and open a Pull Request

### Code Style

- Use meaningful, descriptive variable names
- Write self-documenting code and add comments for complex logic
- Follow official [Dart conventions](https://dart.dev/guides/language/effective-dart/style)
- Run `dart analyze` and `dart format .` before committing

---

## Known Limitations

- Composite Firestore queries require index creation in the Firebase Console
- AR features require ARCore-compatible devices
- Video calls support a maximum of 10 concurrent participants
- Real-time data sync may have brief delays (typically under 1 second)

---

## Support

| Channel | Link |
|---|---|
| Bug Reports & Feature Requests | [GitHub Issues](https://github.com/yourusername/construction-lk/issues) |
| Email Support | support@constructionlk.com |
| Community Slack | [Join Community](#) |

---

## License

This project is licensed under the **MIT License**. See [LICENSE.md](LICENSE.md) for full details.

---

## Acknowledgements

- [Flutter](https://flutter.dev) team for the framework
- [Firebase](https://firebase.google.com) for backend infrastructure
- [Stripe](https://stripe.com) for payment processing
- All contributors and early testers

---

*Version 1.0.0 — Last updated April 2026*
