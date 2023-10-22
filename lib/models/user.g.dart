// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserDataCollectionReference
    implements
        UserDataQuery,
        FirestoreCollectionReference<UserData, UserDataQuerySnapshot> {
  factory UserDataCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserDataCollectionReference;

  static UserData fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return UserData.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    UserData value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<UserData> get reference;

  @override
  UserDataDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserDataDocumentReference> add(UserData value);
}

class _$UserDataCollectionReference extends _$UserDataQuery
    implements UserDataCollectionReference {
  factory _$UserDataCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserDataCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UserDataCollectionReference.fromFirestore,
            toFirestore: UserDataCollectionReference.toFirestore,
          ),
    );
  }

  _$UserDataCollectionReference._(
    CollectionReference<UserData> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<UserData> get reference =>
      super.reference as CollectionReference<UserData>;

  @override
  UserDataDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserDataDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserDataDocumentReference> add(UserData value) {
    return reference.add(value).then((ref) => UserDataDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserDataCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserDataDocumentReference
    extends FirestoreDocumentReference<UserData, UserDataDocumentSnapshot> {
  factory UserDataDocumentReference(DocumentReference<UserData> reference) =
      _$UserDataDocumentReference;

  DocumentReference<UserData> get reference;

  /// A reference to the [UserDataCollectionReference] containing this document.
  UserDataCollectionReference get parent {
    return _$UserDataCollectionReference(reference.firestore);
  }

  @override
  Stream<UserDataDocumentSnapshot> snapshots();

  @override
  Future<UserDataDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String uid,
    FieldValue uidFieldValue,
    String email,
    FieldValue emailFieldValue,
    String name,
    FieldValue nameFieldValue,
    DateTime birthday,
    FieldValue birthdayFieldValue,
    String phone,
    FieldValue phoneFieldValue,
    String image,
    FieldValue imageFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String uid,
    FieldValue uidFieldValue,
    String email,
    FieldValue emailFieldValue,
    String name,
    FieldValue nameFieldValue,
    DateTime birthday,
    FieldValue birthdayFieldValue,
    String phone,
    FieldValue phoneFieldValue,
    String image,
    FieldValue imageFieldValue,
  });
}

class _$UserDataDocumentReference
    extends FirestoreDocumentReference<UserData, UserDataDocumentSnapshot>
    implements UserDataDocumentReference {
  _$UserDataDocumentReference(this.reference);

  @override
  final DocumentReference<UserData> reference;

  /// A reference to the [UserDataCollectionReference] containing this document.
  UserDataCollectionReference get parent {
    return _$UserDataCollectionReference(reference.firestore);
  }

  @override
  Stream<UserDataDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserDataDocumentSnapshot._);
  }

  @override
  Future<UserDataDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserDataDocumentSnapshot._);
  }

  @override
  Future<UserDataDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserDataDocumentSnapshot._);
  }

  Future<void> update({
    Object? uid = _sentinel,
    FieldValue? uidFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? birthday = _sentinel,
    FieldValue? birthdayFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
    Object? image = _sentinel,
    FieldValue? imageFieldValue,
  }) async {
    assert(
      uid == _sentinel || uidFieldValue == null,
      "Cannot specify both uid and uidFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      birthday == _sentinel || birthdayFieldValue == null,
      "Cannot specify both birthday and birthdayFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    assert(
      image == _sentinel || imageFieldValue == null,
      "Cannot specify both image and imageFieldValue",
    );
    final json = {
      if (uid != _sentinel)
        _$UserDataFieldMap['uid']!: _$UserDataPerFieldToJson.uid(uid as String),
      if (uidFieldValue != null) _$UserDataFieldMap['uid']!: uidFieldValue,
      if (email != _sentinel)
        _$UserDataFieldMap['email']!:
            _$UserDataPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$UserDataFieldMap['email']!: emailFieldValue,
      if (name != _sentinel)
        _$UserDataFieldMap['name']!:
            _$UserDataPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserDataFieldMap['name']!: nameFieldValue,
      if (birthday != _sentinel)
        _$UserDataFieldMap['birthday']!:
            _$UserDataPerFieldToJson.birthday(birthday as DateTime),
      if (birthdayFieldValue != null)
        _$UserDataFieldMap['birthday']!: birthdayFieldValue,
      if (phone != _sentinel)
        _$UserDataFieldMap['phone']!:
            _$UserDataPerFieldToJson.phone(phone as String),
      if (phoneFieldValue != null)
        _$UserDataFieldMap['phone']!: phoneFieldValue,
      if (image != _sentinel)
        _$UserDataFieldMap['image']!:
            _$UserDataPerFieldToJson.image(image as String),
      if (imageFieldValue != null)
        _$UserDataFieldMap['image']!: imageFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? uid = _sentinel,
    FieldValue? uidFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? birthday = _sentinel,
    FieldValue? birthdayFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
    Object? image = _sentinel,
    FieldValue? imageFieldValue,
  }) {
    assert(
      uid == _sentinel || uidFieldValue == null,
      "Cannot specify both uid and uidFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      birthday == _sentinel || birthdayFieldValue == null,
      "Cannot specify both birthday and birthdayFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    assert(
      image == _sentinel || imageFieldValue == null,
      "Cannot specify both image and imageFieldValue",
    );
    final json = {
      if (uid != _sentinel)
        _$UserDataFieldMap['uid']!: _$UserDataPerFieldToJson.uid(uid as String),
      if (uidFieldValue != null) _$UserDataFieldMap['uid']!: uidFieldValue,
      if (email != _sentinel)
        _$UserDataFieldMap['email']!:
            _$UserDataPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$UserDataFieldMap['email']!: emailFieldValue,
      if (name != _sentinel)
        _$UserDataFieldMap['name']!:
            _$UserDataPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserDataFieldMap['name']!: nameFieldValue,
      if (birthday != _sentinel)
        _$UserDataFieldMap['birthday']!:
            _$UserDataPerFieldToJson.birthday(birthday as DateTime),
      if (birthdayFieldValue != null)
        _$UserDataFieldMap['birthday']!: birthdayFieldValue,
      if (phone != _sentinel)
        _$UserDataFieldMap['phone']!:
            _$UserDataPerFieldToJson.phone(phone as String),
      if (phoneFieldValue != null)
        _$UserDataFieldMap['phone']!: phoneFieldValue,
      if (image != _sentinel)
        _$UserDataFieldMap['image']!:
            _$UserDataPerFieldToJson.image(image as String),
      if (imageFieldValue != null)
        _$UserDataFieldMap['image']!: imageFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDataDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserDataQuery
    implements QueryReference<UserData, UserDataQuerySnapshot> {
  @override
  UserDataQuery limit(int limit);

  @override
  UserDataQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UserDataQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UserDataQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserDataQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  UserDataQuery whereUid({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  UserDataQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  UserDataQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  UserDataQuery whereBirthday({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });
  UserDataQuery wherePhone({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  UserDataQuery whereImage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  UserDataQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  });

  UserDataQuery orderByUid({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  });

  UserDataQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  });

  UserDataQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  });

  UserDataQuery orderByBirthday({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  });

  UserDataQuery orderByPhone({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  });

  UserDataQuery orderByImage({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  });
}

class _$UserDataQuery extends QueryReference<UserData, UserDataQuerySnapshot>
    implements UserDataQuery {
  _$UserDataQuery(
    this._collection, {
    required Query<UserData> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserDataQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserDataQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserDataQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserDataQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserDataQuery limit(int limit) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserDataQuery limitToLast(int limit) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserDataQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery whereUid({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserDataFieldMap['uid']!,
        isEqualTo:
            isEqualTo != null ? _$UserDataPerFieldToJson.uid(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$UserDataPerFieldToJson.uid(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$UserDataPerFieldToJson.uid(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.uid(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserDataPerFieldToJson.uid(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.uid(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserDataPerFieldToJson.uid(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserDataPerFieldToJson.uid(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserDataFieldMap['email']!,
        isEqualTo: isEqualTo != null
            ? _$UserDataPerFieldToJson.email(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$UserDataPerFieldToJson.email(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$UserDataPerFieldToJson.email(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.email(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserDataPerFieldToJson.email(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.email(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserDataPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserDataPerFieldToJson.email(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserDataFieldMap['name']!,
        isEqualTo:
            isEqualTo != null ? _$UserDataPerFieldToJson.name(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$UserDataPerFieldToJson.name(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$UserDataPerFieldToJson.name(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.name(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserDataPerFieldToJson.name(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.name(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserDataPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserDataPerFieldToJson.name(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery whereBirthday({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserDataFieldMap['birthday']!,
        isEqualTo: isEqualTo != null
            ? _$UserDataPerFieldToJson.birthday(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$UserDataPerFieldToJson.birthday(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$UserDataPerFieldToJson.birthday(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.birthday(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserDataPerFieldToJson.birthday(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.birthday(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserDataPerFieldToJson.birthday(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserDataPerFieldToJson.birthday(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery wherePhone({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserDataFieldMap['phone']!,
        isEqualTo: isEqualTo != null
            ? _$UserDataPerFieldToJson.phone(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$UserDataPerFieldToJson.phone(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$UserDataPerFieldToJson.phone(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.phone(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserDataPerFieldToJson.phone(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.phone(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserDataPerFieldToJson.phone(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserDataPerFieldToJson.phone(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery whereImage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserDataFieldMap['image']!,
        isEqualTo: isEqualTo != null
            ? _$UserDataPerFieldToJson.image(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$UserDataPerFieldToJson.image(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$UserDataPerFieldToJson.image(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.image(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserDataPerFieldToJson.image(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserDataPerFieldToJson.image(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserDataPerFieldToJson.image(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserDataPerFieldToJson.image(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserDataQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserDataQuery orderByUid({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserDataFieldMap['uid']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserDataQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserDataFieldMap['email']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserDataQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserDataFieldMap['name']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserDataQuery orderByBirthday({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserDataFieldMap['birthday']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserDataQuery orderByPhone({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserDataFieldMap['phone']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserDataQuery orderByImage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDataDocumentSnapshot? startAtDocument,
    UserDataDocumentSnapshot? endAtDocument,
    UserDataDocumentSnapshot? endBeforeDocument,
    UserDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserDataFieldMap['image']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserDataQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserDataDocumentSnapshot extends FirestoreDocumentSnapshot<UserData> {
  UserDataDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserData> snapshot;

  @override
  UserDataDocumentReference get reference {
    return UserDataDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final UserData? data;
}

class UserDataQuerySnapshot
    extends FirestoreQuerySnapshot<UserData, UserDataQueryDocumentSnapshot> {
  UserDataQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserDataQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserData> snapshot,
  ) {
    final docs = snapshot.docs.map(UserDataQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserDataDocumentSnapshot._,
      );
    }).toList();

    return UserDataQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserDataDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserDataDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserDataDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserData> snapshot;

  @override
  final List<UserDataQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserDataDocumentSnapshot>> docChanges;
}

class UserDataQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserData>
    implements UserDataDocumentSnapshot {
  UserDataQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserData> snapshot;

  @override
  final UserData data;

  @override
  UserDataDocumentReference get reference {
    return UserDataDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      json['uid'] as String,
      json['email'] as String,
      json['name'] as String,
      const FirestoreDateTimeConverter()
          .fromJson(json['birthday'] as Timestamp),
      json['phone'] as String,
      json['image'] as String,
    );

const _$UserDataFieldMap = <String, String>{
  'email': 'email',
  'name': 'name',
  'birthday': 'birthday',
  'phone': 'phone',
  'image': 'image',
  'uid': 'uid',
};

// ignore: unused_element
abstract class _$UserDataPerFieldToJson {
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? birthday(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? phone(String instance) => instance;
  // ignore: unused_element
  static Object? image(String instance) => instance;
  // ignore: unused_element
  static Object? uid(String instance) => instance;
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'birthday': const FirestoreDateTimeConverter().toJson(instance.birthday),
      'phone': instance.phone,
      'image': instance.image,
      'uid': instance.uid,
    };
