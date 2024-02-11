import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecieptActualRecord extends FirestoreRecord {
  RecieptActualRecord._(
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

  void _initializeFields() {
    _person = snapshotData['person'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _desc = snapshotData['desc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RecieptActual');

  static Stream<RecieptActualRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecieptActualRecord.fromSnapshot(s));

  static Future<RecieptActualRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecieptActualRecord.fromSnapshot(s));

  static RecieptActualRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecieptActualRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecieptActualRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecieptActualRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecieptActualRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecieptActualRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecieptActualRecordData({
  DocumentReference? person,
  String? image,
  DateTime? time,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'person': person,
      'image': image,
      'time': time,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecieptActualRecordDocumentEquality
    implements Equality<RecieptActualRecord> {
  const RecieptActualRecordDocumentEquality();

  @override
  bool equals(RecieptActualRecord? e1, RecieptActualRecord? e2) {
    return e1?.person == e2?.person &&
        e1?.image == e2?.image &&
        e1?.time == e2?.time &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(RecieptActualRecord? e) =>
      const ListEquality().hash([e?.person, e?.image, e?.time, e?.desc]);

  @override
  bool isValidKey(Object? o) => o is RecieptActualRecord;
}
