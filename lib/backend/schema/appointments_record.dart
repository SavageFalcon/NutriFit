import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppointmentsRecord extends FirestoreRecord {
  AppointmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "appointmentName" field.
  String? _appointmentName;
  String get appointmentName => _appointmentName ?? '';
  bool hasAppointmentName() => _appointmentName != null;

  // "appointmentDescription" field.
  String? _appointmentDescription;
  String get appointmentDescription => _appointmentDescription ?? '';
  bool hasAppointmentDescription() => _appointmentDescription != null;

  // "appointmentPerson" field.
  DocumentReference? _appointmentPerson;
  DocumentReference? get appointmentPerson => _appointmentPerson;
  bool hasAppointmentPerson() => _appointmentPerson != null;

  // "appointmentTime" field.
  DateTime? _appointmentTime;
  DateTime? get appointmentTime => _appointmentTime;
  bool hasAppointmentTime() => _appointmentTime != null;

  // "appointmentType" field.
  String? _appointmentType;
  String get appointmentType => _appointmentType ?? '';
  bool hasAppointmentType() => _appointmentType != null;

  // "appointmentEmail" field.
  String? _appointmentEmail;
  String get appointmentEmail => _appointmentEmail ?? '';
  bool hasAppointmentEmail() => _appointmentEmail != null;

  // "mealName" field.
  String? _mealName;
  String get mealName => _mealName ?? '';
  bool hasMealName() => _mealName != null;

  // "calorieCount" field.
  int? _calorieCount;
  int get calorieCount => _calorieCount ?? 0;
  bool hasCalorieCount() => _calorieCount != null;

  // "mealTime" field.
  DateTime? _mealTime;
  DateTime? get mealTime => _mealTime;
  bool hasMealTime() => _mealTime != null;

  // "carbCount" field.
  int? _carbCount;
  int get carbCount => _carbCount ?? 0;
  bool hasCarbCount() => _carbCount != null;

  // "proteinCount" field.
  int? _proteinCount;
  int get proteinCount => _proteinCount ?? 0;
  bool hasProteinCount() => _proteinCount != null;

  // "mealDesc" field.
  String? _mealDesc;
  String get mealDesc => _mealDesc ?? '';
  bool hasMealDesc() => _mealDesc != null;

  // "mealImage" field.
  String? _mealImage;
  String get mealImage => _mealImage ?? '';
  bool hasMealImage() => _mealImage != null;

  // "needsProcessing" field.
  bool? _needsProcessing;
  bool get needsProcessing => _needsProcessing ?? false;
  bool hasNeedsProcessing() => _needsProcessing != null;

  // "recipieList" field.
  String? _recipieList;
  String get recipieList => _recipieList ?? '';
  bool hasRecipieList() => _recipieList != null;

  void _initializeFields() {
    _appointmentName = snapshotData['appointmentName'] as String?;
    _appointmentDescription = snapshotData['appointmentDescription'] as String?;
    _appointmentPerson =
        snapshotData['appointmentPerson'] as DocumentReference?;
    _appointmentTime = snapshotData['appointmentTime'] as DateTime?;
    _appointmentType = snapshotData['appointmentType'] as String?;
    _appointmentEmail = snapshotData['appointmentEmail'] as String?;
    _mealName = snapshotData['mealName'] as String?;
    _calorieCount = castToType<int>(snapshotData['calorieCount']);
    _mealTime = snapshotData['mealTime'] as DateTime?;
    _carbCount = castToType<int>(snapshotData['carbCount']);
    _proteinCount = castToType<int>(snapshotData['proteinCount']);
    _mealDesc = snapshotData['mealDesc'] as String?;
    _mealImage = snapshotData['mealImage'] as String?;
    _needsProcessing = snapshotData['needsProcessing'] as bool?;
    _recipieList = snapshotData['recipieList'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppointmentsRecord.fromSnapshot(s));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppointmentsRecord.fromSnapshot(s));

  static AppointmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppointmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppointmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppointmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppointmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppointmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppointmentsRecordData({
  String? appointmentName,
  String? appointmentDescription,
  DocumentReference? appointmentPerson,
  DateTime? appointmentTime,
  String? appointmentType,
  String? appointmentEmail,
  String? mealName,
  int? calorieCount,
  DateTime? mealTime,
  int? carbCount,
  int? proteinCount,
  String? mealDesc,
  String? mealImage,
  bool? needsProcessing,
  String? recipieList,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appointmentName': appointmentName,
      'appointmentDescription': appointmentDescription,
      'appointmentPerson': appointmentPerson,
      'appointmentTime': appointmentTime,
      'appointmentType': appointmentType,
      'appointmentEmail': appointmentEmail,
      'mealName': mealName,
      'calorieCount': calorieCount,
      'mealTime': mealTime,
      'carbCount': carbCount,
      'proteinCount': proteinCount,
      'mealDesc': mealDesc,
      'mealImage': mealImage,
      'needsProcessing': needsProcessing,
      'recipieList': recipieList,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppointmentsRecordDocumentEquality
    implements Equality<AppointmentsRecord> {
  const AppointmentsRecordDocumentEquality();

  @override
  bool equals(AppointmentsRecord? e1, AppointmentsRecord? e2) {
    return e1?.appointmentName == e2?.appointmentName &&
        e1?.appointmentDescription == e2?.appointmentDescription &&
        e1?.appointmentPerson == e2?.appointmentPerson &&
        e1?.appointmentTime == e2?.appointmentTime &&
        e1?.appointmentType == e2?.appointmentType &&
        e1?.appointmentEmail == e2?.appointmentEmail &&
        e1?.mealName == e2?.mealName &&
        e1?.calorieCount == e2?.calorieCount &&
        e1?.mealTime == e2?.mealTime &&
        e1?.carbCount == e2?.carbCount &&
        e1?.proteinCount == e2?.proteinCount &&
        e1?.mealDesc == e2?.mealDesc &&
        e1?.mealImage == e2?.mealImage &&
        e1?.needsProcessing == e2?.needsProcessing &&
        e1?.recipieList == e2?.recipieList;
  }

  @override
  int hash(AppointmentsRecord? e) => const ListEquality().hash([
        e?.appointmentName,
        e?.appointmentDescription,
        e?.appointmentPerson,
        e?.appointmentTime,
        e?.appointmentType,
        e?.appointmentEmail,
        e?.mealName,
        e?.calorieCount,
        e?.mealTime,
        e?.carbCount,
        e?.proteinCount,
        e?.mealDesc,
        e?.mealImage,
        e?.needsProcessing,
        e?.recipieList
      ]);

  @override
  bool isValidKey(Object? o) => o is AppointmentsRecord;
}
