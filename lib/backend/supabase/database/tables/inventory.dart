import '../database.dart';

class InventoryTable extends SupabaseTable<InventoryRow> {
  @override
  String get tableName => 'Inventory';

  @override
  InventoryRow createRow(Map<String, dynamic> data) => InventoryRow(data);
}

class InventoryRow extends SupabaseDataRow {
  InventoryRow(super.data);

  @override
  SupabaseTable get table => InventoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  double? get price => getField<double>('Price');
  set price(double? value) => setField<double>('Price', value);

  String? get photo => getField<String>('Photo');
  set photo(String? value) => setField<String>('Photo', value);

  int? get quantity => getField<int>('Quantity');
  set quantity(int? value) => setField<int>('Quantity', value);
}
