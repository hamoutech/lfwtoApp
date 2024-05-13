import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class JourneeRecord extends FirestoreRecord {
  JourneeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "journee" field.
  List<String>? _journee;
  List<String> get journee => _journee ?? const [];
  bool hasJournee() => _journee != null;

  void _initializeFields() {
    _journee = getDataList(snapshotData['journee']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('journee');

  static Stream<JourneeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JourneeRecord.fromSnapshot(s));

  static Future<JourneeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JourneeRecord.fromSnapshot(s));

  static JourneeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JourneeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JourneeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JourneeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JourneeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JourneeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJourneeRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class JourneeRecordDocumentEquality implements Equality<JourneeRecord> {
  const JourneeRecordDocumentEquality();

  @override
  bool equals(JourneeRecord? e1, JourneeRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.journee, e2?.journee);
  }

  @override
  int hash(JourneeRecord? e) => const ListEquality().hash([e?.journee]);

  @override
  bool isValidKey(Object? o) => o is JourneeRecord;
}
