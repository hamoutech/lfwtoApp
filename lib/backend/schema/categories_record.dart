import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CategoriesRecord extends FirestoreRecord {
  CategoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "sous_categorie" field.
  List<String>? _sousCategorie;
  List<String> get sousCategorie => _sousCategorie ?? const [];
  bool hasSousCategorie() => _sousCategorie != null;

  // "age" field.
  List<String>? _age;
  List<String> get age => _age ?? const [];
  bool hasAge() => _age != null;

  void _initializeFields() {
    _nom = snapshotData['Nom'] as String?;
    _sousCategorie = getDataList(snapshotData['sous_categorie']);
    _age = getDataList(snapshotData['age']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categories');

  static Stream<CategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriesRecord.fromSnapshot(s));

  static Future<CategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriesRecord.fromSnapshot(s));

  static CategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriesRecordData({
  String? nom,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nom': nom,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriesRecordDocumentEquality implements Equality<CategoriesRecord> {
  const CategoriesRecordDocumentEquality();

  @override
  bool equals(CategoriesRecord? e1, CategoriesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nom == e2?.nom &&
        listEquality.equals(e1?.sousCategorie, e2?.sousCategorie) &&
        listEquality.equals(e1?.age, e2?.age);
  }

  @override
  int hash(CategoriesRecord? e) =>
      const ListEquality().hash([e?.nom, e?.sousCategorie, e?.age]);

  @override
  bool isValidKey(Object? o) => o is CategoriesRecord;
}
