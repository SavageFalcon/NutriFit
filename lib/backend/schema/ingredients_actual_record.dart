import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngredientsActualRecord extends FirestoreRecord {
  IngredientsActualRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "person" field.
  DocumentReference? _person;
  DocumentReference? get person => _person;
  bool hasPerson() => _person != null;

  // "ingredient" field.
  String? _ingredient;
  String get ingredient => _ingredient ?? '';
  bool hasIngredient() => _ingredient != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "needsProcessing" field.
  bool? _needsProcessing;
  bool get needsProcessing => _needsProcessing ?? false;
  bool hasNeedsProcessing() => _needsProcessing != null;

  void _initializeFields() {
    _person = snapshotData['person'] as DocumentReference?;
    _ingredient = snapshotData['ingredient'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _needsProcessing = snapshotData['needsProcessing'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('IngredientsActual');

  static Stream<IngredientsActualRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngredientsActualRecord.fromSnapshot(s));

  static Future<IngredientsActualRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IngredientsActualRecord.fromSnapshot(s));

  static IngredientsActualRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngredientsActualRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngredientsActualRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngredientsActualRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngredientsActualRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngredientsActualRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngredientsActualRecordData({
  DocumentReference? person,
  String? ingredient,
  DateTime? time,
  bool? needsProcessing,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'person': person,
      'ingredient': ingredient,
      'time': time,
      'needsProcessing': needsProcessing,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngredientsActualRecordDocumentEquality
    implements Equality<IngredientsActualRecord> {
  const IngredientsActualRecordDocumentEquality();

  @override
  bool equals(IngredientsActualRecord? e1, IngredientsActualRecord? e2) {
    return e1?.person == e2?.person &&
        e1?.ingredient == e2?.ingredient &&
        e1?.time == e2?.time &&
        e1?.needsProcessing == e2?.needsProcessing;
  }

  @override
  int hash(IngredientsActualRecord? e) => const ListEquality()
      .hash([e?.person, e?.ingredient, e?.time, e?.needsProcessing]);

  @override
  bool isValidKey(Object? o) => o is IngredientsActualRecord;
}
