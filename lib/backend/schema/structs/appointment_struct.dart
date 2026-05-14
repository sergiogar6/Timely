// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppointmentStruct extends BaseStruct {
  AppointmentStruct({
    int? id,
    int? clientId,
    int? employeeId,
    int? serviceId,
    String? startDatetime,
    String? endDatetime,
    String? status,
  })  : _id = id,
        _clientId = clientId,
        _employeeId = employeeId,
        _serviceId = serviceId,
        _startDatetime = startDatetime,
        _endDatetime = endDatetime,
        _status = status;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "client_id" field.
  int? _clientId;
  int get clientId => _clientId ?? 0;
  set clientId(int? val) => _clientId = val;

  void incrementClientId(int amount) => clientId = clientId + amount;

  bool hasClientId() => _clientId != null;

  // "employee_id" field.
  int? _employeeId;
  int get employeeId => _employeeId ?? 0;
  set employeeId(int? val) => _employeeId = val;

  void incrementEmployeeId(int amount) => employeeId = employeeId + amount;

  bool hasEmployeeId() => _employeeId != null;

  // "service_id" field.
  int? _serviceId;
  int get serviceId => _serviceId ?? 0;
  set serviceId(int? val) => _serviceId = val;

  void incrementServiceId(int amount) => serviceId = serviceId + amount;

  bool hasServiceId() => _serviceId != null;

  // "start_datetime" field.
  String? _startDatetime;
  String get startDatetime => _startDatetime ?? '';
  set startDatetime(String? val) => _startDatetime = val;

  bool hasStartDatetime() => _startDatetime != null;

  // "end_datetime" field.
  String? _endDatetime;
  String get endDatetime => _endDatetime ?? '';
  set endDatetime(String? val) => _endDatetime = val;

  bool hasEndDatetime() => _endDatetime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static AppointmentStruct fromMap(Map<String, dynamic> data) =>
      AppointmentStruct(
        id: castToType<int>(data['id']),
        clientId: castToType<int>(data['client_id']),
        employeeId: castToType<int>(data['employee_id']),
        serviceId: castToType<int>(data['service_id']),
        startDatetime: data['start_datetime'] as String?,
        endDatetime: data['end_datetime'] as String?,
        status: data['status'] as String?,
      );

  static AppointmentStruct? maybeFromMap(dynamic data) => data is Map
      ? AppointmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'client_id': _clientId,
        'employee_id': _employeeId,
        'service_id': _serviceId,
        'start_datetime': _startDatetime,
        'end_datetime': _endDatetime,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'client_id': serializeParam(
          _clientId,
          ParamType.int,
        ),
        'employee_id': serializeParam(
          _employeeId,
          ParamType.int,
        ),
        'service_id': serializeParam(
          _serviceId,
          ParamType.int,
        ),
        'start_datetime': serializeParam(
          _startDatetime,
          ParamType.String,
        ),
        'end_datetime': serializeParam(
          _endDatetime,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static AppointmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      AppointmentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        clientId: deserializeParam(
          data['client_id'],
          ParamType.int,
          false,
        ),
        employeeId: deserializeParam(
          data['employee_id'],
          ParamType.int,
          false,
        ),
        serviceId: deserializeParam(
          data['service_id'],
          ParamType.int,
          false,
        ),
        startDatetime: deserializeParam(
          data['start_datetime'],
          ParamType.String,
          false,
        ),
        endDatetime: deserializeParam(
          data['end_datetime'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AppointmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppointmentStruct &&
        id == other.id &&
        clientId == other.clientId &&
        employeeId == other.employeeId &&
        serviceId == other.serviceId &&
        startDatetime == other.startDatetime &&
        endDatetime == other.endDatetime &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        clientId,
        employeeId,
        serviceId,
        startDatetime,
        endDatetime,
        status
      ]);
}

AppointmentStruct createAppointmentStruct({
  int? id,
  int? clientId,
  int? employeeId,
  int? serviceId,
  String? startDatetime,
  String? endDatetime,
  String? status,
}) =>
    AppointmentStruct(
      id: id,
      clientId: clientId,
      employeeId: employeeId,
      serviceId: serviceId,
      startDatetime: startDatetime,
      endDatetime: endDatetime,
      status: status,
    );
