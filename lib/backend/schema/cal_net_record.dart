import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalNetRecord extends FirestoreRecord {
  CalNetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cal" field.
  int? _cal;
  int get cal => _cal ?? 0;
  bool hasCal() => _cal != null;

  void _initializeFields() {
    _cal = castToType<int>(snapshotData['cal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calNet');

  static Stream<CalNetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalNetRecord.fromSnapshot(s));

  static Future<CalNetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalNetRecord.fromSnapshot(s));

  static CalNetRecord fromSnapshot(DocumentSnapshot snapshot) => CalNetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalNetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalNetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalNetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalNetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalNetRecordData({
  int? cal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cal': cal,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalNetRecordDocumentEquality implements Equality<CalNetRecord> {
  const CalNetRecordDocumentEquality();

  @override
  bool equals(CalNetRecord? e1, CalNetRecord? e2) {
    return e1?.cal == e2?.cal;
  }

  @override
  int hash(CalNetRecord? e) => const ListEquality().hash([e?.cal]);

  @override
  bool isValidKey(Object? o) => o is CalNetRecord;
}
