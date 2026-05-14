import '../database.dart';

class ServicesTable extends SupabaseTable<ServicesRow> {
  @override
  String get tableName => 'services';

  @override
  ServicesRow createRow(Map<String, dynamic> data) => ServicesRow(data);
}

class ServicesRow extends SupabaseDataRow {
  ServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get businessId => getField<int>('business_id');
  set businessId(int? value) => setField<int>('business_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get duration => getField<int>('duration');
  set duration(int? value) => setField<int>('duration', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);
}
