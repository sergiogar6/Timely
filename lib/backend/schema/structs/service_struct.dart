// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceStruct extends BaseStruct {
  ServiceStruct({
    int? id,
    int? businessId,
    String? name,
    String? description,
    int? duration,
    double? price,
  })  : _id = id,
        _businessId = businessId,
        _name = name,
        _description = description,
        _duration = duration,
        _price = price;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "business_id" field.
  int? _businessId;
  int get businessId => _businessId ?? 0;
  set businessId(int? val) => _businessId = val;

  void incrementBusinessId(int amount) => businessId = businessId + amount;

  bool hasBusinessId() => _businessId != null;

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

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static ServiceStruct fromMap(Map<String, dynamic> data) => ServiceStruct(
        id: castToType<int>(data['id']),
        businessId: castToType<int>(data['business_id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        duration: castToType<int>(data['duration']),
        price: castToType<double>(data['price']),
      );

  static ServiceStruct? maybeFromMap(dynamic data) =>
      data is Map ? ServiceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'business_id': _businessId,
        'name': _name,
        'description': _description,
        'duration': _duration,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'business_id': serializeParam(
          _businessId,
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
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ServiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServiceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        businessId: deserializeParam(
          data['business_id'],
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
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ServiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceStruct &&
        id == other.id &&
        businessId == other.businessId &&
        name == other.name &&
        description == other.description &&
        duration == other.duration &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, businessId, name, description, duration, price]);
}

ServiceStruct createServiceStruct({
  int? id,
  int? businessId,
  String? name,
  String? description,
  int? duration,
  double? price,
}) =>
    ServiceStruct(
      id: id,
      businessId: businessId,
      name: name,
      description: description,
      duration: duration,
      price: price,
    );
