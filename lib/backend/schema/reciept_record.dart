import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecieptRecord extends FirestoreRecord {
  RecieptRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _desc = snapshotData['desc'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('reciept')
          : FirebaseFirestore.instance.collectionGroup('reciept');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('reciept').doc(id);

  static Stream<RecieptRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecieptRecord.fromSnapshot(s));

  static Future<RecieptRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecieptRecord.fromSnapshot(s));

  static RecieptRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecieptRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecieptRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecieptRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecieptRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecieptRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecieptRecordData({
  String? image,
  DateTime? time,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'time': time,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecieptRecordDocumentEquality implements Equality<RecieptRecord> {
  const RecieptRecordDocumentEquality();

  @override
  bool equals(RecieptRecord? e1, RecieptRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.time == e2?.time &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(RecieptRecord? e) =>
      const ListEquality().hash([e?.image, e?.time, e?.desc]);

  @override
  bool isValidKey(Object? o) => o is RecieptRecord;
}
