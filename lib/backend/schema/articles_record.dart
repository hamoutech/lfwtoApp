import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ArticlesRecord extends FirestoreRecord {
  ArticlesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "articleTitle" field.
  String? _articleTitle;
  String get articleTitle => _articleTitle ?? '';
  bool hasArticleTitle() => _articleTitle != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "editedDate" field.
  DateTime? _editedDate;
  DateTime? get editedDate => _editedDate;
  bool hasEditedDate() => _editedDate != null;

  // "createdById" field.
  String? _createdById;
  String get createdById => _createdById ?? '';
  bool hasCreatedById() => _createdById != null;

  // "isFeatured" field.
  bool? _isFeatured;
  bool get isFeatured => _isFeatured ?? false;
  bool hasIsFeatured() => _isFeatured != null;

  // "articleContent" field.
  String? _articleContent;
  String get articleContent => _articleContent ?? '';
  bool hasArticleContent() => _articleContent != null;

  // "image" field.
  ArticleImageStruct? _image;
  ArticleImageStruct get image => _image ?? ArticleImageStruct();
  bool hasImage() => _image != null;

  // "authorArticle" field.
  String? _authorArticle;
  String get authorArticle => _authorArticle ?? '';
  bool hasAuthorArticle() => _authorArticle != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "articleContentArabic" field.
  String? _articleContentArabic;
  String get articleContentArabic => _articleContentArabic ?? '';
  bool hasArticleContentArabic() => _articleContentArabic != null;

  // "articleContentEnglish" field.
  String? _articleContentEnglish;
  String get articleContentEnglish => _articleContentEnglish ?? '';
  bool hasArticleContentEnglish() => _articleContentEnglish != null;

  // "articleTitleArabic" field.
  String? _articleTitleArabic;
  String get articleTitleArabic => _articleTitleArabic ?? '';
  bool hasArticleTitleArabic() => _articleTitleArabic != null;

  // "articleTitleEnglish" field.
  String? _articleTitleEnglish;
  String get articleTitleEnglish => _articleTitleEnglish ?? '';
  bool hasArticleTitleEnglish() => _articleTitleEnglish != null;

  void _initializeFields() {
    _articleTitle = snapshotData['articleTitle'] as String?;
    _description = snapshotData['description'] as String?;
    _video = snapshotData['video'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _editedDate = snapshotData['editedDate'] as DateTime?;
    _createdById = snapshotData['createdById'] as String?;
    _isFeatured = snapshotData['isFeatured'] as bool?;
    _articleContent = snapshotData['articleContent'] as String?;
    _image = ArticleImageStruct.maybeFromMap(snapshotData['image']);
    _authorArticle = snapshotData['authorArticle'] as String?;
    _link = snapshotData['link'] as String?;
    _articleContentArabic = snapshotData['articleContentArabic'] as String?;
    _articleContentEnglish = snapshotData['articleContentEnglish'] as String?;
    _articleTitleArabic = snapshotData['articleTitleArabic'] as String?;
    _articleTitleEnglish = snapshotData['articleTitleEnglish'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Articles');

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticlesRecord.fromSnapshot(s));

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticlesRecord.fromSnapshot(s));

  static ArticlesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticlesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticlesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticlesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticlesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticlesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticlesRecordData({
  String? articleTitle,
  String? description,
  String? video,
  DateTime? createdDate,
  DateTime? editedDate,
  String? createdById,
  bool? isFeatured,
  String? articleContent,
  ArticleImageStruct? image,
  String? authorArticle,
  String? link,
  String? articleContentArabic,
  String? articleContentEnglish,
  String? articleTitleArabic,
  String? articleTitleEnglish,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'articleTitle': articleTitle,
      'description': description,
      'video': video,
      'createdDate': createdDate,
      'editedDate': editedDate,
      'createdById': createdById,
      'isFeatured': isFeatured,
      'articleContent': articleContent,
      'image': ArticleImageStruct().toMap(),
      'authorArticle': authorArticle,
      'link': link,
      'articleContentArabic': articleContentArabic,
      'articleContentEnglish': articleContentEnglish,
      'articleTitleArabic': articleTitleArabic,
      'articleTitleEnglish': articleTitleEnglish,
    }.withoutNulls,
  );

  // Handle nested data for "image" field.
  addArticleImageStructData(firestoreData, image, 'image');

  return firestoreData;
}

class ArticlesRecordDocumentEquality implements Equality<ArticlesRecord> {
  const ArticlesRecordDocumentEquality();

  @override
  bool equals(ArticlesRecord? e1, ArticlesRecord? e2) {
    return e1?.articleTitle == e2?.articleTitle &&
        e1?.description == e2?.description &&
        e1?.video == e2?.video &&
        e1?.createdDate == e2?.createdDate &&
        e1?.editedDate == e2?.editedDate &&
        e1?.createdById == e2?.createdById &&
        e1?.isFeatured == e2?.isFeatured &&
        e1?.articleContent == e2?.articleContent &&
        e1?.image == e2?.image &&
        e1?.authorArticle == e2?.authorArticle &&
        e1?.link == e2?.link &&
        e1?.articleContentArabic == e2?.articleContentArabic &&
        e1?.articleContentEnglish == e2?.articleContentEnglish &&
        e1?.articleTitleArabic == e2?.articleTitleArabic &&
        e1?.articleTitleEnglish == e2?.articleTitleEnglish;
  }

  @override
  int hash(ArticlesRecord? e) => const ListEquality().hash([
        e?.articleTitle,
        e?.description,
        e?.video,
        e?.createdDate,
        e?.editedDate,
        e?.createdById,
        e?.isFeatured,
        e?.articleContent,
        e?.image,
        e?.authorArticle,
        e?.link,
        e?.articleContentArabic,
        e?.articleContentEnglish,
        e?.articleTitleArabic,
        e?.articleTitleEnglish
      ]);

  @override
  bool isValidKey(Object? o) => o is ArticlesRecord;
}
