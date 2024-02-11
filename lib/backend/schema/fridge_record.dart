import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FridgeRecord extends FirestoreRecord {
  FridgeRecord._(
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
          ? parent.collection('fridge')
          : FirebaseFirestore.instance.collectionGroup('fridge');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('fridge').doc(id);

  static Stream<FridgeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FridgeRecord.fromSnapshot(s));

  static Future<FridgeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FridgeRecord.fromSnapshot(s));

  static FridgeRecord fromSnapshot(DocumentSnapshot snapshot) => FridgeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FridgeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FridgeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FridgeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FridgeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFridgeRecordData({
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

class FridgeRecordDocumentEquality implements Equality<FridgeRecord> {
  const FridgeRecordDocumentEquality();

  @override
  bool equals(FridgeRecord? e1, FridgeRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.time == e2?.time &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(FridgeRecord? e) =>
      const ListEquality().hash([e?.image, e?.time, e?.desc]);

  @override
  bool isValidKey(Object? o) => o is FridgeRecord;
}
