// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultatsStruct extends FFFirebaseStruct {
  ResultatsStruct({
    int? scoreTeamA,
    int? scoreTeamB,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _scoreTeamA = scoreTeamA,
        _scoreTeamB = scoreTeamB,
        super(firestoreUtilData);

  // "scoreTeamA" field.
  int? _scoreTeamA;
  int get scoreTeamA => _scoreTeamA ?? 0;
  set scoreTeamA(int? val) => _scoreTeamA = val;
  void incrementScoreTeamA(int amount) => _scoreTeamA = scoreTeamA + amount;
  bool hasScoreTeamA() => _scoreTeamA != null;

  // "scoreTeamB" field.
  int? _scoreTeamB;
  int get scoreTeamB => _scoreTeamB ?? 0;
  set scoreTeamB(int? val) => _scoreTeamB = val;
  void incrementScoreTeamB(int amount) => _scoreTeamB = scoreTeamB + amount;
  bool hasScoreTeamB() => _scoreTeamB != null;

  static ResultatsStruct fromMap(Map<String, dynamic> data) => ResultatsStruct(
        scoreTeamA: castToType<int>(data['scoreTeamA']),
        scoreTeamB: castToType<int>(data['scoreTeamB']),
      );

  static ResultatsStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'scoreTeamA': _scoreTeamA,
        'scoreTeamB': _scoreTeamB,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'scoreTeamA': serializeParam(
          _scoreTeamA,
          ParamType.int,
        ),
        'scoreTeamB': serializeParam(
          _scoreTeamB,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResultatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultatsStruct(
        scoreTeamA: deserializeParam(
          data['scoreTeamA'],
          ParamType.int,
          false,
        ),
        scoreTeamB: deserializeParam(
          data['scoreTeamB'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResultatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultatsStruct &&
        scoreTeamA == other.scoreTeamA &&
        scoreTeamB == other.scoreTeamB;
  }

  @override
  int get hashCode => const ListEquality().hash([scoreTeamA, scoreTeamB]);
}

ResultatsStruct createResultatsStruct({
  int? scoreTeamA,
  int? scoreTeamB,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResultatsStruct(
      scoreTeamA: scoreTeamA,
      scoreTeamB: scoreTeamB,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResultatsStruct? updateResultatsStruct(
  ResultatsStruct? resultats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    resultats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResultatsStructData(
  Map<String, dynamic> firestoreData,
  ResultatsStruct? resultats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resultats == null) {
    return;
  }
  if (resultats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && resultats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resultatsData = getResultatsFirestoreData(resultats, forFieldValue);
  final nestedData = resultatsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = resultats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResultatsFirestoreData(
  ResultatsStruct? resultats, [
  bool forFieldValue = false,
]) {
  if (resultats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resultats.toMap());

  // Add any Firestore field values
  resultats.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResultatsListFirestoreData(
  List<ResultatsStruct>? resultatss,
) =>
    resultatss?.map((e) => getResultatsFirestoreData(e, true)).toList() ?? [];
