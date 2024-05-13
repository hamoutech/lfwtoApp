// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EquipesStruct extends FFFirebaseStruct {
  EquipesStruct({
    String? nomEquipe,
    String? logo,
    String? division,
    String? categorie,
    String? miniCategorie,
    String? nameAbreviation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomEquipe = nomEquipe,
        _logo = logo,
        _division = division,
        _categorie = categorie,
        _miniCategorie = miniCategorie,
        _nameAbreviation = nameAbreviation,
        super(firestoreUtilData);

  // "nomEquipe" field.
  String? _nomEquipe;
  String get nomEquipe => _nomEquipe ?? '';
  set nomEquipe(String? val) => _nomEquipe = val;
  bool hasNomEquipe() => _nomEquipe != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "division" field.
  String? _division;
  String get division => _division ?? '';
  set division(String? val) => _division = val;
  bool hasDivision() => _division != null;

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  set categorie(String? val) => _categorie = val;
  bool hasCategorie() => _categorie != null;

  // "miniCategorie" field.
  String? _miniCategorie;
  String get miniCategorie => _miniCategorie ?? '';
  set miniCategorie(String? val) => _miniCategorie = val;
  bool hasMiniCategorie() => _miniCategorie != null;

  // "nameAbreviation" field.
  String? _nameAbreviation;
  String get nameAbreviation => _nameAbreviation ?? '';
  set nameAbreviation(String? val) => _nameAbreviation = val;
  bool hasNameAbreviation() => _nameAbreviation != null;

  static EquipesStruct fromMap(Map<String, dynamic> data) => EquipesStruct(
        nomEquipe: data['nomEquipe'] as String?,
        logo: data['logo'] as String?,
        division: data['division'] as String?,
        categorie: data['categorie'] as String?,
        miniCategorie: data['miniCategorie'] as String?,
        nameAbreviation: data['nameAbreviation'] as String?,
      );

  static EquipesStruct? maybeFromMap(dynamic data) =>
      data is Map ? EquipesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nomEquipe': _nomEquipe,
        'logo': _logo,
        'division': _division,
        'categorie': _categorie,
        'miniCategorie': _miniCategorie,
        'nameAbreviation': _nameAbreviation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nomEquipe': serializeParam(
          _nomEquipe,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'division': serializeParam(
          _division,
          ParamType.String,
        ),
        'categorie': serializeParam(
          _categorie,
          ParamType.String,
        ),
        'miniCategorie': serializeParam(
          _miniCategorie,
          ParamType.String,
        ),
        'nameAbreviation': serializeParam(
          _nameAbreviation,
          ParamType.String,
        ),
      }.withoutNulls;

  static EquipesStruct fromSerializableMap(Map<String, dynamic> data) =>
      EquipesStruct(
        nomEquipe: deserializeParam(
          data['nomEquipe'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        division: deserializeParam(
          data['division'],
          ParamType.String,
          false,
        ),
        categorie: deserializeParam(
          data['categorie'],
          ParamType.String,
          false,
        ),
        miniCategorie: deserializeParam(
          data['miniCategorie'],
          ParamType.String,
          false,
        ),
        nameAbreviation: deserializeParam(
          data['nameAbreviation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EquipesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EquipesStruct &&
        nomEquipe == other.nomEquipe &&
        logo == other.logo &&
        division == other.division &&
        categorie == other.categorie &&
        miniCategorie == other.miniCategorie &&
        nameAbreviation == other.nameAbreviation;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [nomEquipe, logo, division, categorie, miniCategorie, nameAbreviation]);
}

EquipesStruct createEquipesStruct({
  String? nomEquipe,
  String? logo,
  String? division,
  String? categorie,
  String? miniCategorie,
  String? nameAbreviation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EquipesStruct(
      nomEquipe: nomEquipe,
      logo: logo,
      division: division,
      categorie: categorie,
      miniCategorie: miniCategorie,
      nameAbreviation: nameAbreviation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EquipesStruct? updateEquipesStruct(
  EquipesStruct? equipes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    equipes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEquipesStructData(
  Map<String, dynamic> firestoreData,
  EquipesStruct? equipes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (equipes == null) {
    return;
  }
  if (equipes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && equipes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final equipesData = getEquipesFirestoreData(equipes, forFieldValue);
  final nestedData = equipesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = equipes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEquipesFirestoreData(
  EquipesStruct? equipes, [
  bool forFieldValue = false,
]) {
  if (equipes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(equipes.toMap());

  // Add any Firestore field values
  equipes.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEquipesListFirestoreData(
  List<EquipesStruct>? equipess,
) =>
    equipess?.map((e) => getEquipesFirestoreData(e, true)).toList() ?? [];
