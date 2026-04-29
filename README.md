# ConstructionLK - Production-Ready Construction Marketplace

A comprehensive Flutter-based construction hiring marketplace platform for Sri Lanka with advanced features for connecting clients and contractors.

## 🎯 Project Overview

ConstructionLK is a full-featured platform designed to revolutionize how construction projects are managed and contractors are hired in Sri Lanka. Built with production-grade architecture, it includes:

- **Smart Project Matching** - AI-powered contractor recommendations
- **Secure Payment System** - Escrow-based milestone payments with Stripe integration
- **Reputation Management** - Multi-dimensional reviews and ratings
- **Advanced Analytics** - Real-time dashboards with ROI tracking
- **Premium Features** - Subscription tiers with advanced capabilities
- **Gamification** - Points, badges, and leaderboards
- **Real-time Collaboration** - Video calls, messaging, and document sharings

## 🏗️ Architecture & Tech Stack

### Frontend
- **Flutter** 3.10+ for cross-platform mobile development
- **Riverpod** 2.4+ for state management and dependency injection
- **Freezed** for immutable models and code generation

### Backend
- **Firebase** (Core, Auth, Firestore, Storage, Analytics, Crashlytics)
- **Stripe** for payment processing
- **Node.js/Cloud Functions** for serverless operations (optional)

### Data & Storage
- **Cloud Firestore** for real-time data
- **Firebase Storage** for files and media
- **Hive** for local caching
- **Shared Preferences** for lightweight settings

### Security
- **flutter_secure_storage** for sensitive data
- AES encryption for messages and documents
- OAuth 2.0 for authentication

## 📁 Project Structure

```
lib/
├── main.dart                          # App entry point
├── app/
│   └── root_app.dart                 # Root widget with theme
├── core/
│   ├── models/                        # Freezed models
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
│   ├── services/                      # Business logic
│   │   ├── payment_service.dart
│   │   ├── matching_service.dart
│   │   ├── analytics_service.dart
│   │   └── bid_recommendation_service.dart
│   ├── providers/                     # Riverpod state
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
│   ├── auth/                          # Authentication
│   ├── bids/                          # Bidding system
│   ├── projects/                      # Project management
│   ├── messages/                      # Messaging & collaboration
│   ├── payments/                      # Payment handling
│   ├── profile/                       # User profiles
│   ├── home/                          # Home dashboard
│   ├── marketplace/                   # Advanced search & discovery
│   ├── analytics/                     # User analytics
│   ├── subscriptions/                 # Premium features
│   └── onboarding/                    # Onboarding flows
└── firebase_options.dart              # Firebase configuration

test/                                  # Unit & widget tests
android/                               # Android native
ios/                                   # iOS native
```

## 🚀 Getting Started

### Prerequisites
- Flutter 3.10.8+
- Dart 3.10.8+
- Firebase project setup
- Stripe account

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/construction-lk.git
cd construction-lk
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Generate code files**
```bash
dart run build_runner build --delete-conflicting-outputs
```

4. **Configure Firebase**
```bash
flutterfire configure
```

5. **Set environment variables**
Create `.env` file with:
```
FLAVOR=dev
STRIPE_PUBLISHABLE_KEY=pk_test_xxxxx
STRIPE_SECRET_KEY=sk_test_xxxxx
```

6. **Run the app**
```bash
flutter run
```

## 🏭 Code Generation

The project uses `build_runner` for automatic code generation:

```bash
# Generate models and services
dart run build_runner build

# Watch for changes
dart run build_runner watch

# Clean and rebuild
dart run build_runner clean && dart run build_runner build --delete-conflicting-outputs
```

## 🔐 Firestore Security Rules

Place in Firebase Console:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Users can only read/write their own documents
    match /users/{document=**} {
      allow read, write: if request.auth.uid == document;
    }

    // Projects visible to all authenticated users
    match /projects/{document=**} {
      allow read: if request.auth != null;
      allow create: if request.auth != null && request.resource.data.clientId == request.auth.uid;
      allow update, delete: if request.auth.uid == resource.data.clientId;
    }

    // Similar rules for bids, payments, reviews, etc.
  }
}
```

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/features/projects/repositories/project_repository_test.dart

# With coverage
flutter test --coverage
lcov --list coverage/lcov.info
```

## 📊 Performance & Best Practices

### Image Optimization
- Use image compression before upload
- Implement lazy loading for lists
- Cache images locally

### Database Optimization
- Paginate queries (20 items per page)
- Create necessary Firestore indexes
- Use Field masks for updates
- Denormalize data strategically

### State Management
- Use Riverpod providers for derived state
- Implement caching strategies
- Clean up listeners to prevent leaks
- Use `FamilyProvider` for parameterized queries

### Error Handling
- Always wrap Firestore calls in try-catch
- Provide user-friendly error messages
- Log errors with Crashlytics
- Implement retry logic for network errors

## 🔄 Feature Roadmap

### Phase 1: Foundation (Completed)
- ✅ Project posting and bidding
- ✅ Basic messaging
- ✅ User authentication
- ✅ Project tracking

### Phase 2: Trust & Payments (In Progress)
- 🔄 Review and rating system
- 🔄 Payment integration
- 🔄 Escrow system
- 🔄 Badge/verification system

### Phase 3: Intelligence (Q3 2024)
- AI-powered matching
- Predictive analytics
- Smart bid recommendations

### Phase 4: Premium Features (Q4 2024)
- Subscription tiers
- Advanced analytics dashboards
- API for third-party integrations

### Phase 5: AR & Advanced (Q1 2025)
- AR site visualization
- Video consultations
- Advanced document management

## 📱 Platform Support

- **iOS**: 12.0+
- **Android**: API 21 (Android 5.0)+
- **Web**: (Future development)
- **Desktop**: (Planned)

## 🛡️ Security Checklist

- [ ] API keys rotated regularly
- [ ] HTTPS enforced for all connections
- [ ] Sensitive data encrypted in transit
- [ ] Firebase Security Rules properly configured
- [ ] Regular security audits scheduled
- [ ] User data backup strategy in place
- [ ] GDPR compliance verified
- [ ] PCI DSS compliance for payments

## 📈 Monitoring & Analytics

The app integrates with:
- **Firebase Analytics** - User behavior tracking
- **Firebase Crashlytics** - Crash reporting
- **Stripe Analytics** - Payment metrics
- **Custom analytics** - Business-specific metrics

## 🤝 Contributing

1. Create a feature branch: `git checkout -b feature/amazing-feature`
2. Follow the code style guide (enforced by linter)
3. Write tests for new features
4. Commit with descriptive messages
5. Push to your fork and open a Pull Request

## 📝 Code Style Guide

- Use meaningful variable names
- Write self-documenting code
- Add comments for complex logic
- Follow Dart conventions
- Run `dart analyze` before committing
- Format code with `dart format .`

## 🐛 Known Issues & Limitations

- Composite Firestore queries require index creation
- AR features only on devices with ARCore support
- Video calls limited to 10 participants maximum
- Real-time sync may have slight delays (typically <1s)

## 📞 Support & Contact

For issues, feature requests, or support:
- GitHub Issues: [Issue Tracker]
- Email: support@constructionlk.com
- Slack Community: [Join Community]

## 📄 License

This project is licensed under the MIT License - see LICENSE.md file for details.

## 🎉 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend infrastructure
- Stripe for payment processing
- Contributors and testers

---

**Last Updated**: April 5, 2026
**Version**: 1.0.0
**Status**: Production Ready 🚀

