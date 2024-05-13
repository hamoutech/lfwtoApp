import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PvDisciplineRecord extends FirestoreRecord {
  PvDisciplineRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "pdfUrl" field.
  String? _pdfUrl;
  String get pdfUrl => _pdfUrl ?? '';
  bool hasPdfUrl() => _pdfUrl != null;

  void _initializeFields() {
    _numero = snapshotData['numero'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _pdfUrl = snapshotData['pdfUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pvDiscipline');

  static Stream<PvDisciplineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PvDisciplineRecord.fromSnapshot(s));

  static Future<PvDisciplineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PvDisciplineRecord.fromSnapshot(s));

  static PvDisciplineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PvDisciplineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PvDisciplineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PvDisciplineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PvDisciplineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PvDisciplineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPvDisciplineRecordData({
  String? numero,
  DateTime? createdDate,
  String? pdfUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'numero': numero,
      'createdDate': createdDate,
      'pdfUrl': pdfUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class PvDisciplineRecordDocumentEquality
    implements Equality<PvDisciplineRecord> {
  const PvDisciplineRecordDocumentEquality();

  @override
  bool equals(PvDisciplineRecord? e1, PvDisciplineRecord? e2) {
    return e1?.numero == e2?.numero &&
        e1?.createdDate == e2?.createdDate &&
        e1?.pdfUrl == e2?.pdfUrl;
  }

  @override
  int hash(PvDisciplineRecord? e) =>
      const ListEquality().hash([e?.numero, e?.createdDate, e?.pdfUrl]);

  @override
  bool isValidKey(Object? o) => o is PvDisciplineRecord;
}
