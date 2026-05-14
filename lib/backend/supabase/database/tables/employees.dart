import '../database.dart';

class EmployeesTable extends SupabaseTable<EmployeesRow> {
  @override
  String get tableName => 'employees';

  @override
  EmployeesRow createRow(Map<String, dynamic> data) => EmployeesRow(data);
}

class EmployeesRow extends SupabaseDataRow {
  EmployeesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmployeesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get businessId => getField<int>('business_id');
  set businessId(int? value) => setField<int>('business_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);
}
