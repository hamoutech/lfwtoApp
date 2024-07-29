import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendrierRecord extends FirestoreRecord {
  CalendrierRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "journee" field.
  String? _journee;
  String get journee => _journee ?? '';
  bool hasJournee() => _journee != null;

  // "division" field.
  String? _division;
  String get division => _division ?? '';
  bool hasDivision() => _division != null;

  // "listMatch" field.
  List<DocumentReference>? _listMatch;
  List<DocumentReference> get listMatch => _listMatch ?? const [];
  bool hasListMatch() => _listMatch != null;

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  bool hasCategorie() => _categorie != null;

  // "dateDebut" field.
  DateTime? _dateDebut;
  DateTime? get dateDebut => _dateDebut;
  bool hasDateDebut() => _dateDebut != null;

  // "dateFin" field.
  DateTime? _dateFin;
  DateTime? get dateFin => _dateFin;
  bool hasDateFin() => _dateFin != null;

  // "nbJournee" field.
  int? _nbJournee;
  int get nbJournee => _nbJournee ?? 0;
  bool hasNbJournee() => _nbJournee != null;

  // "groupe" field.
  String? _groupe;
  String get groupe => _groupe ?? '';
  bool hasGroupe() => _groupe != null;

  // "calendarAllerID" field.
  DocumentReference? _calendarAllerID;
  DocumentReference? get calendarAllerID => _calendarAllerID;
  bool hasCalendarAllerID() => _calendarAllerID != null;

  // "calendarRetourID" field.
  DocumentReference? _calendarRetourID;
  DocumentReference? get calendarRetourID => _calendarRetourID;
  bool hasCalendarRetourID() => _calendarRetourID != null;

  // "indxJ" field.
  int? _indxJ;
  int get indxJ => _indxJ ?? 0;
  bool hasIndxJ() => _indxJ != null;

  void _initializeFields() {
    _journee = snapshotData['journee'] as String?;
    _division = snapshotData['division'] as String?;
    _listMatch = getDataList(snapshotData['listMatch']);
    _categorie = snapshotData['categorie'] as String?;
    _dateDebut = snapshotData['dateDebut'] as DateTime?;
    _dateFin = snapshotData['dateFin'] as DateTime?;
    _nbJournee = castToType<int>(snapshotData['nbJournee']);
    _groupe = snapshotData['groupe'] as String?;
    _calendarAllerID = snapshotData['calendarAllerID'] as DocumentReference?;
    _calendarRetourID = snapshotData['calendarRetourID'] as DocumentReference?;
    _indxJ = castToType<int>(snapshotData['indxJ']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calendrier');

  static Stream<CalendrierRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalendrierRecord.fromSnapshot(s));

  static Future<CalendrierRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalendrierRecord.fromSnapshot(s));

  static CalendrierRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalendrierRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalendrierRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalendrierRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalendrierRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalendrierRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalendrierRecordData({
  String? journee,
  String? division,
  String? categorie,
  DateTime? dateDebut,
  DateTime? dateFin,
  int? nbJournee,
  String? groupe,
  DocumentReference? calendarAllerID,
  DocumentReference? calendarRetourID,
  int? indxJ,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'journee': journee,
      'division': division,
      'categorie': categorie,
      'dateDebut': dateDebut,
      'dateFin': dateFin,
      'nbJournee': nbJournee,
      'groupe': groupe,
      'calendarAllerID': calendarAllerID,
      'calendarRetourID': calendarRetourID,
      'indxJ': indxJ,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalendrierRecordDocumentEquality implements Equality<CalendrierRecord> {
  const CalendrierRecordDocumentEquality();

  @override
  bool equals(CalendrierRecord? e1, CalendrierRecord? e2) {
    const listEquality = ListEquality();
    return e1?.journee == e2?.journee &&
        e1?.division == e2?.division &&
        listEquality.equals(e1?.listMatch, e2?.listMatch) &&
        e1?.categorie == e2?.categorie &&
        e1?.dateDebut == e2?.dateDebut &&
        e1?.dateFin == e2?.dateFin &&
        e1?.nbJournee == e2?.nbJournee &&
        e1?.groupe == e2?.groupe &&
        e1?.calendarAllerID == e2?.calendarAllerID &&
        e1?.calendarRetourID == e2?.calendarRetourID &&
        e1?.indxJ == e2?.indxJ;
  }

  @override
  int hash(CalendrierRecord? e) => const ListEquality().hash([
        e?.journee,
        e?.division,
        e?.listMatch,
        e?.categorie,
        e?.dateDebut,
        e?.dateFin,
        e?.nbJournee,
        e?.groupe,
        e?.calendarAllerID,
        e?.calendarRetourID,
        e?.indxJ
      ]);

  @override
  bool isValidKey(Object? o) => o is CalendrierRecord;
}
