import '../database.dart';

class BusinessCategoriesTable extends SupabaseTable<BusinessCategoriesRow> {
  @override
  String get tableName => 'business_categories';

  @override
  BusinessCategoriesRow createRow(Map<String, dynamic> data) =>
      BusinessCategoriesRow(data);
}

class BusinessCategoriesRow extends SupabaseDataRow {
  BusinessCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BusinessCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get businessId => getField<int>('business_id');
  set businessId(int? value) => setField<int>('business_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);
}
