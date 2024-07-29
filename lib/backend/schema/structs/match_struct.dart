// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MatchStruct extends FFFirebaseStruct {
  MatchStruct({
    String? journee,
    String? stade,
    String? heure,
    DateTime? dateMatch,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _journee = journee,
        _stade = stade,
        _heure = heure,
        _dateMatch = dateMatch,
        super(firestoreUtilData);

  // "journee" field.
  String? _journee;
  String get journee => _journee ?? '';
  set journee(String? val) => _journee = val;

  bool hasJournee() => _journee != null;

  // "stade" field.
  String? _stade;
  String get stade => _stade ?? '';
  set stade(String? val) => _stade = val;

  bool hasStade() => _stade != null;

  // "heure" field.
  String? _heure;
  String get heure => _heure ?? '';
  set heure(String? val) => _heure = val;

  bool hasHeure() => _heure != null;

  // "dateMatch" field.
  DateTime? _dateMatch;
  DateTime? get dateMatch => _dateMatch;
  set dateMatch(DateTime? val) => _dateMatch = val;

  bool hasDateMatch() => _dateMatch != null;

  static MatchStruct fromMap(Map<String, dynamic> data) => MatchStruct(
        journee: data['journee'] as String?,
        stade: data['stade'] as String?,
        heure: data['heure'] as String?,
        dateMatch: data['dateMatch'] as DateTime?,
      );

  static MatchStruct? maybeFromMap(dynamic data) =>
      data is Map ? MatchStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'journee': _journee,
        'stade': _stade,
        'heure': _heure,
        'dateMatch': _dateMatch,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'journee': serializeParam(
          _journee,
          ParamType.String,
        ),
        'stade': serializeParam(
          _stade,
          ParamType.String,
        ),
        'heure': serializeParam(
          _heure,
          ParamType.String,
        ),
        'dateMatch': serializeParam(
          _dateMatch,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MatchStruct fromSerializableMap(Map<String, dynamic> data) =>
      MatchStruct(
        journee: deserializeParam(
          data['journee'],
          ParamType.String,
          false,
        ),
        stade: deserializeParam(
          data['stade'],
          ParamType.String,
          false,
        ),
        heure: deserializeParam(
          data['heure'],
          ParamType.String,
          false,
        ),
        dateMatch: deserializeParam(
          data['dateMatch'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MatchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MatchStruct &&
        journee == other.journee &&
        stade == other.stade &&
        heure == other.heure &&
        dateMatch == other.dateMatch;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([journee, stade, heure, dateMatch]);
}

MatchStruct createMatchStruct({
  String? journee,
  String? stade,
  String? heure,
  DateTime? dateMatch,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MatchStruct(
      journee: journee,
      stade: stade,
      heure: heure,
      dateMatch: dateMatch,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MatchStruct? updateMatchStruct(
  MatchStruct? match, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    match
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMatchStructData(
  Map<String, dynamic> firestoreData,
  MatchStruct? match,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (match == null) {
    return;
  }
  if (match.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && match.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final matchData = getMatchFirestoreData(match, forFieldValue);
  final nestedData = matchData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = match.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMatchFirestoreData(
  MatchStruct? match, [
  bool forFieldValue = false,
]) {
  if (match == null) {
    return {};
  }
  final firestoreData = mapToFirestore(match.toMap());

  // Add any Firestore field values
  match.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMatchListFirestoreData(
  List<MatchStruct>? matchs,
) =>
    matchs?.map((e) => getMatchFirestoreData(e, true)).toList() ?? [];
