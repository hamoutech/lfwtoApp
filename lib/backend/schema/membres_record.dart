import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MembresRecord extends FirestoreRecord {
  MembresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "president" field.
  String? _president;
  String get president => _president ?? '';
  bool hasPresident() => _president != null;

  // "secretaireGeneral" field.
  String? _secretaireGeneral;
  String get secretaireGeneral => _secretaireGeneral ?? '';
  bool hasSecretaireGeneral() => _secretaireGeneral != null;

  // "daf" field.
  String? _daf;
  String get daf => _daf ?? '';
  bool hasDaf() => _daf != null;

  // "dtw" field.
  String? _dtw;
  String get dtw => _dtw ?? '';
  bool hasDtw() => _dtw != null;

  // "coc" field.
  String? _coc;
  String get coc => _coc ?? '';
  bool hasCoc() => _coc != null;

  // "caw" field.
  String? _caw;
  String get caw => _caw ?? '';
  bool hasCaw() => _caw != null;

  // "cMedical" field.
  String? _cMedical;
  String get cMedical => _cMedical ?? '';
  bool hasCMedical() => _cMedical != null;

  // "cd" field.
  String? _cd;
  String get cd => _cd ?? '';
  bool hasCd() => _cd != null;

  // "cLicences" field.
  String? _cLicences;
  String get cLicences => _cLicences ?? '';
  bool hasCLicences() => _cLicences != null;

  // "annee" field.
  String? _annee;
  String get annee => _annee ?? '';
  bool hasAnnee() => _annee != null;

  void _initializeFields() {
    _president = snapshotData['president'] as String?;
    _secretaireGeneral = snapshotData['secretaireGeneral'] as String?;
    _daf = snapshotData['daf'] as String?;
    _dtw = snapshotData['dtw'] as String?;
    _coc = snapshotData['coc'] as String?;
    _caw = snapshotData['caw'] as String?;
    _cMedical = snapshotData['cMedical'] as String?;
    _cd = snapshotData['cd'] as String?;
    _cLicences = snapshotData['cLicences'] as String?;
    _annee = snapshotData['annee'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('membres');

  static Stream<MembresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembresRecord.fromSnapshot(s));

  static Future<MembresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembresRecord.fromSnapshot(s));

  static MembresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembresRecordData({
  String? president,
  String? secretaireGeneral,
  String? daf,
  String? dtw,
  String? coc,
  String? caw,
  String? cMedical,
  String? cd,
  String? cLicences,
  String? annee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'president': president,
      'secretaireGeneral': secretaireGeneral,
      'daf': daf,
      'dtw': dtw,
      'coc': coc,
      'caw': caw,
      'cMedical': cMedical,
      'cd': cd,
      'cLicences': cLicences,
      'annee': annee,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembresRecordDocumentEquality implements Equality<MembresRecord> {
  const MembresRecordDocumentEquality();

  @override
  bool equals(MembresRecord? e1, MembresRecord? e2) {
    return e1?.president == e2?.president &&
        e1?.secretaireGeneral == e2?.secretaireGeneral &&
        e1?.daf == e2?.daf &&
        e1?.dtw == e2?.dtw &&
        e1?.coc == e2?.coc &&
        e1?.caw == e2?.caw &&
        e1?.cMedical == e2?.cMedical &&
        e1?.cd == e2?.cd &&
        e1?.cLicences == e2?.cLicences &&
        e1?.annee == e2?.annee;
  }

  @override
  int hash(MembresRecord? e) => const ListEquality().hash([
        e?.president,
        e?.secretaireGeneral,
        e?.daf,
        e?.dtw,
        e?.coc,
        e?.caw,
        e?.cMedical,
        e?.cd,
        e?.cLicences,
        e?.annee
      ]);

  @override
  bool isValidKey(Object? o) => o is MembresRecord;
}
