import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EquipesRecord extends FirestoreRecord {
  EquipesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nom_equipe" field.
  String? _nomEquipe;
  String get nomEquipe => _nomEquipe ?? '';
  bool hasNomEquipe() => _nomEquipe != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "champ_info" field.
  ChampionnatStruct? _champInfo;
  ChampionnatStruct get champInfo => _champInfo ?? ChampionnatStruct();
  bool hasChampInfo() => _champInfo != null;

  // "division" field.
  String? _division;
  String get division => _division ?? '';
  bool hasDivision() => _division != null;

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  bool hasCategorie() => _categorie != null;

  // "miniCategorie" field.
  String? _miniCategorie;
  String get miniCategorie => _miniCategorie ?? '';
  bool hasMiniCategorie() => _miniCategorie != null;

  // "nameAbreviation" field.
  String? _nameAbreviation;
  String get nameAbreviation => _nameAbreviation ?? '';
  bool hasNameAbreviation() => _nameAbreviation != null;

  // "champInfo19" field.
  ChampionnatStruct? _champInfo19;
  ChampionnatStruct get champInfo19 => _champInfo19 ?? ChampionnatStruct();
  bool hasChampInfo19() => _champInfo19 != null;

  // "champInfo17" field.
  ChampionnatStruct? _champInfo17;
  ChampionnatStruct get champInfo17 => _champInfo17 ?? ChampionnatStruct();
  bool hasChampInfo17() => _champInfo17 != null;

  // "champinfo13" field.
  ChampionnatStruct? _champinfo13;
  ChampionnatStruct get champinfo13 => _champinfo13 ?? ChampionnatStruct();
  bool hasChampinfo13() => _champinfo13 != null;

  // "U19" field.
  bool? _u19;
  bool get u19 => _u19 ?? false;
  bool hasU19() => _u19 != null;

  // "U17" field.
  bool? _u17;
  bool get u17 => _u17 ?? false;
  bool hasU17() => _u17 != null;

  // "U13" field.
  bool? _u13;
  bool get u13 => _u13 ?? false;
  bool hasU13() => _u13 != null;

  // "senior" field.
  bool? _senior;
  bool get senior => _senior ?? false;
  bool hasSenior() => _senior != null;

  // "groupe" field.
  String? _groupe;
  String get groupe => _groupe ?? '';
  bool hasGroupe() => _groupe != null;

  // "U15" field.
  bool? _u15;
  bool get u15 => _u15 ?? false;
  bool hasU15() => _u15 != null;

  // "champInfo15" field.
  ChampionnatStruct? _champInfo15;
  ChampionnatStruct get champInfo15 => _champInfo15 ?? ChampionnatStruct();
  bool hasChampInfo15() => _champInfo15 != null;

  void _initializeFields() {
    _nomEquipe = snapshotData['nom_equipe'] as String?;
    _logo = snapshotData['logo'] as String?;
    _champInfo = ChampionnatStruct.maybeFromMap(snapshotData['champ_info']);
    _division = snapshotData['division'] as String?;
    _categorie = snapshotData['categorie'] as String?;
    _miniCategorie = snapshotData['miniCategorie'] as String?;
    _nameAbreviation = snapshotData['nameAbreviation'] as String?;
    _champInfo19 = ChampionnatStruct.maybeFromMap(snapshotData['champInfo19']);
    _champInfo17 = ChampionnatStruct.maybeFromMap(snapshotData['champInfo17']);
    _champinfo13 = ChampionnatStruct.maybeFromMap(snapshotData['champinfo13']);
    _u19 = snapshotData['U19'] as bool?;
    _u17 = snapshotData['U17'] as bool?;
    _u13 = snapshotData['U13'] as bool?;
    _senior = snapshotData['senior'] as bool?;
    _groupe = snapshotData['groupe'] as String?;
    _u15 = snapshotData['U15'] as bool?;
    _champInfo15 = ChampionnatStruct.maybeFromMap(snapshotData['champInfo15']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Equipes');

  static Stream<EquipesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquipesRecord.fromSnapshot(s));

  static Future<EquipesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquipesRecord.fromSnapshot(s));

  static EquipesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquipesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquipesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquipesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquipesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquipesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquipesRecordData({
  String? nomEquipe,
  String? logo,
  ChampionnatStruct? champInfo,
  String? division,
  String? categorie,
  String? miniCategorie,
  String? nameAbreviation,
  ChampionnatStruct? champInfo19,
  ChampionnatStruct? champInfo17,
  ChampionnatStruct? champinfo13,
  bool? u19,
  bool? u17,
  bool? u13,
  bool? senior,
  String? groupe,
  bool? u15,
  ChampionnatStruct? champInfo15,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom_equipe': nomEquipe,
      'logo': logo,
      'champ_info': ChampionnatStruct().toMap(),
      'division': division,
      'categorie': categorie,
      'miniCategorie': miniCategorie,
      'nameAbreviation': nameAbreviation,
      'champInfo19': ChampionnatStruct().toMap(),
      'champInfo17': ChampionnatStruct().toMap(),
      'champinfo13': ChampionnatStruct().toMap(),
      'U19': u19,
      'U17': u17,
      'U13': u13,
      'senior': senior,
      'groupe': groupe,
      'U15': u15,
      'champInfo15': ChampionnatStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "champ_info" field.
  addChampionnatStructData(firestoreData, champInfo, 'champ_info');

  // Handle nested data for "champInfo19" field.
  addChampionnatStructData(firestoreData, champInfo19, 'champInfo19');

  // Handle nested data for "champInfo17" field.
  addChampionnatStructData(firestoreData, champInfo17, 'champInfo17');

  // Handle nested data for "champinfo13" field.
  addChampionnatStructData(firestoreData, champinfo13, 'champinfo13');

  // Handle nested data for "champInfo15" field.
  addChampionnatStructData(firestoreData, champInfo15, 'champInfo15');

  return firestoreData;
}

class EquipesRecordDocumentEquality implements Equality<EquipesRecord> {
  const EquipesRecordDocumentEquality();

  @override
  bool equals(EquipesRecord? e1, EquipesRecord? e2) {
    return e1?.nomEquipe == e2?.nomEquipe &&
        e1?.logo == e2?.logo &&
        e1?.champInfo == e2?.champInfo &&
        e1?.division == e2?.division &&
        e1?.categorie == e2?.categorie &&
        e1?.miniCategorie == e2?.miniCategorie &&
        e1?.nameAbreviation == e2?.nameAbreviation &&
        e1?.champInfo19 == e2?.champInfo19 &&
        e1?.champInfo17 == e2?.champInfo17 &&
        e1?.champinfo13 == e2?.champinfo13 &&
        e1?.u19 == e2?.u19 &&
        e1?.u17 == e2?.u17 &&
        e1?.u13 == e2?.u13 &&
        e1?.senior == e2?.senior &&
        e1?.groupe == e2?.groupe &&
        e1?.u15 == e2?.u15 &&
        e1?.champInfo15 == e2?.champInfo15;
  }

  @override
  int hash(EquipesRecord? e) => const ListEquality().hash([
        e?.nomEquipe,
        e?.logo,
        e?.champInfo,
        e?.division,
        e?.categorie,
        e?.miniCategorie,
        e?.nameAbreviation,
        e?.champInfo19,
        e?.champInfo17,
        e?.champinfo13,
        e?.u19,
        e?.u17,
        e?.u13,
        e?.senior,
        e?.groupe,
        e?.u15,
        e?.champInfo15
      ]);

  @override
  bool isValidKey(Object? o) => o is EquipesRecord;
}
