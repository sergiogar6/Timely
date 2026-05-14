import '../database.dart';

class AppointmentsTable extends SupabaseTable<AppointmentsRow> {
  @override
  String get tableName => 'appointments';

  @override
  AppointmentsRow createRow(Map<String, dynamic> data) => AppointmentsRow(data);
}

class AppointmentsRow extends SupabaseDataRow {
  AppointmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppointmentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  int? get employeeId => getField<int>('employee_id');
  set employeeId(int? value) => setField<int>('employee_id', value);

  int? get serviceId => getField<int>('service_id');
  set serviceId(int? value) => setField<int>('service_id', value);

  DateTime? get startDatetime => getField<DateTime>('start_datetime');
  set startDatetime(DateTime? value) =>
      setField<DateTime>('start_datetime', value);

  DateTime? get endDatetime => getField<DateTime>('end_datetime');
  set endDatetime(DateTime? value) => setField<DateTime>('end_datetime', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
