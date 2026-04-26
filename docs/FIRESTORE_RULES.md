# ConstructionLK - Firestore Security Rules Configuration

## Overview
This document outlines the complete Firestore security rules for the ConstructionLK application.
These rules ensure data is properly protected while allowing authorized users to perform necessary operations.

## Implementation

Add these rules to Firebase Console > Firestore Database > Rules:

```javascript
rules_version = '2';

service cloud.firestore {
  match /databases/{database}/documents {
    
    // ==================== USER RULES ====================
    // Users can only read/write their own data
    match /users/{userId} {
      allow read: if request.auth.uid == userId || isAdmin();
      allow write: if request.auth.uid == userId;
      allow delete: if request.auth.uid == userId || isAdmin();
      
      // Nested subcollections for user data
      match /notifications/{notificationId} {
        allow read, write: if request.auth.uid == userId;
      }
      
      match /saved_projects/{projectId} {
        allow read, write: if request.auth.uid == userId;
      }
    }
    
    // ==================== PROJECT RULES ====================
    match /projects/{projectId} {
      // All authenticated users can read public projects
      allow read: if request.auth != null;
      
      // Only clients can create projects
      allow create: if request.auth != null && 
                       request.resource.data.clientId == request.auth.uid &&
                       validateProjectCreate();
      
      // Only project owner can update/delete
      allow update, delete: if request.auth.uid == resource.data.clientId &&
                              validateProjectUpdate();
      
      // Nested subcollections
      match /activities/{activity} {
        allow read: if request.auth != null;
        allow create: if request.auth != null;
      }
      
      match /milestones/{milestone} {
        allow read: if request.auth != null;
        allow write: if request.auth.uid == get(/databases/$(database)/documents/projects/$(projectId)).data.clientId;
      }
    }
    
    // ==================== BID RULES ====================
    match /bids/{bidId} {
      // Project client can read all bids for their project
      allow read: if request.auth != null && 
                     (request.auth.uid == resource.data.contractorId ||
                      isProjectClient(resource.data.projectId));
      
      // Only contractors can create bids
      allow create: if request.auth != null &&
                       request.auth.uid == request.resource.data.contractorId &&
                       validateBidCreate();
      
      // Contractor can update their own bid before acceptance
      allow update: if request.auth.uid == resource.data.contractorId &&
                       resource.data.status in ['submitted', 'underReview'] &&
                       validateBidUpdate();
      
      // Project client can accept/reject bids
      allow update: if isProjectClient(resource.data.projectId) &&
                       request.resource.data.status in ['accepted', 'rejected'];
      
      allow delete: if request.auth.uid == resource.data.contractorId ||
                       isProjectClient(resource.data.projectId);
    }
    
    // ==================== PAYMENT RULES ====================
    match /payments/{paymentId} {
      // Users can read payments they're involved in
      allow read: if request.auth.uid == resource.data.payerId ||
                     request.auth.uid == resource.data.payeeId ||
                     isAdmin();
      
      // Only system/backend can create payments via Cloud Functions
      allow create: if false; // Payments created by backend only
      
      // Only backend can update payment status
      allow update: if false;
      
      allow delete: if isAdmin();
    }
    
    // ==================== REVIEW RULES ====================
    match /reviews/{reviewId} {
      // All authenticated users can read reviews
      allow read: if request.auth != null;
      
      // Only reviewers can create reviews
      allow create: if request.auth != null &&
                       request.auth.uid == request.resource.data.reviewerId &&
                       validateReviewCreate();
      
      // Only reviewer can update their review
      allow update: if request.auth.uid == resource.data.reviewerId &&
                       validateReviewUpdate();
      
      // Reviewer or project client can delete
      allow delete: if request.auth.uid == resource.data.reviewerId ||
                       isAdmin();
    }
    
    // ==================== RATING STATS (CACHED) ====================
    match /rating_stats/{userId} {
      allow read: if request.auth != null;
      allow write: if isAdmin() || request.auth.uid == userId;
    }
    
    // ==================== CHAT RULES ====================
    match /chats/{chatId} {
      // Participants can read their chats
      allow read: if request.auth.uid in resource.data.participants;
      
      // Allow creating chat groups
      allow create: if request.auth != null;
      
      // Participants can update chat (e.g., mute, archive)
      allow update: if request.auth.uid in resource.data.participants;
      
      // Nested messages
      match /messages/{messageId} {
        allow read: if request.auth.uid in get(/databases/$(database)/documents/chats/$(chatId)).data.participants;
        
        allow create: if request.auth != null &&
                        request.auth.uid == request.resource.data.senderId &&
                        request.auth.uid in get(/databases/$(database)/documents/chats/$(chatId)).data.participants &&
                        validateMessage();
        
        allow delete: if request.auth.uid == resource.data.senderId;
      }
    }
    
    // ==================== DOCUMENTS RULES ====================
    match /project_documents/{documentId} {
      allow read: if request.auth != null &&
                     isBidParticipant(resource.data.projectId);
      
      allow create: if request.auth != null &&
                       isProjectParticipant(resource.data.projectId) &&
                       validateDocument();
      
      allow update: if isProjectParticipant(resource.data.projectId);
      
      allow delete: if request.auth.uid == resource.data.uploadedBy ||
                       isProjectClient(resource.data.projectId);
    }
    
    // ==================== SUBSCRIPTIONS RULES ====================
    match /subscriptions/{subscriptionId} {
      allow read: if request.auth.uid == resource.data.userId || isAdmin();
      allow write: if isAdmin(); // Only backend manages subscriptions
    }
    
    // ==================== HELPER FUNCTIONS ====================
    function isAdmin() {
      return exists(/databases/$(database)/documents/admins/$(request.auth.uid));
    }
    
    function isProjectClient(projectId) {
      let projectDoc = get(/databases/$(database)/documents/projects/$(projectId));
      return request.auth.uid == projectDoc.data.clientId;
    }
    
    function isProjectParticipant(projectId) {
      let projectDoc = get(/databases/$(database)/documents/projects/$(projectId));
      return request.auth.uid == projectDoc.data.clientId ||
             exists(/databases/$(database)/documents/projects/$(projectId)/awarded_contractors/$(request.auth.uid));
    }
    
    function isBidParticipant(projectId) {
      let project = get(/databases/$(database)/documents/projects/$(projectId));
      return request.auth.uid == project.data.clientId ||
             exists(/databases/$(database)/documents/bids/$(requestField('bidId'))) &&
             get(/databases/$(database)/documents/bids/$(requestField('bidId'))).data.contractorId == request.auth.uid;
    }
    
    // ==================== VALIDATION FUNCTIONS ====================
    function validateProjectCreate() {
      let data = request.resource.data;
      return data.keys().hasAll(['clientId', 'title', 'description', 'district', 'budgetLkr', 'timelineMonths']) &&
             data.title.size() >= 10 &&
             data.title.size() <= 200 &&
             data.budgetLkr >= 50000 &&
             data.budgetLkr <= 100000000 &&
             data.timelineMonths >= 1 &&
             data.timelineMonths <= 60;
    }
    
    function validateProjectUpdate() {
      let data = request.resource.data;
      let prev = resource.data;
      // Only allow certain fields to be updated
      return !data.diff(prev).addedKeys().hasAny(['clientId', 'createdAt', 'projectId']);
    }
    
    function validateBidCreate() {
      let data = request.resource.data;
      let project = get(/databases/$(database)/documents/projects/$(data.projectId));
      
      return data.keys().hasAll(['projectId', 'contractorId', 'amountLkr', 'timelineMonths', 'description']) &&
             data.contractorId == request.auth.uid &&
             data.amountLkr >= project.data.budgetLkr * 0.5 &&
             data.amountLkr <= project.data.budgetLkr * 2.0 &&
             data.description.size() >= 20 &&
             data.description.size() <= 2000;
    }
    
    function validateBidUpdate() {
      let data = request.resource.data;
      let prev = resource.data;
      return !data.diff(prev).addedKeys().hasAny(['contractorId', 'projectId', 'submittedAt']);
    }
    
    function validateReviewCreate() {
      let data = request.resource.data;
      return data.keys().hasAll(['revieweId', 'reviewerId', 'projectId', 'qualityRating', 'narrative']) &&
             data.qualityRating >= 1 && data.qualityRating <= 5 &&
             data.narrative.size() >= 20 && data.narrative.size() <= 2000;
    }
    
    function validateReviewUpdate() {
      let data = request.resource.data;
      let prev = resource.data;
      return !data.diff(prev).addedKeys().hasAny(['revieweId', 'reviewerId', 'projectId', 'createdAt']);
    }
    
    function validateMessage() {
      let data = request.resource.data;
      return data.keys().hasAll(['senderId', 'message', 'chatId']) &&
             data.message.size() >= 1 && data.message.size() <= 5000;
    }
    
    function validateDocument() {
      let data = request.resource.data;
      return data.keys().hasAll(['projectId', 'name', 'type', 'storageUrl']) &&
             data.name.size() >= 1 && data.name.size() <= 255;
    }
  }
}
```

## Creating Firestore Indexes

The following indexes need to be created manually or will be auto-generated when queries are run:

### Projects Collection
```
- Collection: projects
  Fields: clientId (Asc), createdAt (Desc)
- Collection: projects
  Fields: status (Asc), district (Asc), createdAt (Desc)
- Collection: projects
  Fields: skillsRequired (Array), status (Asc), createdAt (Desc)
```

### Bids Collection
```
- Collection: bids
  Fields: projectId (Asc), submittedAt (Desc)
- Collection: bids
  Fields: contractorId (Asc), createdAt (Desc)
- Collection: bids
  Fields: projectId (Asc), status (Asc), submittedAt (Desc)
```

### Reviews Collection
```
- Collection: reviews
  Fields: revieweId (Asc), createdAt (Desc)
- Collection: reviews
  Fields: projectId (Asc), createdAt (Desc)
```

## Testing Security Rules

Use Firebase Emulator Suite to test rules locally:

```bash
# Start emulator
firebase emulators:start

# Run tests
firebase emulators:exec 'npm test'
```

## Maintenance & Updates

- Review security rules quarterly
- Monitor Firestore audit logs
- Update rules when adding new features
- Test with Firebase CLI before deployment
- Document any exceptions to standard rules

## Support

For questions about Firestore security, see:
- [Firebase Firestore Security Rules Documentation](https://firebase.google.com/docs/firestore/security/start)
- ConstructionLK Team: security@constructionlk.com
