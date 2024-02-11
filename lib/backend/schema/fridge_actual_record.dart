import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FridgeActualRecord extends FirestoreRecord {
  FridgeActualRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "person" field.
  DocumentReference? _person;
  DocumentReference? get person => _person;
  bool hasPerson() => _person != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "needsProcessing" field.
  bool? _needsProcessing;
  bool get needsProcessing => _needsProcessing ?? false;
  bool hasNeedsProcessing() => _needsProcessing != null;

  void _initializeFields() {
    _person = snapshotData['person'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _desc = snapshotData['desc'] as String?;
    _needsProcessing = snapshotData['needsProcessing'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FridgeActual');

  static Stream<FridgeActualRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FridgeActualRecord.fromSnapshot(s));

  static Future<FridgeActualRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FridgeActualRecord.fromSnapshot(s));

  static FridgeActualRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FridgeActualRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FridgeActualRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FridgeActualRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FridgeActualRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FridgeActualRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFridgeActualRecordData({
  DocumentReference? person,
  String? image,
  DateTime? time,
  String? desc,
  bool? needsProcessing,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'person': person,
      'image': image,
      'time': time,
      'desc': desc,
      'needsProcessing': needsProcessing,
    }.withoutNulls,
  );

  return firestoreData;
}

class FridgeActualRecordDocumentEquality
    implements Equality<FridgeActualRecord> {
  const FridgeActualRecordDocumentEquality();

  @override
  bool equals(FridgeActualRecord? e1, FridgeActualRecord? e2) {
    return e1?.person == e2?.person &&
        e1?.image == e2?.image &&
        e1?.time == e2?.time &&
        e1?.desc == e2?.desc &&
        e1?.needsProcessing == e2?.needsProcessing;
  }

  @override
  int hash(FridgeActualRecord? e) => const ListEquality()
      .hash([e?.person, e?.image, e?.time, e?.desc, e?.needsProcessing]);

  @override
  bool isValidKey(Object? o) => o is FridgeActualRecord;
}
