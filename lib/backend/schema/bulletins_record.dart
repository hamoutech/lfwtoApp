import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BulletinsRecord extends FirestoreRecord {
  BulletinsRecord._(
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
      FirebaseFirestore.instance.collection('bulletins');

  static Stream<BulletinsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BulletinsRecord.fromSnapshot(s));

  static Future<BulletinsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BulletinsRecord.fromSnapshot(s));

  static BulletinsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BulletinsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BulletinsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BulletinsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BulletinsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BulletinsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBulletinsRecordData({
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

class BulletinsRecordDocumentEquality implements Equality<BulletinsRecord> {
  const BulletinsRecordDocumentEquality();

  @override
  bool equals(BulletinsRecord? e1, BulletinsRecord? e2) {
    return e1?.numero == e2?.numero &&
        e1?.createdDate == e2?.createdDate &&
        e1?.pdfUrl == e2?.pdfUrl;
  }

  @override
  int hash(BulletinsRecord? e) =>
      const ListEquality().hash([e?.numero, e?.createdDate, e?.pdfUrl]);

  @override
  bool isValidKey(Object? o) => o is BulletinsRecord;
}
