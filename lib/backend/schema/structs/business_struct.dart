// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessStruct extends BaseStruct {
  BusinessStruct({
    int? id,
    int? ownerId,
    String? name,
    String? description,
    String? address,
    String? city,
  })  : _id = id,
        _ownerId = ownerId,
        _name = name,
        _description = description,
        _address = address,
        _city = city;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "owner_id" field.
  int? _ownerId;
  int get ownerId => _ownerId ?? 0;
  set ownerId(int? val) => _ownerId = val;

  void incrementOwnerId(int amount) => ownerId = ownerId + amount;

  bool hasOwnerId() => _ownerId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  static BusinessStruct fromMap(Map<String, dynamic> data) => BusinessStruct(
        id: castToType<int>(data['id']),
        ownerId: castToType<int>(data['owner_id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        address: data['address'] as String?,
        city: data['city'] as String?,
      );

  static BusinessStruct? maybeFromMap(dynamic data) =>
      data is Map ? BusinessStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'owner_id': _ownerId,
        'name': _name,
        'description': _description,
        'address': _address,
        'city': _city,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'owner_id': serializeParam(
          _ownerId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
      }.withoutNulls;

  static BusinessStruct fromSerializableMap(Map<String, dynamic> data) =>
      BusinessStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        ownerId: deserializeParam(
          data['owner_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BusinessStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BusinessStruct &&
        id == other.id &&
        ownerId == other.ownerId &&
        name == other.name &&
        description == other.description &&
        address == other.address &&
        city == other.city;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, ownerId, name, description, address, city]);
}

BusinessStruct createBusinessStruct({
  int? id,
  int? ownerId,
  String? name,
  String? description,
  String? address,
  String? city,
}) =>
    BusinessStruct(
      id: id,
      ownerId: ownerId,
      name: name,
      description: description,
      address: address,
      city: city,
    );
