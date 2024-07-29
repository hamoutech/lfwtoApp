import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchRecord extends FirestoreRecord {
  MatchRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "journee" field.
  String? _journee;
  String get journee => _journee ?? '';
  bool hasJournee() => _journee != null;

  // "linkMatch" field.
  String? _linkMatch;
  String get linkMatch => _linkMatch ?? '';
  bool hasLinkMatch() => _linkMatch != null;

  // "stade" field.
  String? _stade;
  String get stade => _stade ?? '';
  bool hasStade() => _stade != null;

  // "heure" field.
  String? _heure;
  String get heure => _heure ?? '';
  bool hasHeure() => _heure != null;

  // "division" field.
  String? _division;
  String get division => _division ?? '';
  bool hasDivision() => _division != null;

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  bool hasCategorie() => _categorie != null;

  // "isLive" field.
  bool? _isLive;
  bool get isLive => _isLive ?? false;
  bool hasIsLive() => _isLive != null;

  // "dateMatch" field.
  DateTime? _dateMatch;
  DateTime? get dateMatch => _dateMatch;
  bool hasDateMatch() => _dateMatch != null;

  // "equipeA" field.
  EquipesStruct? _equipeA;
  EquipesStruct get equipeA => _equipeA ?? EquipesStruct();
  bool hasEquipeA() => _equipeA != null;

  // "equipeB" field.
  EquipesStruct? _equipeB;
  EquipesStruct get equipeB => _equipeB ?? EquipesStruct();
  bool hasEquipeB() => _equipeB != null;

  // "miniCategorie" field.
  String? _miniCategorie;
  String get miniCategorie => _miniCategorie ?? '';
  bool hasMiniCategorie() => _miniCategorie != null;

  // "scoreEquipeA" field.
  String? _scoreEquipeA;
  String get scoreEquipeA => _scoreEquipeA ?? '';
  bool hasScoreEquipeA() => _scoreEquipeA != null;

  // "scoreEquipeB" field.
  String? _scoreEquipeB;
  String get scoreEquipeB => _scoreEquipeB ?? '';
  bool hasScoreEquipeB() => _scoreEquipeB != null;

  // "youtubeLink" field.
  String? _youtubeLink;
  String get youtubeLink => _youtubeLink ?? '';
  bool hasYoutubeLink() => _youtubeLink != null;

  // "teamA" field.
  DocumentReference? _teamA;
  DocumentReference? get teamA => _teamA;
  bool hasTeamA() => _teamA != null;

  // "teamB" field.
  DocumentReference? _teamB;
  DocumentReference? get teamB => _teamB;
  bool hasTeamB() => _teamB != null;

  // "scoreTeamA" field.
  int? _scoreTeamA;
  int get scoreTeamA => _scoreTeamA ?? 0;
  bool hasScoreTeamA() => _scoreTeamA != null;

  // "scoreTeamB" field.
  int? _scoreTeamB;
  int get scoreTeamB => _scoreTeamB ?? 0;
  bool hasScoreTeamB() => _scoreTeamB != null;

  // "resultatSenior" field.
  ResultatsStruct? _resultatSenior;
  ResultatsStruct get resultatSenior => _resultatSenior ?? ResultatsStruct();
  bool hasResultatSenior() => _resultatSenior != null;

  // "resultatU19" field.
  ResultatsStruct? _resultatU19;
  ResultatsStruct get resultatU19 => _resultatU19 ?? ResultatsStruct();
  bool hasResultatU19() => _resultatU19 != null;

  // "resultatU17" field.
  ResultatsStruct? _resultatU17;
  ResultatsStruct get resultatU17 => _resultatU17 ?? ResultatsStruct();
  bool hasResultatU17() => _resultatU17 != null;

  // "resultatU15" field.
  ResultatsStruct? _resultatU15;
  ResultatsStruct get resultatU15 => _resultatU15 ?? ResultatsStruct();
  bool hasResultatU15() => _resultatU15 != null;

  // "resultatU13" field.
  ResultatsStruct? _resultatU13;
  ResultatsStruct get resultatU13 => _resultatU13 ?? ResultatsStruct();
  bool hasResultatU13() => _resultatU13 != null;

  // "matchInfosU19" field.
  MatchStruct? _matchInfosU19;
  MatchStruct get matchInfosU19 => _matchInfosU19 ?? MatchStruct();
  bool hasMatchInfosU19() => _matchInfosU19 != null;

  // "matchInfosU17" field.
  MatchStruct? _matchInfosU17;
  MatchStruct get matchInfosU17 => _matchInfosU17 ?? MatchStruct();
  bool hasMatchInfosU17() => _matchInfosU17 != null;

  // "matchInfosU15" field.
  MatchStruct? _matchInfosU15;
  MatchStruct get matchInfosU15 => _matchInfosU15 ?? MatchStruct();
  bool hasMatchInfosU15() => _matchInfosU15 != null;

  // "matchInfosU13" field.
  MatchStruct? _matchInfosU13;
  MatchStruct get matchInfosU13 => _matchInfosU13 ?? MatchStruct();
  bool hasMatchInfosU13() => _matchInfosU13 != null;

  // "groupe" field.
  String? _groupe;
  String get groupe => _groupe ?? '';
  bool hasGroupe() => _groupe != null;

  void _initializeFields() {
    _journee = snapshotData['journee'] as String?;
    _linkMatch = snapshotData['linkMatch'] as String?;
    _stade = snapshotData['stade'] as String?;
    _heure = snapshotData['heure'] as String?;
    _division = snapshotData['division'] as String?;
    _categorie = snapshotData['categorie'] as String?;
    _isLive = snapshotData['isLive'] as bool?;
    _dateMatch = snapshotData['dateMatch'] as DateTime?;
    _equipeA = EquipesStruct.maybeFromMap(snapshotData['equipeA']);
    _equipeB = EquipesStruct.maybeFromMap(snapshotData['equipeB']);
    _miniCategorie = snapshotData['miniCategorie'] as String?;
    _scoreEquipeA = snapshotData['scoreEquipeA'] as String?;
    _scoreEquipeB = snapshotData['scoreEquipeB'] as String?;
    _youtubeLink = snapshotData['youtubeLink'] as String?;
    _teamA = snapshotData['teamA'] as DocumentReference?;
    _teamB = snapshotData['teamB'] as DocumentReference?;
    _scoreTeamA = castToType<int>(snapshotData['scoreTeamA']);
    _scoreTeamB = castToType<int>(snapshotData['scoreTeamB']);
    _resultatSenior =
        ResultatsStruct.maybeFromMap(snapshotData['resultatSenior']);
    _resultatU19 = ResultatsStruct.maybeFromMap(snapshotData['resultatU19']);
    _resultatU17 = ResultatsStruct.maybeFromMap(snapshotData['resultatU17']);
    _resultatU15 = ResultatsStruct.maybeFromMap(snapshotData['resultatU15']);
    _resultatU13 = ResultatsStruct.maybeFromMap(snapshotData['resultatU13']);
    _matchInfosU19 = MatchStruct.maybeFromMap(snapshotData['matchInfosU19']);
    _matchInfosU17 = MatchStruct.maybeFromMap(snapshotData['matchInfosU17']);
    _matchInfosU15 = MatchStruct.maybeFromMap(snapshotData['matchInfosU15']);
    _matchInfosU13 = MatchStruct.maybeFromMap(snapshotData['matchInfosU13']);
    _groupe = snapshotData['groupe'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('match');

  static Stream<MatchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MatchRecord.fromSnapshot(s));

  static Future<MatchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MatchRecord.fromSnapshot(s));

  static MatchRecord fromSnapshot(DocumentSnapshot snapshot) => MatchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MatchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MatchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MatchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MatchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMatchRecordData({
  String? journee,
  String? linkMatch,
  String? stade,
  String? heure,
  String? division,
  String? categorie,
  bool? isLive,
  DateTime? dateMatch,
  EquipesStruct? equipeA,
  EquipesStruct? equipeB,
  String? miniCategorie,
  String? scoreEquipeA,
  String? scoreEquipeB,
  String? youtubeLink,
  DocumentReference? teamA,
  DocumentReference? teamB,
  int? scoreTeamA,
  int? scoreTeamB,
  ResultatsStruct? resultatSenior,
  ResultatsStruct? resultatU19,
  ResultatsStruct? resultatU17,
  ResultatsStruct? resultatU15,
  ResultatsStruct? resultatU13,
  MatchStruct? matchInfosU19,
  MatchStruct? matchInfosU17,
  MatchStruct? matchInfosU15,
  MatchStruct? matchInfosU13,
  String? groupe,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'journee': journee,
      'linkMatch': linkMatch,
      'stade': stade,
      'heure': heure,
      'division': division,
      'categorie': categorie,
      'isLive': isLive,
      'dateMatch': dateMatch,
      'equipeA': EquipesStruct().toMap(),
      'equipeB': EquipesStruct().toMap(),
      'miniCategorie': miniCategorie,
      'scoreEquipeA': scoreEquipeA,
      'scoreEquipeB': scoreEquipeB,
      'youtubeLink': youtubeLink,
      'teamA': teamA,
      'teamB': teamB,
      'scoreTeamA': scoreTeamA,
      'scoreTeamB': scoreTeamB,
      'resultatSenior': ResultatsStruct().toMap(),
      'resultatU19': ResultatsStruct().toMap(),
      'resultatU17': ResultatsStruct().toMap(),
      'resultatU15': ResultatsStruct().toMap(),
      'resultatU13': ResultatsStruct().toMap(),
      'matchInfosU19': MatchStruct().toMap(),
      'matchInfosU17': MatchStruct().toMap(),
      'matchInfosU15': MatchStruct().toMap(),
      'matchInfosU13': MatchStruct().toMap(),
      'groupe': groupe,
    }.withoutNulls,
  );

  // Handle nested data for "equipeA" field.
  addEquipesStructData(firestoreData, equipeA, 'equipeA');

  // Handle nested data for "equipeB" field.
  addEquipesStructData(firestoreData, equipeB, 'equipeB');

  // Handle nested data for "resultatSenior" field.
  addResultatsStructData(firestoreData, resultatSenior, 'resultatSenior');

  // Handle nested data for "resultatU19" field.
  addResultatsStructData(firestoreData, resultatU19, 'resultatU19');

  // Handle nested data for "resultatU17" field.
  addResultatsStructData(firestoreData, resultatU17, 'resultatU17');

  // Handle nested data for "resultatU15" field.
  addResultatsStructData(firestoreData, resultatU15, 'resultatU15');

  // Handle nested data for "resultatU13" field.
  addResultatsStructData(firestoreData, resultatU13, 'resultatU13');

  // Handle nested data for "matchInfosU19" field.
  addMatchStructData(firestoreData, matchInfosU19, 'matchInfosU19');

  // Handle nested data for "matchInfosU17" field.
  addMatchStructData(firestoreData, matchInfosU17, 'matchInfosU17');

  // Handle nested data for "matchInfosU15" field.
  addMatchStructData(firestoreData, matchInfosU15, 'matchInfosU15');

  // Handle nested data for "matchInfosU13" field.
  addMatchStructData(firestoreData, matchInfosU13, 'matchInfosU13');

  return firestoreData;
}

class MatchRecordDocumentEquality implements Equality<MatchRecord> {
  const MatchRecordDocumentEquality();

  @override
  bool equals(MatchRecord? e1, MatchRecord? e2) {
    return e1?.journee == e2?.journee &&
        e1?.linkMatch == e2?.linkMatch &&
        e1?.stade == e2?.stade &&
        e1?.heure == e2?.heure &&
        e1?.division == e2?.division &&
        e1?.categorie == e2?.categorie &&
        e1?.isLive == e2?.isLive &&
        e1?.dateMatch == e2?.dateMatch &&
        e1?.equipeA == e2?.equipeA &&
        e1?.equipeB == e2?.equipeB &&
        e1?.miniCategorie == e2?.miniCategorie &&
        e1?.scoreEquipeA == e2?.scoreEquipeA &&
        e1?.scoreEquipeB == e2?.scoreEquipeB &&
        e1?.youtubeLink == e2?.youtubeLink &&
        e1?.teamA == e2?.teamA &&
        e1?.teamB == e2?.teamB &&
        e1?.scoreTeamA == e2?.scoreTeamA &&
        e1?.scoreTeamB == e2?.scoreTeamB &&
        e1?.resultatSenior == e2?.resultatSenior &&
        e1?.resultatU19 == e2?.resultatU19 &&
        e1?.resultatU17 == e2?.resultatU17 &&
        e1?.resultatU15 == e2?.resultatU15 &&
        e1?.resultatU13 == e2?.resultatU13 &&
        e1?.matchInfosU19 == e2?.matchInfosU19 &&
        e1?.matchInfosU17 == e2?.matchInfosU17 &&
        e1?.matchInfosU15 == e2?.matchInfosU15 &&
        e1?.matchInfosU13 == e2?.matchInfosU13 &&
        e1?.groupe == e2?.groupe;
  }

  @override
  int hash(MatchRecord? e) => const ListEquality().hash([
        e?.journee,
        e?.linkMatch,
        e?.stade,
        e?.heure,
        e?.division,
        e?.categorie,
        e?.isLive,
        e?.dateMatch,
        e?.equipeA,
        e?.equipeB,
        e?.miniCategorie,
        e?.scoreEquipeA,
        e?.scoreEquipeB,
        e?.youtubeLink,
        e?.teamA,
        e?.teamB,
        e?.scoreTeamA,
        e?.scoreTeamB,
        e?.resultatSenior,
        e?.resultatU19,
        e?.resultatU17,
        e?.resultatU15,
        e?.resultatU13,
        e?.matchInfosU19,
        e?.matchInfosU17,
        e?.matchInfosU15,
        e?.matchInfosU13,
        e?.groupe
      ]);

  @override
  bool isValidKey(Object? o) => o is MatchRecord;
}
