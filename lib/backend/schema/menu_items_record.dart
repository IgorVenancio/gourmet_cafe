import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuItemsRecord extends FirestoreRecord {
  MenuItemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "productPhoto" field.
  String? _productPhoto;
  String get productPhoto => _productPhoto ?? '';
  bool hasProductPhoto() => _productPhoto != null;

  // "modifiers" field.
  List<String>? _modifiers;
  List<String> get modifiers => _modifiers ?? const [];
  bool hasModifiers() => _modifiers != null;

  // "modifiers_2" field.
  List<String>? _modifiers2;
  List<String> get modifiers2 => _modifiers2 ?? const [];
  bool hasModifiers2() => _modifiers2 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _productPhoto = snapshotData['productPhoto'] as String?;
    _modifiers = getDataList(snapshotData['modifiers']);
    _modifiers2 = getDataList(snapshotData['modifiers_2']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MenuItems');

  static Stream<MenuItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuItemsRecord.fromSnapshot(s));

  static Future<MenuItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuItemsRecord.fromSnapshot(s));

  static MenuItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuItemsRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? productPhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'productPhoto': productPhoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuItemsRecordDocumentEquality implements Equality<MenuItemsRecord> {
  const MenuItemsRecordDocumentEquality();

  @override
  bool equals(MenuItemsRecord? e1, MenuItemsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.productPhoto == e2?.productPhoto &&
        listEquality.equals(e1?.modifiers, e2?.modifiers) &&
        listEquality.equals(e1?.modifiers2, e2?.modifiers2);
  }

  @override
  int hash(MenuItemsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.productPhoto,
        e?.modifiers,
        e?.modifiers2
      ]);

  @override
  bool isValidKey(Object? o) => o is MenuItemsRecord;
}
