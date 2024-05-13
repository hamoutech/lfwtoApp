import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PartnerDemandRecord extends FirestoreRecord {
  PartnerDemandRecord._(
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

  // "partnerPhone" field.
  String? _partnerPhone;
  String get partnerPhone => _partnerPhone ?? '';
  bool hasPartnerPhone() => _partnerPhone != null;

  // "partnerEmail" field.
  String? _partnerEmail;
  String get partnerEmail => _partnerEmail ?? '';
  bool hasPartnerEmail() => _partnerEmail != null;

  // "partnerDemandeDate" field.
  DateTime? _partnerDemandeDate;
  DateTime? get partnerDemandeDate => _partnerDemandeDate;
  bool hasPartnerDemandeDate() => _partnerDemandeDate != null;

  void _initializeFields() {
    _partnerName = snapshotData['partnerName'] as String?;
    _partnerDescription = snapshotData['partnerDescription'] as String?;
    _partnerLogo = snapshotData['partnerLogo'] as String?;
    _parnerLink = snapshotData['parnerLink'] as String?;
    _partnerPhone = snapshotData['partnerPhone'] as String?;
    _partnerEmail = snapshotData['partnerEmail'] as String?;
    _partnerDemandeDate = snapshotData['partnerDemandeDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('partnerDemand');

  static Stream<PartnerDemandRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PartnerDemandRecord.fromSnapshot(s));

  static Future<PartnerDemandRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PartnerDemandRecord.fromSnapshot(s));

  static PartnerDemandRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PartnerDemandRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PartnerDemandRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PartnerDemandRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PartnerDemandRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PartnerDemandRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPartnerDemandRecordData({
  String? partnerName,
  String? partnerDescription,
  String? partnerLogo,
  String? parnerLink,
  String? partnerPhone,
  String? partnerEmail,
  DateTime? partnerDemandeDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'partnerName': partnerName,
      'partnerDescription': partnerDescription,
      'partnerLogo': partnerLogo,
      'parnerLink': parnerLink,
      'partnerPhone': partnerPhone,
      'partnerEmail': partnerEmail,
      'partnerDemandeDate': partnerDemandeDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class PartnerDemandRecordDocumentEquality
    implements Equality<PartnerDemandRecord> {
  const PartnerDemandRecordDocumentEquality();

  @override
  bool equals(PartnerDemandRecord? e1, PartnerDemandRecord? e2) {
    return e1?.partnerName == e2?.partnerName &&
        e1?.partnerDescription == e2?.partnerDescription &&
        e1?.partnerLogo == e2?.partnerLogo &&
        e1?.parnerLink == e2?.parnerLink &&
        e1?.partnerPhone == e2?.partnerPhone &&
        e1?.partnerEmail == e2?.partnerEmail &&
        e1?.partnerDemandeDate == e2?.partnerDemandeDate;
  }

  @override
  int hash(PartnerDemandRecord? e) => const ListEquality().hash([
        e?.partnerName,
        e?.partnerDescription,
        e?.partnerLogo,
        e?.parnerLink,
        e?.partnerPhone,
        e?.partnerEmail,
        e?.partnerDemandeDate
      ]);

  @override
  bool isValidKey(Object? o) => o is PartnerDemandRecord;
}
