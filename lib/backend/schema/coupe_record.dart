import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CoupeRecord extends FirestoreRecord {
  CoupeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomCoupe" field.
  String? _nomCoupe;
  String get nomCoupe => _nomCoupe ?? '';
  bool hasNomCoupe() => _nomCoupe != null;

  // "equipes" field.
  List<EquipesStruct>? _equipes;
  List<EquipesStruct> get equipes => _equipes ?? const [];
  bool hasEquipes() => _equipes != null;

  void _initializeFields() {
    _nomCoupe = snapshotData['nomCoupe'] as String?;
    _equipes = getStructList(
      snapshotData['equipes'],
      EquipesStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coupe');

  static Stream<CoupeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoupeRecord.fromSnapshot(s));

  static Future<CoupeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoupeRecord.fromSnapshot(s));

  static CoupeRecord fromSnapshot(DocumentSnapshot snapshot) => CoupeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoupeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoupeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoupeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoupeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoupeRecordData({
  String? nomCoupe,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomCoupe': nomCoupe,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoupeRecordDocumentEquality implements Equality<CoupeRecord> {
  const CoupeRecordDocumentEquality();

  @override
  bool equals(CoupeRecord? e1, CoupeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomCoupe == e2?.nomCoupe &&
        listEquality.equals(e1?.equipes, e2?.equipes);
  }

  @override
  int hash(CoupeRecord? e) =>
      const ListEquality().hash([e?.nomCoupe, e?.equipes]);

  @override
  bool isValidKey(Object? o) => o is CoupeRecord;
}
