import '../database.dart';

class SubcategoriesTable extends SupabaseTable<SubcategoriesRow> {
  @override
  String get tableName => 'subcategories';

  @override
  SubcategoriesRow createRow(Map<String, dynamic> data) =>
      SubcategoriesRow(data);
}

class SubcategoriesRow extends SupabaseDataRow {
  SubcategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubcategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get iconUrl => getField<String>('icon_url');
  set iconUrl(String? value) => setField<String>('icon_url', value);
}
