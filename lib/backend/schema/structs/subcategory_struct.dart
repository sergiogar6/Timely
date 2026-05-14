// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubcategoryStruct extends BaseStruct {
  SubcategoryStruct({
    int? id,
    int? categoryId,
    String? name,
    String? iconUrl,
  })  : _id = id,
        _categoryId = categoryId,
        _name = name,
        _iconUrl = iconUrl;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "category_id" field.
  int? _categoryId;
  int get categoryId => _categoryId ?? 0;
  set categoryId(int? val) => _categoryId = val;

  void incrementCategoryId(int amount) => categoryId = categoryId + amount;

  bool hasCategoryId() => _categoryId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "icon_url" field.
  String? _iconUrl;
  String get iconUrl => _iconUrl ?? '';
  set iconUrl(String? val) => _iconUrl = val;

  bool hasIconUrl() => _iconUrl != null;

  static SubcategoryStruct fromMap(Map<String, dynamic> data) =>
      SubcategoryStruct(
        id: castToType<int>(data['id']),
        categoryId: castToType<int>(data['category_id']),
        name: data['name'] as String?,
        iconUrl: data['icon_url'] as String?,
      );

  static SubcategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? SubcategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'category_id': _categoryId,
        'name': _name,
        'icon_url': _iconUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'icon_url': serializeParam(
          _iconUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static SubcategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubcategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        iconUrl: deserializeParam(
          data['icon_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SubcategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubcategoryStruct &&
        id == other.id &&
        categoryId == other.categoryId &&
        name == other.name &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, categoryId, name, iconUrl]);
}

SubcategoryStruct createSubcategoryStruct({
  int? id,
  int? categoryId,
  String? name,
  String? iconUrl,
}) =>
    SubcategoryStruct(
      id: id,
      categoryId: categoryId,
      name: name,
      iconUrl: iconUrl,
    );
