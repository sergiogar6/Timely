import '../database.dart';

class BusinessesTable extends SupabaseTable<BusinessesRow> {
  @override
  String get tableName => 'businesses';

  @override
  BusinessesRow createRow(Map<String, dynamic> data) => BusinessesRow(data);
}

class BusinessesRow extends SupabaseDataRow {
  BusinessesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BusinessesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get ownerId => getField<int>('owner_id');
  set ownerId(int? value) => setField<int>('owner_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get adress => getField<String>('adress');
  set adress(String? value) => setField<String>('adress', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);
}
