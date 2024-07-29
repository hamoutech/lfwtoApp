import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartenairesRecord extends FirestoreRecord {
  PartenairesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "partnerName" field.
  String? _partnerName;
  String get partnerName => _partnerName ?? '';
  bool hasPartnerName() => _partnerName != null;

  // "partnerDescription" field.
  String? _partnerDescription;
  String get partnerDescription => _partnerDescription ?? '';
  bool hasPartnerDescription() => _partnerDescription != null;

  // "partnerLogo" field.
  String? _partnerLogo;
  String get partnerLogo => _partnerLogo ?? '';
  bool hasPartnerLogo() => _partnerLogo != null;

  // "parnerLink" field.
  String? _parnerLink;
  String get parnerLink => _parnerLink ?? '';
  bool hasParnerLink() => _parnerLink != null;

  void _initializeFields() {
    _partnerName = snapshotData['partnerName'] as String?;
    _partnerDescription = snapshotData['partnerDescription'] as String?;
    _partnerLogo = snapshotData['partnerLogo'] as String?;
    _parnerLink = snapshotData['parnerLink'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('partenaires');

  static Stream<PartenairesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PartenairesRecord.fromSnapshot(s));

  static Future<PartenairesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PartenairesRecord.fromSnapshot(s));

  static PartenairesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PartenairesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PartenairesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PartenairesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PartenairesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PartenairesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPartenairesRecordData({
  String? partnerName,
  String? partnerDescription,
  String? partnerLogo,
  String? parnerLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'partnerName': partnerName,
      'partnerDescription': partnerDescription,
      'partnerLogo': partnerLogo,
      'parnerLink': parnerLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class PartenairesRecordDocumentEquality implements Equality<PartenairesRecord> {
  const PartenairesRecordDocumentEquality();

  @override
  bool equals(PartenairesRecord? e1, PartenairesRecord? e2) {
    return e1?.partnerName == e2?.partnerName &&
        e1?.partnerDescription == e2?.partnerDescription &&
        e1?.partnerLogo == e2?.partnerLogo &&
        e1?.parnerLink == e2?.parnerLink;
  }

  @override
  int hash(PartenairesRecord? e) => const ListEquality().hash(
      [e?.partnerName, e?.partnerDescription, e?.partnerLogo, e?.parnerLink]);

  @override
  bool isValidKey(Object? o) => o is PartenairesRecord;
}
