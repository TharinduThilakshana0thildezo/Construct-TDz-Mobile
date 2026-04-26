# ConstructionLK - Project Analysis

**Overview:** ConstructionLK is a B2B marketplace for the Sri Lankan construction industry connecting Clients, Contractors, and Engineers for project bidding, collaboration, and cost estimation.

---

## 1. APP PURPOSE & FEATURES

### Primary Function
A multi-sided platform enabling construction industry participants to:
- **Clients:** Post projects, review bids, manage contractors, pay for work
- **Contractors/Engineers:** Browse projects, submit bids, communicate securely, track work
- **Engineers:** Provide expertise and estimates

### Key Features
1. **Authentication & Role-Based Access** (`auth/`)
   - Email/password login and signup
   - Three user roles: Client, Contractor, Engineer
   - Basic onboarding flow with role selection

2. **Dashboard** (`home/`)
   - Welcome screen with platform statistics (1,200+ professionals, 450+ active projects)
   - Platform growth indicators
   - Quick-access to connections and tools
   - Hardcoded project display

3. **Project Management** (`projects/`)
   - Post new projects with specifications (type, district, budget, timeline)
   - File attachment upload (PDF, DWG, JPG, PNG)
   - Project filtering (All, Ongoing, Completed)
   - Project search functionality
   - Project details viewing

4. **Bidding System** (`bids/`)
   - View bids/proposals received
   - Bid details with contractor information
   - Invite contractors to bid on projects
   - Approve and pay for contractor work
   - Bid status tracking (All, Shortlisted, Under Review)

5. **Messaging** (`messages/`)
   - End-to-end encrypted channels using AES-CBC encryption
   - Chat screen with message history
   - Per-chat encryption (derived from chatId SHA256)

6. **User Profiles** (`profile/`)
   - Edit display name
   - View contractor profiles with stats
   - Connection discovery (find contractors/engineers)
   - Notifications system
   - Settings (theme, password reset)
   - Notifications and Terms screens

7. **Tools**
   - **Cost Estimator:** Quick pricing tool (base rate + quality multiplier)
   - **Connections:** Browse and discover verified professionals

---

## 2. SCREEN NAVIGATION FLOW

### Core Navigation Architecture
**Root → Auth Gate → Main Tab Scaffold (3-tab system)**

```
┌─ Auth Gate
│  ├─ Not Authenticated → LoginScreen (email/password)
│  ├─ Authenticated, No Profile → OnboardingScreen
│  └─ Authenticated, Profile Exists → MainTabScaffold
│
├─ Home Tab (HomeTab)
│  ├─ → NotificationsScreen
│  ├─ → ConnectionsScreen
│  ├─ → CostEstimatorScreen
│  └─ → ProjectDetailsScreen
│
├─ Messages Tab (MessagesTab)
│  └─ → ChatScreen (hardcoded channels)
│
└─ Profile Tab (ProfileTab)
   ├─ → EditProfileScreen
   ├─ → NotificationsScreen
   ├─ → SettingsScreen
   │  └─ (Theme picker modal)
   ├─ → BidsScreen
   │  ├─ → BidDetailScreen
   │     ├─ → ChatScreen
   │     ├─ → InviteToBidScreen
   │     └─ → ApprovePayScreen
   └─ → ContractorProfileScreen
```

### Secondary Navigation Paths
- **ProjectsManagementScreen** - Accessible through ProfileTab but incomplete navigation entry point
- **PostNewProjectScreen** - Not directly accessible from UI (orphaned)
- **TermsPrivacyScreen** - Defined but not used
- **NotificationsScreen** - Accessible from two locations (Home & Profile)

---

## 3. KEY COMPONENTS & ARCHITECTURE

### Project Structure
```
lib/
├── app/
│  └── root_app.dart              # App entry, theme setup, auth routing
├── core/
│  ├── models/
│  │  └── app_user.dart           # Single data model (UserRole enum)
│  └── theme/
│     ├── theme_service.dart       # Theme persistence via SharedPreferences
│     └── theme_service_scope.dart # Theme scoping widget
└── features/
   ├── auth/presentation/          # 2 screens (login, onboarding)
   ├── home/presentation/          # 2 screens (dashboard, cost estimator)
   ├── projects/presentation/      # 3 screens (mgmt, post, details)
   ├── bids/presentation/          # 4 screens (list, detail, invite, approve)
   ├── messages/presentation/      # 2 screens (list, chat)
   └── profile/
      ├── presentation/            # 7 screens
      ├── models/                  # NotificationModel
      └── services/                # NotificationService
```

### Data Models (Minimal)
- **AppUser** - Only user model in `core/models`
  - uid, email, role (enum), displayName, onboardingCompleted
  - Methods: fromFirestore(), toMap conversion
- **AppNotification** - In `profile/models`
  - id, title, body, timestamp, isRead, type
- **Implicit models** - Project, Bid, Chat stored directly in Firestore without Dart models

### Services
- **NotificationService** - Streams notifications, marks read, deletes
- **ThemeService** - Manages light/dark mode via SharedPreferences
- **No other services** - Business logic scattered across UI screens

### Backend
- **Firebase Authentication** - Email/password
- **Firestore Collections:** users, projects, bids, chats, notifications
- **Firebase Storage** - Project attachments
- **Encryption** - AES-CBC for chat messages (key derived from chat ID)

### UI/Theme System
- **Material 3** design with gold accent (0xFFE5A824)
- **Dark theme** - Primary background: 0xFF121212, surface: 0xFF1E1E1E
- **Light theme** - Background: 0xFFF7F7FB, surface: white
- **Consistent styling** across cards, buttons, input fields
- **IndexedStack** for bottom nav (all tabs stay in memory)

---

## 4. COMPLEXITY FLAGS & ARCHITECTURAL ISSUES

### Critical Architectural Problems

#### 1. **No Separation of Concerns**
- ❌ All Firestore queries hardcoded in UI screens
- ❌ Business logic mixed with presentation (validation, calculations)
- ❌ No repository/service layer (except minimal NotificationService)
- 📍 **Example:** BidsScreen filters bids directly with `.where()` queries
- **Impact:** Impossible to test, difficult to maintain, no reusability

#### 2. **No Proper Data Models**
- ❌ Only 3 models in entire app (AppUser, AppNotification, hardcoded projects)
- ❌ Projects, Bids, Chat messages exist only in Firestore without Dart representations
- ❌ Type safety issues: heavy use of `data['field'] as Type`
- **Impact:** Runtime safety risks, difficult refactoring

#### 3. **Tight Coupling to Firebase**
- ❌ Direct `FirebaseAuth`, `Firestore`, `FirebaseStorage` calls in UI
- ❌ Timestamp conversions and serialization scattered
- ❌ No abstraction layer for testing
- 📍 **Example:** ChatScreen embeds encryption logic with Firestore queries
- **Impact:** Cannot test without Firebase, cannot mock data

#### 4. **Inconsistent Error Handling**
- ❌ Mix of `ScaffoldMessenger.showSnackBar()`, `Fluttertoast`, and silent failures
- ❌ Network errors sometimes ignored (empty setState)
- ❌ No global error handling
- 📍 **Example:** ProjectsManagementScreen has empty `.onError` handlers
- **Impact:** Users miss critical errors

#### 5. **No Input Validation**
- ❌ Email regex in LoginScreen only
- ❌ Most screens lack/incomplete validation
- 📍 **Example:** PostNewProjectScreen accepts empty budget/timeline
- ❌ No sanitization for Firestore writes
- **Impact:** Corrupted/invalid data in database

#### 6. **Security Concerns**

| Issue | Severity | Details |
|-------|----------|---------|
| Encryption key derivation | 🔴 HIGH | Chat encryption key derived from chatId (SHA256) - deterministic, attacker can pre-compute |
| No rate limiting | 🔴 HIGH | No protection against spam/DoS |
| No permission checks | 🟠 MEDIUM | Firestore rules likely missing; client-side only role checks |
| No data validation | 🟠 MEDIUM | Firestore writes unvalidated |
| Hardcoded role-based UI | 🟡 LOW | Role checks in UI only, not enforced backend |

#### 7. **Firestore Query Issues**
- ⚠️ Compound indexes may be missing
- 📍 **BidsScreen** comment: "might be due to missing compound index for (contractorId, createdAt)"
- ⚠️ No query limit patterns (unbounded collections)
- ⚠️ `.snapshots()` called repeatedly without unsubscribing (memory leak risk)

#### 8. **Code Duplication**
- ❌ Repeated dropdown builders (`_buildDropdown`)
- ❌ Repeated profile stat cards (`_statBox`, `_statColumn`)
- ❌ Similar error handling patterns repeated
- **Impact:** Hard to maintain, bugs replicate

#### 9. **Missing Dependency Injection**
- ❌ Services created inline (`final _themeService = ThemeService()`)
- ❌ No IoC container
- **Impact:** Difficult to test, no singleton management

#### 10. **State Management**
- ❌ Pure `StatefulWidget` setState() calls
- ❌ No centralized state management (no BLoC, Provider, Riverpod)
- ❌ Loading states inconsistent (sometimes `_isSaving`, sometimes ignored)
- **Impact:** Prop drilling, race conditions

---

## 5. UI/UX CONCERNS & USER-FACING ISSUES

### Navigation Problems

#### 🔴 **Hidden/Orphaned Screens**
1. **ProjectsManagementScreen** 
   - Defined but only accessible through missing navigation
   - Not linked from Home or Profile tabs
   - Users cannot access project search/filtering
   - 💡 **Fix:** Add navigation from HomeTab or create Projects tab

2. **PostNewProjectScreen**
   - Completely orphaned - no navigation to it
   - Users cannot post new projects
   - Feature is non-functional
   - 💡 **Fix:** Add FAB or button in HomeTab

3. **TermsPrivacyScreen**
   - Defined but never linked
   - Should be in Settings or Profile
   - Likely required for compliance
   - 💡 **Fix:** Add to SettingsScreen

#### 🟠 **Confusing Navigation Patterns**
- NotificationsScreen accessible from 2 places (Home + Profile)
- No breadcrumb or clear "back" path
- Bids screen nested deep: Profile → Bids → BidDetail → ApprovePayScreen
- ContractorProfileScreen shows but no action buttons to invite/contact
- Some screens use `.pop()` without confirmation (data loss risk)

#### 🟡 **Inconsistent Navigation Entry Points**
- HomeTab has buttons for "First Connection" and "Cost Estimator" working
- But "Post New Project" functionality hidden
- Mixed push/pop patterns without consistent navigation stack management

### Layout & Usability Issues

#### 🔴 **Incomplete Core Features**
1. **Cost Estimator**
   - Simple slider: only area and quality levels
   - No location-specific adjustments despite district data collected
   - ±15% variance disclaimer vague for B2B
   - No ability to save or share estimates

2. **Messaging**
   - Channels hardcoded ("Lotus Tower - Phase 2", "Elite Builders Support")
   - Cannot create new chats
   - No list of active conversations
   - Recipient unclear - just sends between hardcoded IDs

3. **Project Details**
   - No download/view for attachments
   - No attachment preview
   - No project status tracking UI
   - No timeline visual

#### 🟠 **Poor Data Display**
- HomeTab statistics hardcoded (1,200 professionals, 450 projects)
- Never fetched from Firestore
- Users see stale/fake data
- Platform growth metrics not real

#### 🟠 **Bid Management Incomplete**
- Approve & Pay screen has no pricing breakdown
- No invoice/receipt UI
- No payment method selection
- Status updates not reflected real-time

#### 🟡 **Visual Hierarchy Issues**
- Too many tap targets in small areas
- Inconsistent icon usage
- Gold accent (0xFFE5A824) sometimes too bright
- Some text hard to read on dark backgrounds

### Role-Based Access Issues

#### 🟠 **No Role-Based UI Adaptation**
- Same 3 tabs for all roles (Home, Messages, Profile)
- Clients see "Bids Screen" in profile (not relevant to contractors)
- No "My Projects" vs "Available Projects" distinction
- No role-specific features in HomeTab

#### 🟠 **Missing Role Checks**
- OnboardingScreen shows all roles but no explanation of differences
- No role-specific settings
- No workflow guidance based on role

#### Expected Workflows (Not Implemented)
```
CLIENT Workflow:          CONTRACTOR Workflow:    ENGINEER Workflow:
1. Post Project          1. Browse Projects      1. Browse Projects
2. Review Bids      vs   2. Submit Bids      vs  2. Provide Estimates
3. Approve Bid           3. Negotiate            3. Collaborate
4. Pay                   4. Execute Work         4. Review
```
Current UI doesn't guide these distinct flows.

### Connectivity & Loading

#### 🟡 **Loading States Unclear**
- HomeTab: RefreshIndicator present but `onRefresh` does nothing
- BidsScreen: Shimmer loader inconsistent (sometimes missing)
- Some screens show spinner, others show `SizedBox()`
- User doesn't know if data is loading or empty

#### 🟡 **No Offline Support**
- No cache strategy
- No indication when offline
- All screens fail silently without network

### Onboarding Issue

#### 🟡 **Incomplete First-Time Setup**
- Onboarding only collects role, not:
  - Display name (collected later in edit)
  - Expertise/specialization
  - Contact information
  - Verification documents
- Profile feels incomplete after signup

---

## 6. SPECIFIC CODE QUALITY ISSUES

### Hardcoded Values
```dart
// HomeTab - fake statistics
'1,200', '+', 'PROFESSIONALS'
'450', '+', 'ACTIVE PROJECTS'

// CostEstimatorScreen - hardcoded rates
const double _baseRate = 12000; // LKR per sq ft

// ChatScreen - hardcoded channels
'Lotus Tower - Phase 2'
'Elite Builders Support'

// BidsScreen - hardcoded districts
['Colombo', 'Gampaha', 'Kandy', 'Galle']
```
**Impact:** Cannot update without code changes

### Missing Constants File
No constants for:
- Firestore collection names
- Magic numbers (rates, multipliers)
- Status values ('under_review', 'shortlisted', etc.)
- UI dimensions

### Exception Handling Pattern
```dart
catch (e) {
  Fluttertoast.showToast(msg: 'Failed to submit project: $e');
  // Stack trace lost, error details unclear
}
```
**Better:** Proper error categorization and user-friendly messages

### String Interpolation Issues
```dart
'Project: ${widget.projectId}' // Shows raw ID instead of title
Text('Role: ${roleLabel[0].toUpperCase()}${roleLabel.substring(1)}') 
// Better: use extension or utility
```

### Memory Leaks
```dart
// ChatScreen doesn't unsubscribe from Firestore snapshots
StreamBuilder<QuerySnapshot>(
  stream: FirebaseFirestore.instance
      .collection('chats')
      .doc(widget.chatId)
      .collection('messages')
      .snapshots(),
  // If screen is popped, stream still active = leak
)
```

### Resource Management
```dart
// EditProfileScreen creates new controller for each screen push
// If user edits multiple times, many controllers created
```

---

## 7. MISSING FEATURES FOR MVP COMPLETENESS

### Critical Missing
- ❌ User verification/KYC process (mentioned as "verified network" but not implemented)
- ❌ Payment integration (ApprovePayScreen UI only, no real payment)
- ❌ Real bid workflow (no acceptance/rejection states)
- ❌ Project progress tracking
- ❌ Work completion/handoff process
- ❌ Rating/review system (only hardcoded "4.9" for contractors)
- ❌ Dispute resolution

### Important Missing
- ❌ Push notifications (not sent despite notification collection)
- ❌ File picker preview (uploads files but can't view)
- ❌ Project attachment management (add/remove files)
- ❌ Bid negotiation (only one-way invites)
- ❌ Work timeline tracking
- ❌ Budget vs. actual tracking

### Nice-to-Haves
- ❌ Dark mode for messages (chat background still light)
- ❌ Drag-to-refresh on all scrollable screens
- ❌ Pull-to-refresh on messages
- ❌ Search across all projects (only available in management screen)
- ❌ Favorites/wishlist for projects
- ❌ Contractor portfolio/samples

---

## 8. TESTING ANALYSIS

### What Can Be Tested
- Theme switching (TestableThemeService isolatable)
- Notification model serialization
- Cost estimation formula

### What Cannot Be Tested
- ❌ Almost everything due to Firebase coupling
- ❌ UI logic intertwined with business logic
- ❌ No dependency injection
- ❌ No interfaces/abstract classes

---

## 9. PERFORMANCE CONSIDERATIONS

### Potential Issues
1. **IndexedStack in MainTabScaffold** - All 3 tabs kept in memory even when hidden
2. **No pagination** - Projects loaded up to 5 items without limit
3. **Repeated Firestore reads** - No caching strategy
4. **Large file uploads** - No progress indication
5. **Encryption on every message** - AES-CBC for each send/receive

### Optimization Opportunities
- Use `PageView` with lazy loading instead of `IndexedStack`
- Implement pagination for project listings
- Add local caching layer (Hive/Isar)
- Batch Firestore writes in forms
- Lazy-load chat history

---

## 10. SECURITY MATRIX

| Vulnerability | Risk | Mitigation Status |
|---------------|------|-------------------|
| Deterministic encryption (chat key) | HIGH | ❌ Not implemented |
| No Firestore security rules validation | HIGH | ⚠️ Unknown if configured |
| No input sanitization | MEDIUM | ❌ Not implemented |
| No rate limiting | MEDIUM | ❌ Not implemented |
| Client-only permission checks | MEDIUM | ❌ Not enforced server-side |
| No API key rotation | LOW | Likely N/A for mobile |

---

## SUMMARY RECOMMENDATIONS

### 🔴 **Critical (Do First)**
1. Create proper data models for Project, Bid, Chat
2. Extract business logic into repository/service layer
3. Fix orphaned screens (PostNewProject, ProjectsManagement)
4. Fix encryption key derivation (use random generated keys)
5. Add Firestore security rules

### 🟠 **High Priority**
1. Implement real role-based workflows
2. Add state management (Provider/Riverpod)
3. Implement payment integration (Stripe/PayPal)
4. Add comprehensive input validation
5. Implement proper error handling

### 🟡 **Medium Priority**
1. Add pagination to listings
2. Implement caching strategy
3. Add offline support
4. Complete messaging features
5. Fix UI/UX navigation issues

### 🟢 **Low Priority**
1. Extract reusable UI components
2. Add animations
3. Improve dark mode support
4. Add activity logging
5. Performance monitoring

---

## Architecture Improvement Roadmap

```
Current State (Monolithic):
UI → Firestore (direct coupling)

Target State (Scalable):
UI → ViewModels → Services → Repositories → Firebase
     ↓
   Local Cache
```

This would enable:
- ✅ Unit testing (95%+ coverage possible)
- ✅ Easy maintenance and refactoring
- ✅ Multi-backend support
- ✅ Offline-first capabilities
- ✅ Real-time sync management
