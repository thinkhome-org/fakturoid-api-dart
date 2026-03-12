// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItem {

 int? get id; String get name; String? get sku;@JsonKey(name: 'article_number_type') ArticleNumberType? get articleNumberType;@JsonKey(name: 'article_number') String? get articleNumber;@JsonKey(name: 'unit_name') String? get unitName;@JsonKey(name: 'track_quantity') bool? get trackQuantity; String? get quantity;@JsonKey(name: 'min_quantity') String? get minQuantity;@JsonKey(name: 'max_quantity') String? get maxQuantity;@JsonKey(name: 'allow_below_zero') bool? get allowBelowZero;@JsonKey(name: 'low_quantity_date') String? get lowQuantityDate;@JsonKey(name: 'native_purchase_price') String? get nativePurchasePrice;@JsonKey(name: 'native_retail_price') String? get nativeRetailPrice;@JsonKey(name: 'vat_rate') VatRateType? get vatRate;@JsonKey(name: 'average_native_purchase_price') String? get averageNativePurchasePrice;@JsonKey(name: 'supply_type') SupplyType? get supplyType; bool? get archived;@JsonKey(name: 'private_note') String? get privateNote;@JsonKey(name: 'suggest_for') ItemSuggestFor? get suggestFor;// Note: retail_prices are omitted for simplicity unless heavily needed, 
// but typically they are passed as a List of custom objects.
@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemCopyWith<InventoryItem> get copyWith => _$InventoryItemCopyWithImpl<InventoryItem>(this as InventoryItem, _$identity);

  /// Serializes this InventoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.articleNumberType, articleNumberType) || other.articleNumberType == articleNumberType)&&(identical(other.articleNumber, articleNumber) || other.articleNumber == articleNumber)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.trackQuantity, trackQuantity) || other.trackQuantity == trackQuantity)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity)&&(identical(other.allowBelowZero, allowBelowZero) || other.allowBelowZero == allowBelowZero)&&(identical(other.lowQuantityDate, lowQuantityDate) || other.lowQuantityDate == lowQuantityDate)&&(identical(other.nativePurchasePrice, nativePurchasePrice) || other.nativePurchasePrice == nativePurchasePrice)&&(identical(other.nativeRetailPrice, nativeRetailPrice) || other.nativeRetailPrice == nativeRetailPrice)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.averageNativePurchasePrice, averageNativePurchasePrice) || other.averageNativePurchasePrice == averageNativePurchasePrice)&&(identical(other.supplyType, supplyType) || other.supplyType == supplyType)&&(identical(other.archived, archived) || other.archived == archived)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&(identical(other.suggestFor, suggestFor) || other.suggestFor == suggestFor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,sku,articleNumberType,articleNumber,unitName,trackQuantity,quantity,minQuantity,maxQuantity,allowBelowZero,lowQuantityDate,nativePurchasePrice,nativeRetailPrice,vatRate,averageNativePurchasePrice,supplyType,archived,privateNote,suggestFor,createdAt,updatedAt]);

@override
String toString() {
  return 'InventoryItem(id: $id, name: $name, sku: $sku, articleNumberType: $articleNumberType, articleNumber: $articleNumber, unitName: $unitName, trackQuantity: $trackQuantity, quantity: $quantity, minQuantity: $minQuantity, maxQuantity: $maxQuantity, allowBelowZero: $allowBelowZero, lowQuantityDate: $lowQuantityDate, nativePurchasePrice: $nativePurchasePrice, nativeRetailPrice: $nativeRetailPrice, vatRate: $vatRate, averageNativePurchasePrice: $averageNativePurchasePrice, supplyType: $supplyType, archived: $archived, privateNote: $privateNote, suggestFor: $suggestFor, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InventoryItemCopyWith<$Res>  {
  factory $InventoryItemCopyWith(InventoryItem value, $Res Function(InventoryItem) _then) = _$InventoryItemCopyWithImpl;
@useResult
$Res call({
 int? id, String name, String? sku,@JsonKey(name: 'article_number_type') ArticleNumberType? articleNumberType,@JsonKey(name: 'article_number') String? articleNumber,@JsonKey(name: 'unit_name') String? unitName,@JsonKey(name: 'track_quantity') bool? trackQuantity, String? quantity,@JsonKey(name: 'min_quantity') String? minQuantity,@JsonKey(name: 'max_quantity') String? maxQuantity,@JsonKey(name: 'allow_below_zero') bool? allowBelowZero,@JsonKey(name: 'low_quantity_date') String? lowQuantityDate,@JsonKey(name: 'native_purchase_price') String? nativePurchasePrice,@JsonKey(name: 'native_retail_price') String? nativeRetailPrice,@JsonKey(name: 'vat_rate') VatRateType? vatRate,@JsonKey(name: 'average_native_purchase_price') String? averageNativePurchasePrice,@JsonKey(name: 'supply_type') SupplyType? supplyType, bool? archived,@JsonKey(name: 'private_note') String? privateNote,@JsonKey(name: 'suggest_for') ItemSuggestFor? suggestFor,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$InventoryItemCopyWithImpl<$Res>
    implements $InventoryItemCopyWith<$Res> {
  _$InventoryItemCopyWithImpl(this._self, this._then);

  final InventoryItem _self;
  final $Res Function(InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? sku = freezed,Object? articleNumberType = freezed,Object? articleNumber = freezed,Object? unitName = freezed,Object? trackQuantity = freezed,Object? quantity = freezed,Object? minQuantity = freezed,Object? maxQuantity = freezed,Object? allowBelowZero = freezed,Object? lowQuantityDate = freezed,Object? nativePurchasePrice = freezed,Object? nativeRetailPrice = freezed,Object? vatRate = freezed,Object? averageNativePurchasePrice = freezed,Object? supplyType = freezed,Object? archived = freezed,Object? privateNote = freezed,Object? suggestFor = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,articleNumberType: freezed == articleNumberType ? _self.articleNumberType : articleNumberType // ignore: cast_nullable_to_non_nullable
as ArticleNumberType?,articleNumber: freezed == articleNumber ? _self.articleNumber : articleNumber // ignore: cast_nullable_to_non_nullable
as String?,unitName: freezed == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String?,trackQuantity: freezed == trackQuantity ? _self.trackQuantity : trackQuantity // ignore: cast_nullable_to_non_nullable
as bool?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,minQuantity: freezed == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as String?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as String?,allowBelowZero: freezed == allowBelowZero ? _self.allowBelowZero : allowBelowZero // ignore: cast_nullable_to_non_nullable
as bool?,lowQuantityDate: freezed == lowQuantityDate ? _self.lowQuantityDate : lowQuantityDate // ignore: cast_nullable_to_non_nullable
as String?,nativePurchasePrice: freezed == nativePurchasePrice ? _self.nativePurchasePrice : nativePurchasePrice // ignore: cast_nullable_to_non_nullable
as String?,nativeRetailPrice: freezed == nativeRetailPrice ? _self.nativeRetailPrice : nativeRetailPrice // ignore: cast_nullable_to_non_nullable
as String?,vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as VatRateType?,averageNativePurchasePrice: freezed == averageNativePurchasePrice ? _self.averageNativePurchasePrice : averageNativePurchasePrice // ignore: cast_nullable_to_non_nullable
as String?,supplyType: freezed == supplyType ? _self.supplyType : supplyType // ignore: cast_nullable_to_non_nullable
as SupplyType?,archived: freezed == archived ? _self.archived : archived // ignore: cast_nullable_to_non_nullable
as bool?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,suggestFor: freezed == suggestFor ? _self.suggestFor : suggestFor // ignore: cast_nullable_to_non_nullable
as ItemSuggestFor?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItem].
extension InventoryItemPatterns on InventoryItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItem value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  String? sku, @JsonKey(name: 'article_number_type')  ArticleNumberType? articleNumberType, @JsonKey(name: 'article_number')  String? articleNumber, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'track_quantity')  bool? trackQuantity,  String? quantity, @JsonKey(name: 'min_quantity')  String? minQuantity, @JsonKey(name: 'max_quantity')  String? maxQuantity, @JsonKey(name: 'allow_below_zero')  bool? allowBelowZero, @JsonKey(name: 'low_quantity_date')  String? lowQuantityDate, @JsonKey(name: 'native_purchase_price')  String? nativePurchasePrice, @JsonKey(name: 'native_retail_price')  String? nativeRetailPrice, @JsonKey(name: 'vat_rate')  VatRateType? vatRate, @JsonKey(name: 'average_native_purchase_price')  String? averageNativePurchasePrice, @JsonKey(name: 'supply_type')  SupplyType? supplyType,  bool? archived, @JsonKey(name: 'private_note')  String? privateNote, @JsonKey(name: 'suggest_for')  ItemSuggestFor? suggestFor, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.name,_that.sku,_that.articleNumberType,_that.articleNumber,_that.unitName,_that.trackQuantity,_that.quantity,_that.minQuantity,_that.maxQuantity,_that.allowBelowZero,_that.lowQuantityDate,_that.nativePurchasePrice,_that.nativeRetailPrice,_that.vatRate,_that.averageNativePurchasePrice,_that.supplyType,_that.archived,_that.privateNote,_that.suggestFor,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  String? sku, @JsonKey(name: 'article_number_type')  ArticleNumberType? articleNumberType, @JsonKey(name: 'article_number')  String? articleNumber, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'track_quantity')  bool? trackQuantity,  String? quantity, @JsonKey(name: 'min_quantity')  String? minQuantity, @JsonKey(name: 'max_quantity')  String? maxQuantity, @JsonKey(name: 'allow_below_zero')  bool? allowBelowZero, @JsonKey(name: 'low_quantity_date')  String? lowQuantityDate, @JsonKey(name: 'native_purchase_price')  String? nativePurchasePrice, @JsonKey(name: 'native_retail_price')  String? nativeRetailPrice, @JsonKey(name: 'vat_rate')  VatRateType? vatRate, @JsonKey(name: 'average_native_purchase_price')  String? averageNativePurchasePrice, @JsonKey(name: 'supply_type')  SupplyType? supplyType,  bool? archived, @JsonKey(name: 'private_note')  String? privateNote, @JsonKey(name: 'suggest_for')  ItemSuggestFor? suggestFor, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryItem():
return $default(_that.id,_that.name,_that.sku,_that.articleNumberType,_that.articleNumber,_that.unitName,_that.trackQuantity,_that.quantity,_that.minQuantity,_that.maxQuantity,_that.allowBelowZero,_that.lowQuantityDate,_that.nativePurchasePrice,_that.nativeRetailPrice,_that.vatRate,_that.averageNativePurchasePrice,_that.supplyType,_that.archived,_that.privateNote,_that.suggestFor,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  String? sku, @JsonKey(name: 'article_number_type')  ArticleNumberType? articleNumberType, @JsonKey(name: 'article_number')  String? articleNumber, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'track_quantity')  bool? trackQuantity,  String? quantity, @JsonKey(name: 'min_quantity')  String? minQuantity, @JsonKey(name: 'max_quantity')  String? maxQuantity, @JsonKey(name: 'allow_below_zero')  bool? allowBelowZero, @JsonKey(name: 'low_quantity_date')  String? lowQuantityDate, @JsonKey(name: 'native_purchase_price')  String? nativePurchasePrice, @JsonKey(name: 'native_retail_price')  String? nativeRetailPrice, @JsonKey(name: 'vat_rate')  VatRateType? vatRate, @JsonKey(name: 'average_native_purchase_price')  String? averageNativePurchasePrice, @JsonKey(name: 'supply_type')  SupplyType? supplyType,  bool? archived, @JsonKey(name: 'private_note')  String? privateNote, @JsonKey(name: 'suggest_for')  ItemSuggestFor? suggestFor, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.name,_that.sku,_that.articleNumberType,_that.articleNumber,_that.unitName,_that.trackQuantity,_that.quantity,_that.minQuantity,_that.maxQuantity,_that.allowBelowZero,_that.lowQuantityDate,_that.nativePurchasePrice,_that.nativeRetailPrice,_that.vatRate,_that.averageNativePurchasePrice,_that.supplyType,_that.archived,_that.privateNote,_that.suggestFor,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItem implements InventoryItem {
  const _InventoryItem({this.id, required this.name, this.sku, @JsonKey(name: 'article_number_type') this.articleNumberType, @JsonKey(name: 'article_number') this.articleNumber, @JsonKey(name: 'unit_name') this.unitName, @JsonKey(name: 'track_quantity') this.trackQuantity, this.quantity, @JsonKey(name: 'min_quantity') this.minQuantity, @JsonKey(name: 'max_quantity') this.maxQuantity, @JsonKey(name: 'allow_below_zero') this.allowBelowZero, @JsonKey(name: 'low_quantity_date') this.lowQuantityDate, @JsonKey(name: 'native_purchase_price') this.nativePurchasePrice, @JsonKey(name: 'native_retail_price') this.nativeRetailPrice, @JsonKey(name: 'vat_rate') this.vatRate, @JsonKey(name: 'average_native_purchase_price') this.averageNativePurchasePrice, @JsonKey(name: 'supply_type') this.supplyType, this.archived, @JsonKey(name: 'private_note') this.privateNote, @JsonKey(name: 'suggest_for') this.suggestFor, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _InventoryItem.fromJson(Map<String, dynamic> json) => _$InventoryItemFromJson(json);

@override final  int? id;
@override final  String name;
@override final  String? sku;
@override@JsonKey(name: 'article_number_type') final  ArticleNumberType? articleNumberType;
@override@JsonKey(name: 'article_number') final  String? articleNumber;
@override@JsonKey(name: 'unit_name') final  String? unitName;
@override@JsonKey(name: 'track_quantity') final  bool? trackQuantity;
@override final  String? quantity;
@override@JsonKey(name: 'min_quantity') final  String? minQuantity;
@override@JsonKey(name: 'max_quantity') final  String? maxQuantity;
@override@JsonKey(name: 'allow_below_zero') final  bool? allowBelowZero;
@override@JsonKey(name: 'low_quantity_date') final  String? lowQuantityDate;
@override@JsonKey(name: 'native_purchase_price') final  String? nativePurchasePrice;
@override@JsonKey(name: 'native_retail_price') final  String? nativeRetailPrice;
@override@JsonKey(name: 'vat_rate') final  VatRateType? vatRate;
@override@JsonKey(name: 'average_native_purchase_price') final  String? averageNativePurchasePrice;
@override@JsonKey(name: 'supply_type') final  SupplyType? supplyType;
@override final  bool? archived;
@override@JsonKey(name: 'private_note') final  String? privateNote;
@override@JsonKey(name: 'suggest_for') final  ItemSuggestFor? suggestFor;
// Note: retail_prices are omitted for simplicity unless heavily needed, 
// but typically they are passed as a List of custom objects.
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemCopyWith<_InventoryItem> get copyWith => __$InventoryItemCopyWithImpl<_InventoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.articleNumberType, articleNumberType) || other.articleNumberType == articleNumberType)&&(identical(other.articleNumber, articleNumber) || other.articleNumber == articleNumber)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.trackQuantity, trackQuantity) || other.trackQuantity == trackQuantity)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity)&&(identical(other.allowBelowZero, allowBelowZero) || other.allowBelowZero == allowBelowZero)&&(identical(other.lowQuantityDate, lowQuantityDate) || other.lowQuantityDate == lowQuantityDate)&&(identical(other.nativePurchasePrice, nativePurchasePrice) || other.nativePurchasePrice == nativePurchasePrice)&&(identical(other.nativeRetailPrice, nativeRetailPrice) || other.nativeRetailPrice == nativeRetailPrice)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.averageNativePurchasePrice, averageNativePurchasePrice) || other.averageNativePurchasePrice == averageNativePurchasePrice)&&(identical(other.supplyType, supplyType) || other.supplyType == supplyType)&&(identical(other.archived, archived) || other.archived == archived)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&(identical(other.suggestFor, suggestFor) || other.suggestFor == suggestFor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,sku,articleNumberType,articleNumber,unitName,trackQuantity,quantity,minQuantity,maxQuantity,allowBelowZero,lowQuantityDate,nativePurchasePrice,nativeRetailPrice,vatRate,averageNativePurchasePrice,supplyType,archived,privateNote,suggestFor,createdAt,updatedAt]);

@override
String toString() {
  return 'InventoryItem(id: $id, name: $name, sku: $sku, articleNumberType: $articleNumberType, articleNumber: $articleNumber, unitName: $unitName, trackQuantity: $trackQuantity, quantity: $quantity, minQuantity: $minQuantity, maxQuantity: $maxQuantity, allowBelowZero: $allowBelowZero, lowQuantityDate: $lowQuantityDate, nativePurchasePrice: $nativePurchasePrice, nativeRetailPrice: $nativeRetailPrice, vatRate: $vatRate, averageNativePurchasePrice: $averageNativePurchasePrice, supplyType: $supplyType, archived: $archived, privateNote: $privateNote, suggestFor: $suggestFor, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemCopyWith<$Res> implements $InventoryItemCopyWith<$Res> {
  factory _$InventoryItemCopyWith(_InventoryItem value, $Res Function(_InventoryItem) _then) = __$InventoryItemCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, String? sku,@JsonKey(name: 'article_number_type') ArticleNumberType? articleNumberType,@JsonKey(name: 'article_number') String? articleNumber,@JsonKey(name: 'unit_name') String? unitName,@JsonKey(name: 'track_quantity') bool? trackQuantity, String? quantity,@JsonKey(name: 'min_quantity') String? minQuantity,@JsonKey(name: 'max_quantity') String? maxQuantity,@JsonKey(name: 'allow_below_zero') bool? allowBelowZero,@JsonKey(name: 'low_quantity_date') String? lowQuantityDate,@JsonKey(name: 'native_purchase_price') String? nativePurchasePrice,@JsonKey(name: 'native_retail_price') String? nativeRetailPrice,@JsonKey(name: 'vat_rate') VatRateType? vatRate,@JsonKey(name: 'average_native_purchase_price') String? averageNativePurchasePrice,@JsonKey(name: 'supply_type') SupplyType? supplyType, bool? archived,@JsonKey(name: 'private_note') String? privateNote,@JsonKey(name: 'suggest_for') ItemSuggestFor? suggestFor,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$InventoryItemCopyWithImpl<$Res>
    implements _$InventoryItemCopyWith<$Res> {
  __$InventoryItemCopyWithImpl(this._self, this._then);

  final _InventoryItem _self;
  final $Res Function(_InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? sku = freezed,Object? articleNumberType = freezed,Object? articleNumber = freezed,Object? unitName = freezed,Object? trackQuantity = freezed,Object? quantity = freezed,Object? minQuantity = freezed,Object? maxQuantity = freezed,Object? allowBelowZero = freezed,Object? lowQuantityDate = freezed,Object? nativePurchasePrice = freezed,Object? nativeRetailPrice = freezed,Object? vatRate = freezed,Object? averageNativePurchasePrice = freezed,Object? supplyType = freezed,Object? archived = freezed,Object? privateNote = freezed,Object? suggestFor = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_InventoryItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,articleNumberType: freezed == articleNumberType ? _self.articleNumberType : articleNumberType // ignore: cast_nullable_to_non_nullable
as ArticleNumberType?,articleNumber: freezed == articleNumber ? _self.articleNumber : articleNumber // ignore: cast_nullable_to_non_nullable
as String?,unitName: freezed == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String?,trackQuantity: freezed == trackQuantity ? _self.trackQuantity : trackQuantity // ignore: cast_nullable_to_non_nullable
as bool?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,minQuantity: freezed == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as String?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as String?,allowBelowZero: freezed == allowBelowZero ? _self.allowBelowZero : allowBelowZero // ignore: cast_nullable_to_non_nullable
as bool?,lowQuantityDate: freezed == lowQuantityDate ? _self.lowQuantityDate : lowQuantityDate // ignore: cast_nullable_to_non_nullable
as String?,nativePurchasePrice: freezed == nativePurchasePrice ? _self.nativePurchasePrice : nativePurchasePrice // ignore: cast_nullable_to_non_nullable
as String?,nativeRetailPrice: freezed == nativeRetailPrice ? _self.nativeRetailPrice : nativeRetailPrice // ignore: cast_nullable_to_non_nullable
as String?,vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as VatRateType?,averageNativePurchasePrice: freezed == averageNativePurchasePrice ? _self.averageNativePurchasePrice : averageNativePurchasePrice // ignore: cast_nullable_to_non_nullable
as String?,supplyType: freezed == supplyType ? _self.supplyType : supplyType // ignore: cast_nullable_to_non_nullable
as SupplyType?,archived: freezed == archived ? _self.archived : archived // ignore: cast_nullable_to_non_nullable
as bool?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,suggestFor: freezed == suggestFor ? _self.suggestFor : suggestFor // ignore: cast_nullable_to_non_nullable
as ItemSuggestFor?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
