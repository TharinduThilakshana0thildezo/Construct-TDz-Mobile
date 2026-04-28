import 'package:cloud_firestore/cloud_firestore.dart';
import '../utils/exceptions.dart';
import '../utils/logger.dart';

/// Generic repository base class for Firestore operations
abstract class FirestoreRepository<T> {
  String get collectionPath;

  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  /// Convert Firestore document to entity
  T fromMap(Map<String, dynamic> map);

  /// Convert entity to Firestore document
  Map<String, dynamic> toMap(T entity);

  /// Create a new document
  Future<T> create(T entity, {String? docId}) async {
    try {
      final map = toMap(entity);
      if (docId != null) {
        await firestore.collection(collectionPath).doc(docId).set(map);
      } else {
        await firestore.collection(collectionPath).add(map);
      }
      appLogger.info('Created document in $collectionPath');
      return entity;
    } catch (e) {
      appLogger.error('Error creating document', e);
      throw AppFirebaseException(
        message: 'Failed to create document',
        originalException: e,
      );
    }
  }

  /// Read a document by ID
  Future<T?> read(String docId) async {
    try {
      final doc = await firestore.collection(collectionPath).doc(docId).get();

      if (!doc.exists) return null;
      return fromMap(doc.data()!);
    } catch (e) {
      appLogger.error('Error reading document', e);
      throw AppFirebaseException(
        message: 'Failed to read document',
        originalException: e,
      );
    }
  }

  /// Read all documents
  Future<List<T>> readAll() async {
    try {
      final snapshot = await firestore.collection(collectionPath).get();

      return snapshot.docs.map((doc) => fromMap(doc.data())).toList();
    } catch (e) {
      appLogger.error('Error reading all documents', e);
      throw AppFirebaseException(
        message: 'Failed to read documents',
        originalException: e,
      );
    }
  }

  /// Update a document
  Future<void> update(String docId, Map<String, dynamic> updates) async {
    try {
      await firestore.collection(collectionPath).doc(docId).update(updates);
      appLogger.info('Updated document in $collectionPath: $docId');
    } catch (e) {
      appLogger.error('Error updating document', e);
      throw AppFirebaseException(
        message: 'Failed to update document',
        originalException: e,
      );
    }
  }

  /// Delete a document
  Future<void> delete(String docId) async {
    try {
      await firestore.collection(collectionPath).doc(docId).delete();
      appLogger.info('Deleted document from $collectionPath: $docId');
    } catch (e) {
      appLogger.error('Error deleting document', e);
      throw AppFirebaseException(
        message: 'Failed to delete document',
        originalException: e,
      );
    }
  }

  /// Query documents
  Future<List<T>> query({
    String? field,
    dynamic isEqualTo,
    dynamic isGreaterThan,
    dynamic isLessThan,
    List<dynamic>? whereIn,
    int? limit,
    String? orderBy,
    bool descending = false,
  }) async {
    try {
      Query<Map<String, dynamic>> query = firestore.collection(collectionPath);

      if (field != null && isEqualTo != null) {
        query = query.where(field, isEqualTo: isEqualTo);
      }
      if (field != null && isGreaterThan != null) {
        query = query.where(field, isGreaterThan: isGreaterThan);
      }
      if (field != null && isLessThan != null) {
        query = query.where(field, isLessThan: isLessThan);
      }
      if (field != null && whereIn != null) {
        query = query.where(field, whereIn: whereIn);
      }
      if (orderBy != null) {
        query = query.orderBy(orderBy, descending: descending);
      }
      if (limit != null) {
        query = query.limit(limit);
      }

      final snapshot = await query.get();
      return snapshot.docs.map((doc) => fromMap(doc.data())).toList();
    } catch (e) {
      appLogger.error('Error querying documents', e);
      throw AppFirebaseException(
        message: 'Failed to query documents',
        originalException: e,
      );
    }
  }

  /// Stream documents
  Stream<List<T>> streamAll() => firestore
      .collection(collectionPath)
      .snapshots()
      .map(
        (snapshot) => snapshot.docs.map((doc) => fromMap(doc.data())).toList(),
      )
      .handleError((e) {
        appLogger.error('Error streaming documents', e);
      });

  /// Stream query results
  Stream<List<T>> streamQuery({
    String? field,
    dynamic isEqualTo,
    String? orderBy,
    bool descending = false,
    int? limit,
  }) {
    Query<Map<String, dynamic>> query = firestore.collection(collectionPath);

    if (field != null && isEqualTo != null) {
      query = query.where(field, isEqualTo: isEqualTo);
    }
    if (orderBy != null) {
      query = query.orderBy(orderBy, descending: descending);
    }
    if (limit != null) {
      query = query.limit(limit);
    }

    return query.snapshots().map(
      (snapshot) => snapshot.docs.map((doc) => fromMap(doc.data())).toList(),
    );
  }

  /// Batch write operations
  Future<void> batch(
    List<Map<String, dynamic>> creates,
    List<String> deletes,
    List<Map<String, dynamic>> updates,
  ) async {
    try {
      final batch = firestore.batch();

      for (final create in creates) {
        batch.set(firestore.collection(collectionPath).doc(), create);
      }

      for (final docId in deletes) {
        batch.delete(firestore.collection(collectionPath).doc(docId));
      }

      for (final update in updates) {
        final docId = update.remove('_id');
        batch.update(firestore.collection(collectionPath).doc(docId), update);
      }

      await batch.commit();
      appLogger.info('Batch operation completed for $collectionPath');
    } catch (e) {
      appLogger.error('Error in batch operation', e);
      throw AppFirebaseException(
        message: 'Failed to execute batch operation',
        originalException: e,
      );
    }
  }
}
