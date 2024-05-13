import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ResultatsRecord extends FirestoreRecord {
  ResultatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  bool hasCategorie() => _categorie != null;

  // "equipe1" field.
  EquipesStruct? _equipe1;
  EquipesStruct get equipe1 => _equipe1 ?? EquipesStruct();
  bool hasEquipe1() => _equipe1 != null;

  // "equipe2" field.
  EquipesStruct? _equipe2;
  EquipesStruct get equipe2 => _equipe2 ?? EquipesStruct();
  bool hasEquipe2() => _equipe2 != null;

  // "scoreEquipe1" field.
  String? _scoreEquipe1;
  String get scoreEquipe1 => _scoreEquipe1 ?? '';
  bool hasScoreEquipe1() => _scoreEquipe1 != null;

  // "scoreEquipe2" field.
  String? _scoreEquipe2;
  String get scoreEquipe2 => _scoreEquipe2 ?? '';
  bool hasScoreEquipe2() => _scoreEquipe2 != null;

  // "sousCategorie" field.
  String? _sousCategorie;
  String get sousCategorie => _sousCategorie ?? '';
  bool hasSousCategorie() => _sousCategorie != null;

  // "miniCategorie" field.
  String? _miniCategorie;
  String get miniCategorie => _miniCategorie ?? '';
  bool hasMiniCategorie() => _miniCategorie != null;

  void _initializeFields() {
    _categorie = snapshotData['categorie'] as String?;
    _equipe1 = EquipesStruct.maybeFromMap(snapshotData['equipe1']);
    _equipe2 = EquipesStruct.maybeFromMap(snapshotData['equipe2']);
    _scoreEquipe1 = snapshotData['scoreEquipe1'] as String?;
    _scoreEquipe2 = snapshotData['scoreEquipe2'] as String?;
    _sousCategorie = snapshotData['sousCategorie'] as String?;
    _miniCategorie = snapshotData['miniCategorie'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resultats');

  static Stream<ResultatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResultatsRecord.fromSnapshot(s));

  static Future<ResultatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResultatsRecord.fromSnapshot(s));

  static ResultatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResultatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultatsRecordData({
  String? categorie,
  EquipesStruct? equipe1,
  EquipesStruct? equipe2,
  String? scoreEquipe1,
  String? scoreEquipe2,
  String? sousCategorie,
  String? miniCategorie,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categorie': categorie,
      'equipe1': EquipesStruct().toMap(),
      'equipe2': EquipesStruct().toMap(),
      'scoreEquipe1': scoreEquipe1,
      'scoreEquipe2': scoreEquipe2,
      'sousCategorie': sousCategorie,
      'miniCategorie': miniCategorie,
    }.withoutNulls,
  );

  // Handle nested data for "equipe1" field.
  addEquipesStructData(firestoreData, equipe1, 'equipe1');

  // Handle nested data for "equipe2" field.
  addEquipesStructData(firestoreData, equipe2, 'equipe2');

  return firestoreData;
}

class ResultatsRecordDocumentEquality implements Equality<ResultatsRecord> {
  const ResultatsRecordDocumentEquality();

  @override
  bool equals(ResultatsRecord? e1, ResultatsRecord? e2) {
    return e1?.categorie == e2?.categorie &&
        e1?.equipe1 == e2?.equipe1 &&
        e1?.equipe2 == e2?.equipe2 &&
        e1?.scoreEquipe1 == e2?.scoreEquipe1 &&
        e1?.scoreEquipe2 == e2?.scoreEquipe2 &&
        e1?.sousCategorie == e2?.sousCategorie &&
        e1?.miniCategorie == e2?.miniCategorie;
  }

  @override
  int hash(ResultatsRecord? e) => const ListEquality().hash([
        e?.categorie,
        e?.equipe1,
        e?.equipe2,
        e?.scoreEquipe1,
        e?.scoreEquipe2,
        e?.sousCategorie,
        e?.miniCategorie
      ]);

  @override
  bool isValidKey(Object? o) => o is ResultatsRecord;
}
