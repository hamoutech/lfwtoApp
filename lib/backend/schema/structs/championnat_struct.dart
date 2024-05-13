// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChampionnatStruct extends FFFirebaseStruct {
  ChampionnatStruct({
    int? classement,
    int? matchJoue,
    int? butPour,
    int? butContre,
    int? diff,
    int? points,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _classement = classement,
        _matchJoue = matchJoue,
        _butPour = butPour,
        _butContre = butContre,
        _diff = diff,
        _points = points,
        super(firestoreUtilData);

  // "classement" field.
  int? _classement;
  int get classement => _classement ?? 0;
  set classement(int? val) => _classement = val;
  void incrementClassement(int amount) => _classement = classement + amount;
  bool hasClassement() => _classement != null;

  // "match-joue" field.
  int? _matchJoue;
  int get matchJoue => _matchJoue ?? 0;
  set matchJoue(int? val) => _matchJoue = val;
  void incrementMatchJoue(int amount) => _matchJoue = matchJoue + amount;
  bool hasMatchJoue() => _matchJoue != null;

  // "but-pour" field.
  int? _butPour;
  int get butPour => _butPour ?? 0;
  set butPour(int? val) => _butPour = val;
  void incrementButPour(int amount) => _butPour = butPour + amount;
  bool hasButPour() => _butPour != null;

  // "but-contre" field.
  int? _butContre;
  int get butContre => _butContre ?? 0;
  set butContre(int? val) => _butContre = val;
  void incrementButContre(int amount) => _butContre = butContre + amount;
  bool hasButContre() => _butContre != null;

  // "diff" field.
  int? _diff;
  int get diff => _diff ?? 0;
  set diff(int? val) => _diff = val;
  void incrementDiff(int amount) => _diff = diff + amount;
  bool hasDiff() => _diff != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  set points(int? val) => _points = val;
  void incrementPoints(int amount) => _points = points + amount;
  bool hasPoints() => _points != null;

  static ChampionnatStruct fromMap(Map<String, dynamic> data) =>
      ChampionnatStruct(
        classement: castToType<int>(data['classement']),
        matchJoue: castToType<int>(data['match-joue']),
        butPour: castToType<int>(data['but-pour']),
        butContre: castToType<int>(data['but-contre']),
        diff: castToType<int>(data['diff']),
        points: castToType<int>(data['points']),
      );

  static ChampionnatStruct? maybeFromMap(dynamic data) => data is Map
      ? ChampionnatStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'classement': _classement,
        'match-joue': _matchJoue,
        'but-pour': _butPour,
        'but-contre': _butContre,
        'diff': _diff,
        'points': _points,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'classement': serializeParam(
          _classement,
          ParamType.int,
        ),
        'match-joue': serializeParam(
          _matchJoue,
          ParamType.int,
        ),
        'but-pour': serializeParam(
          _butPour,
          ParamType.int,
        ),
        'but-contre': serializeParam(
          _butContre,
          ParamType.int,
        ),
        'diff': serializeParam(
          _diff,
          ParamType.int,
        ),
        'points': serializeParam(
          _points,
          ParamType.int,
        ),
      }.withoutNulls;

  static ChampionnatStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChampionnatStruct(
        classement: deserializeParam(
          data['classement'],
          ParamType.int,
          false,
        ),
        matchJoue: deserializeParam(
          data['match-joue'],
          ParamType.int,
          false,
        ),
        butPour: deserializeParam(
          data['but-pour'],
          ParamType.int,
          false,
        ),
        butContre: deserializeParam(
          data['but-contre'],
          ParamType.int,
          false,
        ),
        diff: deserializeParam(
          data['diff'],
          ParamType.int,
          false,
        ),
        points: deserializeParam(
          data['points'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ChampionnatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChampionnatStruct &&
        classement == other.classement &&
        matchJoue == other.matchJoue &&
        butPour == other.butPour &&
        butContre == other.butContre &&
        diff == other.diff &&
        points == other.points;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([classement, matchJoue, butPour, butContre, diff, points]);
}

ChampionnatStruct createChampionnatStruct({
  int? classement,
  int? matchJoue,
  int? butPour,
  int? butContre,
  int? diff,
  int? points,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChampionnatStruct(
      classement: classement,
      matchJoue: matchJoue,
      butPour: butPour,
      butContre: butContre,
      diff: diff,
      points: points,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChampionnatStruct? updateChampionnatStruct(
  ChampionnatStruct? championnat, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    championnat
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChampionnatStructData(
  Map<String, dynamic> firestoreData,
  ChampionnatStruct? championnat,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (championnat == null) {
    return;
  }
  if (championnat.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && championnat.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final championnatData =
      getChampionnatFirestoreData(championnat, forFieldValue);
  final nestedData =
      championnatData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = championnat.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChampionnatFirestoreData(
  ChampionnatStruct? championnat, [
  bool forFieldValue = false,
]) {
  if (championnat == null) {
    return {};
  }
  final firestoreData = mapToFirestore(championnat.toMap());

  // Add any Firestore field values
  championnat.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChampionnatListFirestoreData(
  List<ChampionnatStruct>? championnats,
) =>
    championnats?.map((e) => getChampionnatFirestoreData(e, true)).toList() ??
    [];
