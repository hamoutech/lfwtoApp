// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ArticleImageStruct extends FFFirebaseStruct {
  ArticleImageStruct({
    String? path,
    String? hash,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _path = path,
        _hash = hash,
        super(firestoreUtilData);

  // "path" field.
  String? _path;
  String get path => _path ?? '';
  set path(String? val) => _path = val;

  bool hasPath() => _path != null;

  // "hash" field.
  String? _hash;
  String get hash => _hash ?? '';
  set hash(String? val) => _hash = val;

  bool hasHash() => _hash != null;

  static ArticleImageStruct fromMap(Map<String, dynamic> data) =>
      ArticleImageStruct(
        path: data['path'] as String?,
        hash: data['hash'] as String?,
      );

  static ArticleImageStruct? maybeFromMap(dynamic data) => data is Map
      ? ArticleImageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'path': _path,
        'hash': _hash,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'path': serializeParam(
          _path,
          ParamType.String,
        ),
        'hash': serializeParam(
          _hash,
          ParamType.String,
        ),
      }.withoutNulls;

  static ArticleImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ArticleImageStruct(
        path: deserializeParam(
          data['path'],
          ParamType.String,
          false,
        ),
        hash: deserializeParam(
          data['hash'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ArticleImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ArticleImageStruct &&
        path == other.path &&
        hash == other.hash;
  }

  @override
  int get hashCode => const ListEquality().hash([path, hash]);
}

ArticleImageStruct createArticleImageStruct({
  String? path,
  String? hash,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ArticleImageStruct(
      path: path,
      hash: hash,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ArticleImageStruct? updateArticleImageStruct(
  ArticleImageStruct? articleImage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    articleImage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addArticleImageStructData(
  Map<String, dynamic> firestoreData,
  ArticleImageStruct? articleImage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (articleImage == null) {
    return;
  }
  if (articleImage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && articleImage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final articleImageData =
      getArticleImageFirestoreData(articleImage, forFieldValue);
  final nestedData =
      articleImageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = articleImage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getArticleImageFirestoreData(
  ArticleImageStruct? articleImage, [
  bool forFieldValue = false,
]) {
  if (articleImage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(articleImage.toMap());

  // Add any Firestore field values
  articleImage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getArticleImageListFirestoreData(
  List<ArticleImageStruct>? articleImages,
) =>
    articleImages?.map((e) => getArticleImageFirestoreData(e, true)).toList() ??
    [];
