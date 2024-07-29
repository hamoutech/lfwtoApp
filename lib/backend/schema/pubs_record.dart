import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PubsRecord extends FirestoreRecord {
  PubsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "homeBanner1" field.
  String? _homeBanner1;
  String get homeBanner1 => _homeBanner1 ?? '';
  bool hasHomeBanner1() => _homeBanner1 != null;

  // "homeBanner1Link" field.
  String? _homeBanner1Link;
  String get homeBanner1Link => _homeBanner1Link ?? '';
  bool hasHomeBanner1Link() => _homeBanner1Link != null;

  // "homeBanner2" field.
  String? _homeBanner2;
  String get homeBanner2 => _homeBanner2 ?? '';
  bool hasHomeBanner2() => _homeBanner2 != null;

  // "homeBanner2Link" field.
  String? _homeBanner2Link;
  String get homeBanner2Link => _homeBanner2Link ?? '';
  bool hasHomeBanner2Link() => _homeBanner2Link != null;

  // "homeBanner3" field.
  String? _homeBanner3;
  String get homeBanner3 => _homeBanner3 ?? '';
  bool hasHomeBanner3() => _homeBanner3 != null;

  // "homeBanner3Link" field.
  String? _homeBanner3Link;
  String get homeBanner3Link => _homeBanner3Link ?? '';
  bool hasHomeBanner3Link() => _homeBanner3Link != null;

  // "champBanner" field.
  String? _champBanner;
  String get champBanner => _champBanner ?? '';
  bool hasChampBanner() => _champBanner != null;

  // "champBannerLink" field.
  String? _champBannerLink;
  String get champBannerLink => _champBannerLink ?? '';
  bool hasChampBannerLink() => _champBannerLink != null;

  // "beginPageAds" field.
  String? _beginPageAds;
  String get beginPageAds => _beginPageAds ?? '';
  bool hasBeginPageAds() => _beginPageAds != null;

  // "beginPageAdsLink" field.
  String? _beginPageAdsLink;
  String get beginPageAdsLink => _beginPageAdsLink ?? '';
  bool hasBeginPageAdsLink() => _beginPageAdsLink != null;

  // "matchDayAds" field.
  String? _matchDayAds;
  String get matchDayAds => _matchDayAds ?? '';
  bool hasMatchDayAds() => _matchDayAds != null;

  // "marchDayAdsLink" field.
  String? _marchDayAdsLink;
  String get marchDayAdsLink => _marchDayAdsLink ?? '';
  bool hasMarchDayAdsLink() => _marchDayAdsLink != null;

  void _initializeFields() {
    _homeBanner1 = snapshotData['homeBanner1'] as String?;
    _homeBanner1Link = snapshotData['homeBanner1Link'] as String?;
    _homeBanner2 = snapshotData['homeBanner2'] as String?;
    _homeBanner2Link = snapshotData['homeBanner2Link'] as String?;
    _homeBanner3 = snapshotData['homeBanner3'] as String?;
    _homeBanner3Link = snapshotData['homeBanner3Link'] as String?;
    _champBanner = snapshotData['champBanner'] as String?;
    _champBannerLink = snapshotData['champBannerLink'] as String?;
    _beginPageAds = snapshotData['beginPageAds'] as String?;
    _beginPageAdsLink = snapshotData['beginPageAdsLink'] as String?;
    _matchDayAds = snapshotData['matchDayAds'] as String?;
    _marchDayAdsLink = snapshotData['marchDayAdsLink'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pubs');

  static Stream<PubsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PubsRecord.fromSnapshot(s));

  static Future<PubsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PubsRecord.fromSnapshot(s));

  static PubsRecord fromSnapshot(DocumentSnapshot snapshot) => PubsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PubsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PubsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PubsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PubsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPubsRecordData({
  String? homeBanner1,
  String? homeBanner1Link,
  String? homeBanner2,
  String? homeBanner2Link,
  String? homeBanner3,
  String? homeBanner3Link,
  String? champBanner,
  String? champBannerLink,
  String? beginPageAds,
  String? beginPageAdsLink,
  String? matchDayAds,
  String? marchDayAdsLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'homeBanner1': homeBanner1,
      'homeBanner1Link': homeBanner1Link,
      'homeBanner2': homeBanner2,
      'homeBanner2Link': homeBanner2Link,
      'homeBanner3': homeBanner3,
      'homeBanner3Link': homeBanner3Link,
      'champBanner': champBanner,
      'champBannerLink': champBannerLink,
      'beginPageAds': beginPageAds,
      'beginPageAdsLink': beginPageAdsLink,
      'matchDayAds': matchDayAds,
      'marchDayAdsLink': marchDayAdsLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class PubsRecordDocumentEquality implements Equality<PubsRecord> {
  const PubsRecordDocumentEquality();

  @override
  bool equals(PubsRecord? e1, PubsRecord? e2) {
    return e1?.homeBanner1 == e2?.homeBanner1 &&
        e1?.homeBanner1Link == e2?.homeBanner1Link &&
        e1?.homeBanner2 == e2?.homeBanner2 &&
        e1?.homeBanner2Link == e2?.homeBanner2Link &&
        e1?.homeBanner3 == e2?.homeBanner3 &&
        e1?.homeBanner3Link == e2?.homeBanner3Link &&
        e1?.champBanner == e2?.champBanner &&
        e1?.champBannerLink == e2?.champBannerLink &&
        e1?.beginPageAds == e2?.beginPageAds &&
        e1?.beginPageAdsLink == e2?.beginPageAdsLink &&
        e1?.matchDayAds == e2?.matchDayAds &&
        e1?.marchDayAdsLink == e2?.marchDayAdsLink;
  }

  @override
  int hash(PubsRecord? e) => const ListEquality().hash([
        e?.homeBanner1,
        e?.homeBanner1Link,
        e?.homeBanner2,
        e?.homeBanner2Link,
        e?.homeBanner3,
        e?.homeBanner3Link,
        e?.champBanner,
        e?.champBannerLink,
        e?.beginPageAds,
        e?.beginPageAdsLink,
        e?.matchDayAds,
        e?.marchDayAdsLink
      ]);

  @override
  bool isValidKey(Object? o) => o is PubsRecord;
}
