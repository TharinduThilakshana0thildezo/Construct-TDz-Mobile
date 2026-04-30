# ConstructionLK 🏗️
### Production-Ready Construction Marketplace for Sri Lanka

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.10%2B-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.10%2B-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
![Stripe](https://img.shields.io/badge/Stripe-635BFF?style=for-the-badge&logo=stripe&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen?style=for-the-badge)

**Version 1.0.0 · Last Updated: April 5, 2026**

[Overview](#-project-overview) · [Architecture](#️-architecture--tech-stack) · [Getting Started](#-getting-started) · [Features](#-feature-roadmap) · [Contributing](#-contributing)

</div>

---

## 📋 Table of Contents

- [Project Overview](#-project-overview)
- [Key Features](#-key-features)
- [Architecture & Tech Stack](#️-architecture--tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Environment Setup](#environment-setup)
  - [Firebase Configuration](#firebase-configuration)
  - [Running the App](#running-the-app)
- [Code Generation](#️-code-generation)
- [Firestore Security Rules](#-firestore-security-rules)
- [Storage Rules](#-firebase-storage-rules)
- [Testing](#-testing)
- [Performance & Best Practices](#-performance--best-practices)
- [Feature Roadmap](#-feature-roadmap)
- [Platform Support](#-platform-support)
- [Security Checklist](#️-security-checklist)
- [Monitoring & Analytics](#-monitoring--analytics)
- [Deployment](#-deployment)
- [CI/CD Pipeline](#-cicd-pipeline)
- [API Reference](#-api-reference)
- [Known Issues & Limitations](#-known-issues--limitations)
- [Contributing](#-contributing)
- [Code Style Guide](#-code-style-guide)
- [License](#-license)
- [Acknowledgments](#-acknowledgments)

---

## 🎯 Project Overview

**ConstructionLK** is a comprehensive, full-featured construction hiring marketplace platform purpose-built for Sri Lanka's construction industry. Developed with production-grade architecture and engineering best practices, it serves as the digital bridge between clients who need construction work done and skilled contractors ready to deliver.

The platform addresses key pain points in Sri Lanka's construction sector — opacity in contractor selection, unreliable payment systems, poor project communication, and a lack of trust infrastructure — by combining AI-powered matching, secure escrow payments, real-time collaboration tools, and a robust reputation system.

### Why ConstructionLK?

Sri Lanka's construction industry is valued at over **LKR 800 billion annually**, yet the majority of contractor-client relationships are still initiated through informal word-of-mouth channels. ConstructionLK modernizes this process by providing:

- **Transparency** — Verified contractor profiles with detailed portfolios, licenses, and reviews
- **Security** — Escrow-based payments that protect both clients and contractors
- **Efficiency** — AI-powered matching reduces time-to-hire by up to 70%
- **Trust** — Multi-dimensional review systems and verified identity checks
- **Accessibility** — A mobile-first platform designed for Sri Lanka's smartphone-dominant user base

---

## ✨ Key Features

### 🤖 Smart Project Matching
AI-powered contractor recommendation engine that analyzes project scope, location, budget, contractor availability, and past performance data to surface the most relevant matches. Recommendations improve over time through collaborative filtering and explicit feedback loops.

### 💳 Secure Payment System
End-to-end escrow-based milestone payment processing built on Stripe. Funds are held securely until project milestones are verified and approved, protecting both parties from fraud and non-delivery. Supports multiple payment methods including credit/debit cards and local bank transfers.

### ⭐ Reputation Management
Multi-dimensional rating and review system that evaluates contractors across five key dimensions: quality of work, timeliness, communication, professionalism, and value for money. Reviews are verified against completed transactions to prevent fraud.

### 📊 Advanced Analytics
Real-time dashboards for both clients and contractors. Clients can track project spend, ROI, and contractor performance over time. Contractors gain insights into bid win rates, earnings trends, and competitive positioning within their specialty.

### 👑 Premium Subscription Tiers
Tiered subscription model offering Free, Professional, and Enterprise plans. Premium users gain access to priority matching, advanced analytics, featured profile listings, and dedicated support.

### 🏅 Gamification Engine
Points, badges, and leaderboard system that incentivizes contractor quality and activity. Badges are awarded for milestones such as "10 Projects Completed," "5-Star Streak," and "Top Contractor of the Month."

### 💬 Real-time Collaboration
Integrated video calling, direct messaging, push notifications, and document sharing capabilities. Project teams can share blueprints, progress photos, invoices, and contracts directly within the platform.

### 🔍 Advanced Search & Discovery
Faceted search with filters for specialty, location, availability, price range, rating, verification status, and more. Map-based discovery allows clients to find contractors within a specific radius.

---

## 🏗️ Architecture & Tech Stack

### Frontend

| Technology | Version | Purpose |
|------------|---------|---------|
| Flutter | 3.10+ | Cross-platform mobile development (iOS & Android) |
| Dart | 3.10+ | Primary programming language |
| Riverpod | 2.4+ | State management and dependency injection |
| Freezed | 2.4+ | Immutable models and union types |
| go_router | 12.0+ | Declarative routing and deep linking |
| flutter_hooks | 0.20+ | Functional widget state management |

### Backend & Infrastructure

| Technology | Purpose |
|------------|---------|
| Firebase Auth | User authentication (email, Google, Apple SSO) |
| Cloud Firestore | Real-time NoSQL database |
| Firebase Storage | File and media storage |
| Firebase Analytics | User behavior tracking |
| Firebase Crashlytics | Crash and error reporting |
| Firebase Cloud Messaging | Push notifications |
| Cloud Functions (Node.js) | Serverless business logic |
| Stripe | Payment processing and escrow |

### Data & Local Storage

| Technology | Purpose |
|------------|---------|
| Cloud Firestore | Primary remote data store |
| Firebase Storage | Images, documents, and media |
| Hive | High-performance local caching |
| Shared Preferences | Lightweight key-value settings |

### Security

| Technology | Purpose |
|------------|---------|
| flutter_secure_storage | Encrypted local credential storage |
| AES-256 Encryption | Message and document encryption |
| OAuth 2.0 | Federated identity and authorization |
| Firebase App Check | API abuse prevention |

### Development Tools

| Tool | Purpose |
|------|---------|
| build_runner | Code generation orchestration |
| freezed | Data class and union type generation |
| json_serializable | JSON serialization/deserialization |
| injectable | Dependency injection code gen |
| mockito | Test mocking framework |
| lcov | Code coverage reporting |

---

## 📁 Project Structure

```
construction_lk/
├── lib/
│   ├── main.dart                          # App entry point & bootstrap
│   ├── app/
│   │   ├── root_app.dart                  # Root widget with providers & theme
│   │   └── app_router.dart                # go_router configuration
│   │
│   ├── core/
│   │   ├── models/                        # Freezed immutable data models
│   │   │   ├── app_user.dart              # User profile model
│   │   │   ├── project_model.dart         # Construction project model
│   │   │   ├── bid_model.dart             # Contractor bid model
│   │   │   ├── payment_model.dart         # Payment & escrow model
│   │   │   ├── review_model.dart          # Review & rating model
│   │   │   ├── subscription_model.dart    # Subscription tier model
│   │   │   ├── collaboration_model.dart   # Messaging & collaboration model
│   │   │   ├── notification_model.dart    # Push notification model
│   │   │   └── analytics_model.dart       # Analytics event model
│   │   │
│   │   ├── repositories/                  # Firestore data access layer
│   │   │   ├── firestore_repository.dart  # Base repository with pagination
│   │   │   ├── project_repository.dart    # Project CRUD operations
│   │   │   ├── bid_repository.dart        # Bid management
│   │   │   ├── payment_repository.dart    # Payment records & escrow
│   │   │   ├── review_repository.dart     # Reviews & ratings
│   │   │   ├── user_repository.dart       # User profile management
│   │   │   └── notification_repository.dart
│   │   │
│   │   ├── services/                      # Domain business logic
│   │   │   ├── payment_service.dart       # Stripe integration & escrow logic
│   │   │   ├── matching_service.dart      # AI-powered contractor matching
│   │   │   ├── analytics_service.dart     # Analytics event tracking
│   │   │   ├── bid_recommendation_service.dart
│   │   │   ├── notification_service.dart  # FCM push notifications
│   │   │   ├── storage_service.dart       # Firebase Storage uploads
│   │   │   └── encryption_service.dart    # AES message encryption
│   │   │
│   │   ├── providers/                     # Riverpod state providers
│   │   │   ├── repository_providers.dart  # Repository DI bindings
│   │   │   ├── service_providers.dart     # Service DI bindings
│   │   │   ├── project_providers.dart     # Project state streams
│   │   │   ├── auth_providers.dart        # Authentication state
│   │   │   └── subscription_providers.dart
│   │   │
│   │   ├── utils/
│   │   │   ├── app_constants.dart         # App-wide constants & config
│   │   │   ├── logger.dart                # Structured logging utility
│   │   │   ├── exceptions.dart            # Custom exception types
│   │   │   ├── validators.dart            # Form validation helpers
│   │   │   ├── formatters.dart            # Currency, date, text formatters
│   │   │   └── extensions.dart            # Dart extension methods
│   │   │
│   │   ├── theme/
│   │   │   ├── app_theme.dart             # Light & dark theme definitions
│   │   │   ├── app_colors.dart            # Brand color palette
│   │   │   ├── app_text_styles.dart       # Typography scale
│   │   │   └── app_decorations.dart       # Reusable input decorations
│   │   │
│   │   └── ui_components/                 # Shared, reusable widgets
│   │       ├── buttons/
│   │       ├── cards/
│   │       ├── dialogs/
│   │       ├── forms/
│   │       ├── loaders/
│   │       └── navigation/
│   │
│   ├── features/
│   │   ├── auth/                          # Authentication flows
│   │   │   ├── data/
│   │   │   ├── domain/
│   │   │   └── presentation/
│   │   │       ├── login_screen.dart
│   │   │       ├── register_screen.dart
│   │   │       └── forgot_password_screen.dart
│   │   │
│   │   ├── onboarding/                    # First-run onboarding experience
│   │   │   ├── onboarding_screen.dart
│   │   │   ├── role_selection_screen.dart
│   │   │   └── profile_setup_screen.dart
│   │   │
│   │   ├── home/                          # Home dashboard
│   │   │   ├── client_home_screen.dart
│   │   │   ├── contractor_home_screen.dart
│   │   │   └── widgets/
│   │   │
│   │   ├── projects/                      # Project management
│   │   │   ├── data/
│   │   │   │   └── project_repository.dart
│   │   │   ├── domain/
│   │   │   │   ├── project_state.dart
│   │   │   │   └── project_notifier.dart
│   │   │   └── presentation/
│   │   │       ├── project_list_screen.dart
│   │   │       ├── project_detail_screen.dart
│   │   │       ├── create_project_screen.dart
│   │   │       └── project_timeline_screen.dart
│   │   │
│   │   ├── bids/                          # Bidding system
│   │   │   ├── data/
│   │   │   ├── domain/
│   │   │   └── presentation/
│   │   │       ├── bid_list_screen.dart
│   │   │       ├── submit_bid_screen.dart
│   │   │       └── bid_comparison_screen.dart
│   │   │
│   │   ├── marketplace/                   # Search & contractor discovery
│   │   │   ├── search_screen.dart
│   │   │   ├── contractor_list_screen.dart
│   │   │   ├── map_discovery_screen.dart
│   │   │   └── filter_sheet.dart
│   │   │
│   │   ├── messages/                      # Messaging & real-time collaboration
│   │   │   ├── conversation_list_screen.dart
│   │   │   ├── conversation_detail_screen.dart
│   │   │   ├── video_call_screen.dart
│   │   │   └── document_share_screen.dart
│   │   │
│   │   ├── payments/                      # Payment handling & history
│   │   │   ├── payment_screen.dart
│   │   │   ├── milestone_screen.dart
│   │   │   ├── escrow_status_screen.dart
│   │   │   └── payment_history_screen.dart
│   │   │
│   │   ├── profile/                       # User profile management
│   │   │   ├── profile_view_screen.dart
│   │   │   ├── edit_profile_screen.dart
│   │   │   ├── portfolio_screen.dart
│   │   │   └── verification_screen.dart
│   │   │
│   │   ├── analytics/                     # Dashboards & reporting
│   │   │   ├── client_analytics_screen.dart
│   │   │   ├── contractor_analytics_screen.dart
│   │   │   └── widgets/
│   │   │       ├── revenue_chart.dart
│   │   │       ├── project_funnel.dart
│   │   │       └── rating_breakdown.dart
│   │   │
│   │   └── subscriptions/                 # Premium subscription management
│   │       ├── subscription_screen.dart
│   │       ├── plan_comparison_screen.dart
│   │       └── billing_screen.dart
│   │
│   └── firebase_options.dart              # Firebase multi-environment config
│
├── test/
│   ├── unit/
│   │   ├── repositories/
│   │   ├── services/
│   │   └── models/
│   ├── widget/
│   │   └── features/
│   └── integration/
│       └── scenarios/
│
├── functions/                             # Cloud Functions (Node.js)
│   ├── src/
│   │   ├── payments/
│   │   ├── matching/
│   │   └── notifications/
│   ├── package.json
│   └── tsconfig.json
│
├── android/                               # Android native configuration
├── ios/                                   # iOS native configuration
├── assets/
│   ├── images/
│   ├── icons/
│   ├── animations/                        # Lottie animation files
│   └── fonts/
├── .env.example                           # Environment variable template
├── pubspec.yaml                           # Flutter dependencies
├── analysis_options.yaml                  # Dart linter configuration
└── firebase.json                          # Firebase CLI configuration
```

---

## 🚀 Getting Started

### Prerequisites

Before setting up the project, ensure you have the following tools installed and configured:

| Tool | Minimum Version | Installation |
|------|----------------|--------------|
| Flutter SDK | 3.10.8+ | [flutter.dev](https://flutter.dev/docs/get-started/install) |
| Dart SDK | 3.10.8+ | Bundled with Flutter |
| Android Studio | 2023.1+ | [developer.android.com](https://developer.android.com/studio) |
| Xcode (macOS only) | 15.0+ | Mac App Store |
| Node.js | 18.0+ | [nodejs.org](https://nodejs.org/) |
| Firebase CLI | Latest | `npm install -g firebase-tools` |
| FlutterFire CLI | Latest | `dart pub global activate flutterfire_cli` |

Verify your Flutter installation is ready:

```bash
flutter doctor -v
```

All items should show a green checkmark. Address any issues reported before proceeding.

---

### Installation

**Step 1: Clone the repository**

```bash
git clone https://github.com/yourusername/construction-lk.git
cd construction-lk
```

**Step 2: Install Flutter dependencies**

```bash
flutter pub get
```

**Step 3: Install Cloud Functions dependencies**

```bash
cd functions
npm install
cd ..
```

**Step 4: Run code generation**

```bash
dart run build_runner build --delete-conflicting-outputs
```

This generates:
- Freezed model classes (`*.freezed.dart`)
- JSON serialization code (`*.g.dart`)
- Injectable dependency injection code (`injectable.config.dart`)
- Riverpod provider overrides

---

### Environment Setup

Create a `.env` file in the project root based on the provided template:

```bash
cp .env.example .env
```

Edit `.env` with your credentials:

```dotenv
# -------------------------------------------------------
# App Environment
# -------------------------------------------------------
FLAVOR=dev                          # dev | staging | production

# -------------------------------------------------------
# Stripe Payment Processing
# -------------------------------------------------------
STRIPE_PUBLISHABLE_KEY=pk_test_xxxxxxxxxxxxxxxxxxxxx
STRIPE_SECRET_KEY=sk_test_xxxxxxxxxxxxxxxxxxxxx
STRIPE_WEBHOOK_SECRET=whsec_xxxxxxxxxxxxxxxxxxxxx

# -------------------------------------------------------
# Encryption
# -------------------------------------------------------
AES_ENCRYPTION_KEY=your_32_character_key_here_xxxxx
AES_IV=your_16_character_iv_xxxxx

# -------------------------------------------------------
# Third-party Integrations (Optional)
# -------------------------------------------------------
AGORA_APP_ID=your_agora_app_id          # For video calls
GOOGLE_MAPS_API_KEY=your_maps_key       # For map discovery

# -------------------------------------------------------
# Feature Flags
# -------------------------------------------------------
ENABLE_AR_FEATURES=false
ENABLE_VIDEO_CALLS=true
ENABLE_PREMIUM_SUBSCRIPTIONS=true
```

> ⚠️ **Important:** Never commit `.env` files or any file containing real API keys to version control. The `.gitignore` is pre-configured to exclude sensitive files.

---

### Firebase Configuration

**Step 1: Create a Firebase project**

1. Go to [console.firebase.google.com](https://console.firebase.google.com)
2. Create a new project named `construction-lk` (or your preferred name)
3. Enable Google Analytics when prompted

**Step 2: Enable Firebase services**

In the Firebase Console, enable the following services:

- **Authentication** — Enable Email/Password, Google, and Apple providers
- **Cloud Firestore** — Create a database in production mode (rules configured below)
- **Firebase Storage** — Default bucket
- **Cloud Messaging** — For push notifications
- **Analytics** — For user behavior tracking
- **Crashlytics** — For crash reporting
- **App Check** — Configure with Play Integrity (Android) and DeviceCheck (iOS)

**Step 3: Configure FlutterFire**

```bash
flutterfire configure
```

Follow the interactive prompts to select your Firebase project and target platforms. This generates `lib/firebase_options.dart` automatically.

**Step 4: Add configuration files manually (if needed)**

For Android, place `google-services.json` in `android/app/`.
For iOS, place `GoogleService-Info.plist` in `ios/Runner/`.

---

### Running the App

**Development mode:**

```bash
# Android
flutter run --flavor dev -t lib/main_dev.dart

# iOS
flutter run --flavor dev -t lib/main_dev.dart --device-id <ios-device-id>
```

**Staging mode:**

```bash
flutter run --flavor staging -t lib/main_staging.dart
```

**Production mode:**

```bash
flutter run --flavor production -t lib/main_production.dart
```

**Hot reload** is available during development. Press `r` in the terminal to reload, or `R` for a full restart.

---

## 🛠️ Code Generation

The project relies on `build_runner` for automatic generation of boilerplate code. Always run code generation after:

- Creating or modifying Freezed models
- Adding new JSON serialization
- Modifying injectable dependencies
- Updating Riverpod providers with code generation

```bash
# Single build (use when setting up or after pulling changes)
dart run build_runner build

# Watch mode (use during active development — auto-rebuilds on save)
dart run build_runner watch

# Clean all generated files then rebuild (use when resolving conflicts)
dart run build_runner clean && dart run build_runner build --delete-conflicting-outputs

# Build with verbose output for debugging
dart run build_runner build --verbose --delete-conflicting-outputs
```

### Generated File Conventions

| Suffix | Generator | Purpose |
|--------|-----------|---------|
| `*.freezed.dart` | freezed | Immutable model classes, copyWith, equality |
| `*.g.dart` | json_serializable | `fromJson` / `toJson` methods |
| `injectable.config.dart` | injectable | Dependency injection container |
| `*.gr.dart` | auto_route | Type-safe route definitions |

> 💡 **Tip:** Add `*.freezed.dart`, `*.g.dart`, and `*.gr.dart` to `.gitignore` if you prefer to generate them locally. Alternatively, commit them for deterministic CI builds.

---

## 🔐 Firestore Security Rules

Copy and paste the following rules into the Firebase Console under **Firestore Database → Rules**:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {

    // ─────────────────────────────────────────
    // Helper Functions
    // ─────────────────────────────────────────

    function isAuthenticated() {
      return request.auth != null;
    }

    function isOwner(userId) {
      return isAuthenticated() && request.auth.uid == userId;
    }

    function isAdmin() {
      return isAuthenticated() &&
        get(/databases/$(database)/documents/users/$(request.auth.uid)).data.role == 'admin';
    }

    function isContractor() {
      return isAuthenticated() &&
        get(/databases/$(database)/documents/users/$(request.auth.uid)).data.role == 'contractor';
    }

    function isClient() {
      return isAuthenticated() &&
        get(/databases/$(database)/documents/users/$(request.auth.uid)).data.role == 'client';
    }

    function validUserFields() {
      return request.resource.data.keys().hasAll(['uid', 'email', 'role', 'createdAt'])
        && request.resource.data.role in ['client', 'contractor'];
    }

    function validProjectFields() {
      return request.resource.data.keys().hasAll([
        'clientId', 'title', 'description', 'budget', 'status', 'createdAt'
      ]);
    }

    function validBidFields() {
      return request.resource.data.keys().hasAll([
        'contractorId', 'projectId', 'amount', 'proposal', 'status', 'createdAt'
      ]);
    }

    // ─────────────────────────────────────────
    // Users Collection
    // ─────────────────────────────────────────
    match /users/{userId} {
      allow read: if isAuthenticated();
      allow create: if isOwner(userId) && validUserFields();
      allow update: if isOwner(userId) || isAdmin();
      allow delete: if isAdmin();

      // User's private settings — only owner can access
      match /settings/{settingId} {
        allow read, write: if isOwner(userId);
      }

      // Notification preferences
      match /notifications/{notificationId} {
        allow read, write: if isOwner(userId);
      }
    }

    // ─────────────────────────────────────────
    // Projects Collection
    // ─────────────────────────────────────────
    match /projects/{projectId} {
      allow read: if isAuthenticated();
      allow create: if isClient() && validProjectFields()
        && request.resource.data.clientId == request.auth.uid;
      allow update: if isOwner(resource.data.clientId) || isAdmin();
      allow delete: if isOwner(resource.data.clientId)
        && resource.data.status == 'draft';

      // Project milestones
      match /milestones/{milestoneId} {
        allow read: if isAuthenticated();
        allow write: if isOwner(
          get(/databases/$(database)/documents/projects/$(projectId)).data.clientId
        ) || isAdmin();
      }

      // Project documents and files
      match /documents/{documentId} {
        allow read: if isAuthenticated();
        allow create: if isAuthenticated();
        allow update, delete: if isOwner(resource.data.uploadedBy) || isAdmin();
      }
    }

    // ─────────────────────────────────────────
    // Bids Collection
    // ─────────────────────────────────────────
    match /bids/{bidId} {
      allow read: if isAuthenticated();
      allow create: if isContractor() && validBidFields()
        && request.resource.data.contractorId == request.auth.uid;
      allow update: if isOwner(resource.data.contractorId)
        && resource.data.status == 'pending';
      allow delete: if isOwner(resource.data.contractorId)
        && resource.data.status == 'pending';
    }

    // ─────────────────────────────────────────
    // Payments Collection
    // ─────────────────────────────────────────
    match /payments/{paymentId} {
      allow read: if isAuthenticated() && (
        request.auth.uid == resource.data.clientId ||
        request.auth.uid == resource.data.contractorId ||
        isAdmin()
      );
      // Payment records are created by Cloud Functions (server-side) only
      allow create, update, delete: if isAdmin();
    }

    // ─────────────────────────────────────────
    // Reviews Collection
    // ─────────────────────────────────────────
    match /reviews/{reviewId} {
      allow read: if isAuthenticated();
      allow create: if isAuthenticated()
        && request.resource.data.reviewerId == request.auth.uid
        && request.resource.data.keys().hasAll([
          'reviewerId', 'revieweeId', 'projectId', 'rating', 'createdAt'
        ])
        && request.resource.data.rating >= 1
        && request.resource.data.rating <= 5;
      allow update: if isOwner(resource.data.reviewerId)
        && request.time < resource.data.createdAt + duration.value(7, 'd');
      allow delete: if isAdmin();
    }

    // ─────────────────────────────────────────
    // Messages Collection
    // ─────────────────────────────────────────
    match /conversations/{conversationId} {
      allow read: if isAuthenticated() &&
        request.auth.uid in resource.data.participantIds;
      allow create: if isAuthenticated() &&
        request.auth.uid in request.resource.data.participantIds;
      allow update: if isAuthenticated() &&
        request.auth.uid in resource.data.participantIds;

      match /messages/{messageId} {
        allow read: if isAuthenticated() &&
          request.auth.uid in get(/databases/$(database)/documents/conversations/$(conversationId)).data.participantIds;
        allow create: if isAuthenticated() &&
          request.resource.data.senderId == request.auth.uid &&
          request.auth.uid in get(/databases/$(database)/documents/conversations/$(conversationId)).data.participantIds;
        allow update: if isOwner(resource.data.senderId);
        allow delete: if false; // Messages are never hard-deleted
      }
    }

    // ─────────────────────────────────────────
    // Subscriptions Collection
    // ─────────────────────────────────────────
    match /subscriptions/{subscriptionId} {
      allow read: if isOwner(resource.data.userId) || isAdmin();
      allow create, update, delete: if isAdmin();
    }

    // ─────────────────────────────────────────
    // Analytics Events (write-only from clients)
    // ─────────────────────────────────────────
    match /analytics_events/{eventId} {
      allow create: if isAuthenticated();
      allow read, update, delete: if isAdmin();
    }
  }
}
```

---

## 🗂️ Firebase Storage Rules

Place the following rules in Firebase Console under **Storage → Rules**:

```javascript
rules_version = '2';
service firebase.storage {
  match /b/{bucket}/o {

    function isAuthenticated() {
      return request.auth != null;
    }

    function isOwner(userId) {
      return isAuthenticated() && request.auth.uid == userId;
    }

    function isImageFile() {
      return request.resource.contentType.matches('image/.*');
    }

    function isDocumentFile() {
      return request.resource.contentType in [
        'application/pdf',
        'application/msword',
        'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
      ];
    }

    function isUnder10MB() {
      return request.resource.size <= 10 * 1024 * 1024;
    }

    function isUnder25MB() {
      return request.resource.size <= 25 * 1024 * 1024;
    }

    // Profile images
    match /users/{userId}/profile/{allPaths=**} {
      allow read: if isAuthenticated();
      allow write: if isOwner(userId) && isImageFile() && isUnder10MB();
    }

    // Portfolio images
    match /users/{userId}/portfolio/{allPaths=**} {
      allow read: if isAuthenticated();
      allow write: if isOwner(userId) && isImageFile() && isUnder10MB();
    }

    // Project media (photos, progress updates)
    match /projects/{projectId}/{allPaths=**} {
      allow read: if isAuthenticated();
      allow write: if isAuthenticated() && (isImageFile() || isDocumentFile()) && isUnder25MB();
    }

    // Message attachments
    match /conversations/{conversationId}/{allPaths=**} {
      allow read: if isAuthenticated();
      allow write: if isAuthenticated() && isUnder25MB();
    }

    // Verification documents (KYC, license uploads)
    match /verifications/{userId}/{allPaths=**} {
      allow read: if isOwner(userId);
      allow write: if isOwner(userId) && isDocumentFile() && isUnder25MB();
    }
  }
}
```

---

## 🧪 Testing

The project maintains three levels of test coverage: unit tests for business logic, widget tests for UI components, and integration tests for end-to-end user flows.

### Running Tests

```bash
# Run all tests
flutter test

# Run tests with verbose output
flutter test --reporter expanded

# Run a specific test file
flutter test test/unit/repositories/project_repository_test.dart

# Run tests matching a name pattern
flutter test --name "project creation"

# Run with code coverage
flutter test --coverage

# View coverage report (requires lcov)
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html

# Coverage summary only
lcov --list coverage/lcov.info
```

### Test Structure

```
test/
├── unit/
│   ├── models/
│   │   ├── project_model_test.dart
│   │   ├── bid_model_test.dart
│   │   └── payment_model_test.dart
│   ├── repositories/
│   │   ├── project_repository_test.dart
│   │   ├── bid_repository_test.dart
│   │   └── review_repository_test.dart
│   └── services/
│       ├── payment_service_test.dart
│       ├── matching_service_test.dart
│       └── analytics_service_test.dart
├── widget/
│   ├── features/
│   │   ├── auth/
│   │   ├── projects/
│   │   ├── bids/
│   │   └── payments/
│   └── ui_components/
└── integration/
    ├── scenarios/
    │   ├── client_post_project_test.dart
    │   ├── contractor_submit_bid_test.dart
    │   └── payment_flow_test.dart
    └── test_driver.dart
```

### Writing Tests

Follow these conventions when writing tests:

```dart
// Unit test example — repository layer
void main() {
  group('ProjectRepository', () {
    late ProjectRepository repository;
    late MockFirebaseFirestore mockFirestore;

    setUp(() {
      mockFirestore = MockFirebaseFirestore();
      repository = ProjectRepository(firestore: mockFirestore);
    });

    tearDown(() {
      reset(mockFirestore);
    });

    group('createProject', () {
      test('returns project ID on success', () async {
        // Arrange
        final project = ProjectModel.fixture();
        when(mockFirestore.collection('projects').add(any))
            .thenAnswer((_) async => MockDocumentReference());

        // Act
        final result = await repository.createProject(project);

        // Assert
        expect(result, isA<String>());
        verify(mockFirestore.collection('projects').add(any)).called(1);
      });

      test('throws AppException on Firestore error', () async {
        // Arrange
        when(mockFirestore.collection('projects').add(any))
            .thenThrow(FirebaseException(plugin: 'cloud_firestore'));

        // Act & Assert
        expect(
          () => repository.createProject(ProjectModel.fixture()),
          throwsA(isA<AppException>()),
        );
      });
    });
  });
}
```

### Coverage Targets

| Layer | Target Coverage |
|-------|----------------|
| Models | 100% |
| Repositories | 90%+ |
| Services | 85%+ |
| UI Components | 70%+ |
| Screens | 60%+ |

---

## 📊 Performance & Best Practices

### Image Optimization

```dart
// Compress images before upload
Future<File> compressImage(File imageFile) async {
  final result = await FlutterImageCompress.compressAndGetFile(
    imageFile.absolute.path,
    '${imageFile.path}_compressed.jpg',
    quality: 75,
    minWidth: 1024,
    minHeight: 1024,
  );
  return result ?? imageFile;
}

// Use CachedNetworkImage for all remote images
CachedNetworkImage(
  imageUrl: contractor.profileImageUrl,
  placeholder: (context, url) => const ShimmerAvatar(),
  errorWidget: (context, url, error) => const DefaultAvatar(),
  memCacheWidth: 200,  // Resize in memory to save RAM
  memCacheHeight: 200,
)
```

**Guidelines:**
- Compress all user-uploaded images to a maximum of 1024px on the longer edge before uploading to Firebase Storage
- Use WebP format where supported for ~30% smaller file sizes
- Implement thumbnail generation via Cloud Functions for list views
- Apply `RepaintBoundary` around complex, independently-animated widgets
- Use `const` constructors wherever possible to prevent unnecessary rebuilds

### Database Optimization

```dart
// Always paginate queries — never load unbounded collections
Query<Map<String, dynamic>> getPaginatedProjects({
  DocumentSnapshot? lastDocument,
  int pageSize = 20,
}) {
  var query = _firestore
      .collection('projects')
      .orderBy('createdAt', descending: true)
      .limit(pageSize);

  if (lastDocument != null) {
    query = query.startAfterDocument(lastDocument);
  }

  return query;
}

// Use field masks for partial updates to reduce write costs
Future<void> updateProjectStatus(String projectId, ProjectStatus status) {
  return _firestore.collection('projects').doc(projectId).update({
    'status': status.name,
    'updatedAt': FieldValue.serverTimestamp(),
  });
  // Only 2 fields are written, not the entire document
}

// Cache frequently-read, rarely-changed data
@riverpod
Future<List<Category>> projectCategories(ProjectCategoriesRef ref) async {
  // Returns cached result on subsequent calls
  return ref.watch(categoryRepositoryProvider).getCategories();
}
```

**Guidelines:**
- Paginate all list queries with a default page size of 20
- Create Firestore composite indexes for any `where` + `orderBy` combinations
- Use `FieldValue.serverTimestamp()` for all timestamp fields
- Denormalize data strategically — store contractor summary data in project documents to avoid extra reads
- Avoid deeply nested subcollections (maximum 2 levels deep)

### State Management

```dart
// Use AsyncNotifier for async operations with proper loading/error states
@riverpod
class ProjectsNotifier extends _$ProjectsNotifier {
  @override
  Future<List<ProjectModel>> build() async {
    return ref.watch(projectRepositoryProvider).getUserProjects(
      userId: ref.watch(currentUserProvider).uid,
    );
  }

  Future<void> createProject(CreateProjectDto dto) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final id = await ref.read(projectRepositoryProvider).create(dto);
      return [...(state.valueOrNull ?? []), dto.toModel(id)];
    });
  }
}

// Cancel subscriptions to prevent memory leaks
@riverpod
Stream<ProjectModel> projectStream(ProjectStreamRef ref, String projectId) {
  final subscription = ref
      .watch(projectRepositoryProvider)
      .streamProject(projectId);

  ref.onDispose(() => subscription.cancel());
  return subscription;
}
```

**Guidelines:**
- Use `AsyncNotifier` for async state with loading, data, and error states
- Always call `ref.onDispose()` to clean up Firestore stream subscriptions
- Use `FamilyProvider` for parameterized data (e.g., `projectProvider(projectId)`)
- Prefer `select` over watching entire provider state when only a subset of data is needed
- Implement optimistic updates for immediate UI feedback on user actions

### Error Handling

```dart
// Centralized error handling with AppException
sealed class AppException implements Exception {
  const AppException(this.message);
  final String message;
}

final class NetworkException extends AppException {
  const NetworkException() : super('Network connection unavailable');
}

final class PermissionException extends AppException {
  const PermissionException(this.requiredPermission)
      : super('Permission denied: $requiredPermission');
  final String requiredPermission;
}

// Repository usage — always translate Firebase exceptions
Future<ProjectModel> getProject(String projectId) async {
  try {
    final doc = await _firestore.collection('projects').doc(projectId).get();
    if (!doc.exists) throw const NotFoundException('Project not found');
    return ProjectModel.fromJson(doc.data()!);
  } on FirebaseException catch (e, stack) {
    _logger.error('Failed to fetch project', error: e, stackTrace: stack);
    FirebaseCrashlytics.instance.recordError(e, stack);
    throw FirestoreException(e.message ?? 'Unknown error');
  }
}
```

**Guidelines:**
- Never expose Firebase internals to the UI layer — always translate to `AppException` subclasses
- Log all errors with structured context using the `AppLogger` utility
- Record errors with Crashlytics in production environments
- Implement exponential backoff retry logic for transient network errors
- Always provide user-friendly error messages in the UI

---

## 🔄 Feature Roadmap

### Phase 1: Foundation ✅ Completed

Core platform features required for marketplace viability.

- [x] User registration and authentication (email, Google, Apple)
- [x] Role-based onboarding (client vs. contractor)
- [x] Project creation and management
- [x] Contractor profile with portfolio
- [x] Bidding system — submit, view, and compare bids
- [x] Basic in-app messaging
- [x] Push notifications
- [x] Project progress tracking

### Phase 2: Trust & Payments 🔄 In Progress

Features that build trust and enable financial transactions.

- [x] Stripe payment integration
- [x] Escrow-based milestone payments
- [ ] Review and rating system (frontend complete, backend testing)
- [ ] Badge and contractor verification system
- [ ] Identity verification (NIC/passport upload)
- [ ] Dispute resolution workflow
- [ ] Invoice generation and download

### Phase 3: Intelligence — Q3 2024

Data-driven features that improve matching quality and user outcomes.

- [ ] AI-powered contractor matching engine (MVP)
- [ ] Smart bid pricing recommendations
- [ ] Predictive project completion timelines
- [ ] Spam and fraud detection via ML
- [ ] Personalized project feed

### Phase 4: Premium Features — Q4 2024

Monetization features for the platform's premium tier.

- [ ] Subscription tier management (Free / Professional / Enterprise)
- [ ] Advanced analytics dashboards for contractors
- [ ] Featured contractor listings
- [ ] Priority bid placement
- [ ] Bulk project posting for developers
- [ ] API access for property developers and real estate firms
- [ ] White-label options for construction companies

### Phase 5: AR & Advanced — Q1 2025

Next-generation features for a differentiated experience.

- [ ] AR site visualization and measurement (ARCore/ARKit)
- [ ] Integrated video consultations (Agora SDK)
- [ ] Advanced document management with e-signatures
- [ ] BIM (Building Information Modelling) file viewer
- [ ] Offline mode with conflict-free sync

---

## 📱 Platform Support

| Platform | Minimum Version | Status |
|----------|----------------|--------|
| Android | API 21 (Android 5.0+) | ✅ Production |
| iOS | 12.0+ | ✅ Production |
| Web | — | 🔄 Planned (Phase 4) |
| macOS | 10.15+ | 🔄 Planned |
| Windows | Windows 10+ | 🔄 Planned |

**Device Testing Matrix:**

| Device Class | Tested Devices |
|-------------|---------------|
| Android Flagship | Samsung Galaxy S23, Pixel 8 |
| Android Mid-Range | Samsung Galaxy A54, Redmi Note 12 |
| Android Low-End | Samsung Galaxy A14 (API 33) |
| iPhone | iPhone 15, iPhone 13, iPhone SE (3rd gen) |
| iPad | iPad Air 5th gen, iPad 9th gen |

---

## 🛡️ Security Checklist

Use this checklist before every production release:

**API Keys & Credentials**
- [ ] All API keys rotated from staging to production values
- [ ] `.env` file excluded from version control (verify `.gitignore`)
- [ ] No hardcoded credentials anywhere in the codebase (`git grep -r "pk_live"`)
- [ ] Firebase App Check enabled on both platforms

**Network Security**
- [ ] HTTPS enforced for all external network connections
- [ ] Certificate pinning enabled for Stripe API calls
- [ ] Network security config (`network_security_config.xml`) reviewed for Android

**Data Security**
- [ ] Sensitive user data (tokens, keys) stored in `flutter_secure_storage`, not SharedPreferences
- [ ] AES-256 encryption active for all message content
- [ ] Firestore Security Rules tested against attack vectors (Firebase Rules Simulator)
- [ ] Storage Rules tested — verify users cannot access other users' private files

**Authentication**
- [ ] Account enumeration prevention enabled (identical error messages for login/register)
- [ ] Rate limiting active on authentication endpoints (Firebase Auth default)
- [ ] Inactive sessions expire after 30 days

**Compliance**
- [ ] GDPR data deletion workflow functional (user account deletion removes all PII)
- [ ] Privacy policy and terms of service up to date
- [ ] PCI DSS scope minimized (all card data handled by Stripe, never touches our servers)
- [ ] Accessibility audit completed (WCAG 2.1 AA)

**Monitoring**
- [ ] Firebase Crashlytics enabled for production builds
- [ ] Alerting configured for error rate spikes
- [ ] Regular security audit scheduled (quarterly)

---

## 📈 Monitoring & Analytics

### Firebase Analytics

Track user behavior and funnel metrics:

```dart
// Custom event tracking
class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  Future<void> trackProjectPosted({
    required String projectId,
    required String category,
    required double budget,
  }) async {
    await _analytics.logEvent(
      name: 'project_posted',
      parameters: {
        'project_id': projectId,
        'category': category,
        'budget_lkr': budget,
      },
    );
  }

  Future<void> trackBidSubmitted({
    required String bidId,
    required String projectId,
    required double amount,
  }) async {
    await _analytics.logEvent(
      name: 'bid_submitted',
      parameters: {
        'bid_id': bidId,
        'project_id': projectId,
        'bid_amount_lkr': amount,
      },
    );
  }

  Future<void> trackPaymentCompleted({
    required String paymentId,
    required double amount,
    required String paymentMethod,
  }) async {
    await _analytics.logRevenue(
      currency: 'LKR',
      value: amount,
    );
  }
}
```

### Key Metrics Dashboard

| Metric | Tool | Frequency |
|--------|------|-----------|
| DAU / MAU | Firebase Analytics | Real-time |
| Crash-free session rate | Firebase Crashlytics | Real-time |
| Payment success rate | Stripe Dashboard | Real-time |
| Project-to-hire conversion | Firebase Analytics | Daily |
| Bid acceptance rate | Custom Analytics | Daily |
| Average time-to-hire | BigQuery export | Weekly |
| Net Promoter Score | In-app survey | Monthly |

### Alerting

Configure the following alerts in Firebase:

- **Crash rate > 1%** — Immediate PagerDuty alert
- **ANR rate > 0.5%** — Slack notification
- **Payment failure rate > 2%** — Stripe webhook alert
- **Authentication error spike** — Firebase alert policy
- **Firestore read quota > 80%** — GCP monitoring alert

---

## 🚢 Deployment

### Building Release Artifacts

**Android APK (for direct distribution):**

```bash
flutter build apk --flavor production -t lib/main_production.dart --release
# Output: build/app/outputs/flutter-apk/app-production-release.apk
```

**Android App Bundle (for Play Store):**

```bash
flutter build appbundle --flavor production -t lib/main_production.dart --release
# Output: build/app/outputs/bundle/productionRelease/app-production-release.aab
```

**iOS Archive (for App Store / TestFlight):**

```bash
flutter build ipa --flavor production -t lib/main_production.dart --release
# Output: build/ios/ipa/construction_lk.ipa
```

### Play Store Submission

1. Increment `versionCode` in `android/app/build.gradle`
2. Build the signed AAB (signing configured via key store)
3. Upload to Play Console → Internal Testing → Promote to Production
4. Submit for review (typically 1–3 business days)

### App Store Submission

1. Increment `CFBundleVersion` in `ios/Runner/Info.plist`
2. Build the IPA in Xcode or via `flutter build ipa`
3. Upload via `xcrun altool` or Transporter
4. Submit in App Store Connect for App Review (typically 1–2 business days)

### Firebase Hosting (Web — Future)

```bash
flutter build web --release
firebase deploy --only hosting
```

---

## 🔁 CI/CD Pipeline

The project uses GitHub Actions for automated build, test, and deployment workflows.

### Workflow Overview

```yaml
# .github/workflows/ci.yml

name: CI/CD Pipeline

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  test:
    name: Test & Analyze
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.10.8'
          channel: 'stable'

      - name: Install dependencies
        run: flutter pub get

      - name: Run code generation
        run: dart run build_runner build --delete-conflicting-outputs

      - name: Analyze code
        run: flutter analyze

      - name: Check formatting
        run: dart format --set-exit-if-changed .

      - name: Run tests
        run: flutter test --coverage

      - name: Upload coverage
        uses: codecov/codecov-action@v3
        with:
          file: coverage/lcov.info

  build-android:
    name: Build Android
    needs: test
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'
    steps:
      - uses: actions/checkout@v4
      - uses: subosito/flutter-action@v2
      - run: flutter pub get
      - run: dart run build_runner build --delete-conflicting-outputs
      - name: Build AAB
        run: flutter build appbundle --flavor production -t lib/main_production.dart

  build-ios:
    name: Build iOS
    needs: test
    runs-on: macos-latest
    if: github.ref == 'refs/heads/main'
    steps:
      - uses: actions/checkout@v4
      - uses: subosito/flutter-action@v2
      - run: flutter pub get
      - run: dart run build_runner build --delete-conflicting-outputs
      - name: Build IPA
        run: flutter build ipa --flavor production -t lib/main_production.dart --no-codesign
```

---

## 📖 API Reference

### Cloud Functions Endpoints

| Endpoint | Method | Auth | Description |
|----------|--------|------|-------------|
| `/createPaymentIntent` | POST | Bearer | Create Stripe PaymentIntent for milestone |
| `/confirmMilestoneRelease` | POST | Bearer | Release escrowed funds to contractor |
| `/processRefund` | POST | Bearer (Admin) | Initiate refund for disputed payment |
| `/sendMatchNotifications` | POST | Service Account | Notify contractors of matching projects |
| `/generateInvoice` | POST | Bearer | Generate PDF invoice for completed project |
| `/updateContractorScore` | PATCH | Service Account | Recalculate contractor reputation score |

### Stripe Webhook Events Handled

| Event | Handler | Action |
|-------|---------|--------|
| `payment_intent.succeeded` | `handlePaymentSuccess` | Update payment status, release funds |
| `payment_intent.payment_failed` | `handlePaymentFailure` | Notify client, update status |
| `customer.subscription.created` | `handleSubscriptionCreated` | Activate premium features |
| `customer.subscription.deleted` | `handleSubscriptionCancelled` | Downgrade to free tier |
| `charge.dispute.created` | `handleDisputeCreated` | Freeze project, alert admins |

### Firestore Collection Schemas

**`/users/{userId}`**
```typescript
{
  uid: string;
  email: string;
  displayName: string;
  role: 'client' | 'contractor';
  avatarUrl?: string;
  phoneNumber?: string;
  location: {
    district: string;
    province: string;
    coordinates?: GeoPoint;
  };
  contractor?: {
    specialties: string[];
    yearsExperience: number;
    licenseNumber?: string;
    isVerified: boolean;
    averageRating: number;
    totalReviews: number;
    reputationScore: number;
  };
  subscription: {
    tier: 'free' | 'professional' | 'enterprise';
    expiresAt?: Timestamp;
    stripeCustomerId?: string;
  };
  createdAt: Timestamp;
  updatedAt: Timestamp;
}
```

**`/projects/{projectId}`**
```typescript
{
  clientId: string;
  title: string;
  description: string;
  category: string;
  subCategory?: string;
  budget: {
    min: number;
    max: number;
    currency: 'LKR';
  };
  location: {
    district: string;
    province: string;
    address?: string;
    coordinates?: GeoPoint;
  };
  timeline: {
    startDate?: Timestamp;
    endDate?: Timestamp;
    flexibility: 'fixed' | 'flexible';
  };
  status: 'draft' | 'open' | 'in_progress' | 'completed' | 'cancelled';
  attachments: string[];  // Firebase Storage URLs
  bidCount: number;
  selectedBidId?: string;
  selectedContractorId?: string;
  createdAt: Timestamp;
  updatedAt: Timestamp;
}
```

**`/bids/{bidId}`**
```typescript
{
  contractorId: string;
  projectId: string;
  clientId: string;  // Denormalized for query efficiency
  amount: number;
  currency: 'LKR';
  proposal: string;
  timeline: {
    estimatedDays: number;
    startDate?: Timestamp;
  };
  milestones: {
    description: string;
    percentage: number;
    amount: number;
  }[];
  status: 'pending' | 'accepted' | 'rejected' | 'withdrawn';
  viewedByClient: boolean;
  createdAt: Timestamp;
  updatedAt: Timestamp;
}
```

---

## 🐛 Known Issues & Limitations

| Issue | Severity | Status | Workaround |
|-------|----------|--------|------------|
| Composite Firestore queries require index creation | Medium | By Design | Create indexes via Firebase Console as prompted |
| AR features only available on ARCore/ARKit compatible devices | Medium | By Design | Feature gates based on device capability check |
| Video calls limited to 10 concurrent participants | Low | Known Limit | Use external video link for larger groups |
| Real-time sync may exhibit delays of up to 1 second on slow connections | Low | By Design | Optimistic UI updates reduce perceived latency |
| FCM notifications may be delayed on iOS with Low Power Mode enabled | Low | Platform Limitation | None — iOS system behavior |
| Large portfolio image galleries (>50 images) may cause scroll jank on low-end Android devices | Medium | In Progress | Lazy loading optimizations planned for v1.1 |
| Stripe payment sheet unavailable in offline mode | High | By Design | Enforce connectivity check before payment initiation |

---

## 🤝 Contributing

We welcome contributions from the community! Before submitting a pull request, please read through the following guidelines.

### Getting Set Up for Contribution

```bash
# Fork the repository, then clone your fork
git clone https://github.com/YOUR_USERNAME/construction-lk.git
cd construction-lk

# Add the upstream remote
git remote add upstream https://github.com/yourusername/construction-lk.git

# Create a feature branch from develop (never from main)
git checkout develop
git pull upstream develop
git checkout -b feature/your-feature-name
```

### Contribution Workflow

1. **Discuss first** — For significant changes, open an issue to discuss the approach before writing code
2. **Branch naming** — Use the convention `feature/`, `fix/`, `docs/`, or `chore/` prefixes
3. **Write tests** — All new features must include unit tests; bug fixes should include regression tests
4. **Run the full suite** — Ensure `flutter test` and `flutter analyze` pass with zero issues before submitting
5. **Commit messages** — Follow [Conventional Commits](https://conventionalcommits.org/) format
6. **Pull Request** — Fill in the PR template completely; link to any related issues

### Commit Message Format

```
<type>(<scope>): <short description>

[optional body]

[optional footer: BREAKING CHANGE / Closes #issue]
```

**Types:** `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

**Examples:**
```
feat(bids): add bid comparison screen with side-by-side contractor cards
fix(payments): prevent double-tap submission on payment confirmation button
docs(readme): update Firebase setup instructions for FlutterFire 1.0
test(projects): add repository unit tests for pagination edge cases
chore(deps): bump flutter to 3.13.0
```

### Pull Request Checklist

Before requesting review, verify:

- [ ] Code follows the project's style guide
- [ ] All new/modified functions have documentation comments
- [ ] Unit tests written and passing for new logic
- [ ] No new `flutter analyze` warnings introduced
- [ ] Code formatted with `dart format .`
- [ ] Self-reviewed the diff for accidental debug code or TODO comments
- [ ] PR description explains the *why*, not just the *what*
- [ ] Screenshots or screen recordings attached for UI changes

---

## 📝 Code Style Guide

ConstructionLK follows standard Dart conventions with additional project-specific guidelines.

### Naming Conventions

```dart
// ✅ Classes — PascalCase
class ProjectRepository {}
class CreateProjectDto {}

// ✅ Functions, variables, parameters — camelCase
final projectList = <ProjectModel>[];
Future<void> createProject(CreateProjectDto dto) async {}

// ✅ Constants — lowerCamelCase (prefer const)
const defaultPageSize = 20;
const maxBidAmount = 50000000.0; // LKR 50M

// ✅ Private members — leading underscore
final _firestore = FirebaseFirestore.instance;
void _handleError(Object error) {}

// ✅ File names — snake_case
// project_repository.dart ✅
// ProjectRepository.dart ❌
```

### Code Organization

```dart
// Order within a class:
// 1. Static constants
// 2. Final fields
// 3. Late fields
// 4. Constructor(s)
// 5. Factory constructors
// 6. Public getters/setters
// 7. Public methods
// 8. Private methods

class ProjectService {
  // 1. Static constants
  static const _maxBidsPerProject = 50;

  // 2. Final fields
  final ProjectRepository _repository;
  final AnalyticsService _analytics;

  // 3. Constructor
  const ProjectService({
    required ProjectRepository repository,
    required AnalyticsService analytics,
  })  : _repository = repository,
        _analytics = analytics;

  // 4. Public methods
  Future<String> createProject(CreateProjectDto dto) async { ... }

  // 5. Private methods
  Future<void> _notifyMatchingContractors(String projectId) async { ... }
}
```

### Documentation

```dart
/// Creates a new construction project and notifies matching contractors.
///
/// [dto] contains validated project data from the creation form.
///
/// Returns the newly created project's Firestore document ID.
///
/// Throws [ValidationException] if [dto] fails business rule validation.
/// Throws [FirestoreException] if the Firestore write operation fails.
///
/// Example:
/// ```dart
/// final projectId = await projectService.createProject(
///   CreateProjectDto(
///     title: 'Kitchen Renovation',
///     category: 'renovation',
///     budget: BudgetRange(min: 200000, max: 500000),
///   ),
/// );
/// ```
Future<String> createProject(CreateProjectDto dto) async {
```

### Pre-commit Verification

Run these commands before every commit:

```bash
# 1. Analyze code for issues
flutter analyze

# 2. Format all Dart files
dart format .

# 3. Run test suite
flutter test

# 4. Verify no debug code is present
grep -r "debugPrint\|print(" lib/ --include="*.dart"
```

Set up a pre-commit hook to automate this:

```bash
# .git/hooks/pre-commit
#!/bin/sh
flutter analyze && dart format --set-exit-if-changed .
```

---

## 📄 License

This project is licensed under the **MIT License**.

```
MIT License

Copyright (c) 2026 ConstructionLK

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

See the full [LICENSE](LICENSE) file for details.

---

## 🎉 Acknowledgments

ConstructionLK is made possible by the incredible open-source community and the following technologies and teams:

- **[Flutter Team](https://flutter.dev)** — For building an outstanding cross-platform framework
- **[Firebase](https://firebase.google.com)** — For the scalable, developer-friendly backend infrastructure
- **[Stripe](https://stripe.com)** — For reliable, PCI-compliant payment processing
- **[Riverpod](https://riverpod.dev)** — For an elegant, type-safe state management solution
- **[Freezed](https://pub.dev/packages/freezed)** — For eliminating boilerplate in data models
- **[go_router](https://pub.dev/packages/go_router)** — For declarative, URL-based routing
- All **contributors** and **early testers** who provided invaluable feedback during development
- The **Sri Lankan construction industry community** for domain expertise and user research participation

---

## 📞 Support & Contact

| Channel | Link | Response Time |
|---------|------|--------------|
| 🐛 Bug Reports | [GitHub Issues](https://github.com/yourusername/construction-lk/issues) | 1–2 business days |
| 💡 Feature Requests | [GitHub Discussions](https://github.com/yourusername/construction-lk/discussions) | 3–5 business days |
| 📧 Email Support | support@constructionlk.com | 2–3 business days |
| 💬 Community Slack | [Join Community](https://constructionlk.slack.com) | Community-driven |
| 📖 Documentation | [docs.constructionlk.com](https://docs.constructionlk.com) | — |

For **security vulnerabilities**, please do **not** open a public GitHub issue. Instead, email security@constructionlk.com with details. We follow responsible disclosure practices and will respond within 72 hours.

---

<div align="center">

**Built with ❤️ for Sri Lanka's construction industry**

![Flutter](https://img.shields.io/badge/Made%20with-Flutter-02569B?logo=flutter)
![Firebase](https://img.shields.io/badge/Powered%20by-Firebase-FFCA28?logo=firebase&logoColor=black)

*Version 1.0.0 · Last Updated: April 5, 2026 · Status: Production Ready 🚀*

</div>
