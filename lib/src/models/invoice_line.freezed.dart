// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoiceLine {

 int? get id; String get name;/// Fakturoid API vrací a přijímá decimální čísla jako String (např. "1.0")
 String? get quantity;@JsonKey(name: 'unit_name') String? get unitName;@JsonKey(name: 'unit_price') String get unitPrice;@JsonKey(name: 'vat_rate') num? get vatRate;@JsonKey(name: 'unit_price_without_vat') String? get unitPriceWithoutVat;@JsonKey(name: 'unit_price_with_vat') String? get unitPriceWithVat;@JsonKey(name: 'total_price_without_vat') String? get totalPriceWithoutVat;@JsonKey(name: 'total_vat') String? get totalVat;@JsonKey(name: 'native_total_price_without_vat') String? get nativeTotalPriceWithoutVat;@JsonKey(name: 'native_total_vat') String? get nativeTotalVat;@JsonKey(name: 'inventory_item_id') int? get inventoryItemId; String? get sku;
/// Create a copy of InvoiceLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceLineCopyWith<InvoiceLine> get copyWith => _$InvoiceLineCopyWithImpl<InvoiceLine>(this as InvoiceLine, _$identity);

  /// Serializes this InvoiceLine to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceLine&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.unitPriceWithoutVat, unitPriceWithoutVat) || other.unitPriceWithoutVat == unitPriceWithoutVat)&&(identical(other.unitPriceWithVat, unitPriceWithVat) || other.unitPriceWithVat == unitPriceWithVat)&&(identical(other.totalPriceWithoutVat, totalPriceWithoutVat) || other.totalPriceWithoutVat == totalPriceWithoutVat)&&(identical(other.totalVat, totalVat) || other.totalVat == totalVat)&&(identical(other.nativeTotalPriceWithoutVat, nativeTotalPriceWithoutVat) || other.nativeTotalPriceWithoutVat == nativeTotalPriceWithoutVat)&&(identical(other.nativeTotalVat, nativeTotalVat) || other.nativeTotalVat == nativeTotalVat)&&(identical(other.inventoryItemId, inventoryItemId) || other.inventoryItemId == inventoryItemId)&&(identical(other.sku, sku) || other.sku == sku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,unitName,unitPrice,vatRate,unitPriceWithoutVat,unitPriceWithVat,totalPriceWithoutVat,totalVat,nativeTotalPriceWithoutVat,nativeTotalVat,inventoryItemId,sku);

@override
String toString() {
  return 'InvoiceLine(id: $id, name: $name, quantity: $quantity, unitName: $unitName, unitPrice: $unitPrice, vatRate: $vatRate, unitPriceWithoutVat: $unitPriceWithoutVat, unitPriceWithVat: $unitPriceWithVat, totalPriceWithoutVat: $totalPriceWithoutVat, totalVat: $totalVat, nativeTotalPriceWithoutVat: $nativeTotalPriceWithoutVat, nativeTotalVat: $nativeTotalVat, inventoryItemId: $inventoryItemId, sku: $sku)';
}


}

/// @nodoc
abstract mixin class $InvoiceLineCopyWith<$Res>  {
  factory $InvoiceLineCopyWith(InvoiceLine value, $Res Function(InvoiceLine) _then) = _$InvoiceLineCopyWithImpl;
@useResult
$Res call({
 int? id, String name, String? quantity,@JsonKey(name: 'unit_name') String? unitName,@JsonKey(name: 'unit_price') String unitPrice,@JsonKey(name: 'vat_rate') num? vatRate,@JsonKey(name: 'unit_price_without_vat') String? unitPriceWithoutVat,@JsonKey(name: 'unit_price_with_vat') String? unitPriceWithVat,@JsonKey(name: 'total_price_without_vat') String? totalPriceWithoutVat,@JsonKey(name: 'total_vat') String? totalVat,@JsonKey(name: 'native_total_price_without_vat') String? nativeTotalPriceWithoutVat,@JsonKey(name: 'native_total_vat') String? nativeTotalVat,@JsonKey(name: 'inventory_item_id') int? inventoryItemId, String? sku
});




}
/// @nodoc
class _$InvoiceLineCopyWithImpl<$Res>
    implements $InvoiceLineCopyWith<$Res> {
  _$InvoiceLineCopyWithImpl(this._self, this._then);

  final InvoiceLine _self;
  final $Res Function(InvoiceLine) _then;

/// Create a copy of InvoiceLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? quantity = freezed,Object? unitName = freezed,Object? unitPrice = null,Object? vatRate = freezed,Object? unitPriceWithoutVat = freezed,Object? unitPriceWithVat = freezed,Object? totalPriceWithoutVat = freezed,Object? totalVat = freezed,Object? nativeTotalPriceWithoutVat = freezed,Object? nativeTotalVat = freezed,Object? inventoryItemId = freezed,Object? sku = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,unitName: freezed == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as String,vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as num?,unitPriceWithoutVat: freezed == unitPriceWithoutVat ? _self.unitPriceWithoutVat : unitPriceWithoutVat // ignore: cast_nullable_to_non_nullable
as String?,unitPriceWithVat: freezed == unitPriceWithVat ? _self.unitPriceWithVat : unitPriceWithVat // ignore: cast_nullable_to_non_nullable
as String?,totalPriceWithoutVat: freezed == totalPriceWithoutVat ? _self.totalPriceWithoutVat : totalPriceWithoutVat // ignore: cast_nullable_to_non_nullable
as String?,totalVat: freezed == totalVat ? _self.totalVat : totalVat // ignore: cast_nullable_to_non_nullable
as String?,nativeTotalPriceWithoutVat: freezed == nativeTotalPriceWithoutVat ? _self.nativeTotalPriceWithoutVat : nativeTotalPriceWithoutVat // ignore: cast_nullable_to_non_nullable
as String?,nativeTotalVat: freezed == nativeTotalVat ? _self.nativeTotalVat : nativeTotalVat // ignore: cast_nullable_to_non_nullable
as String?,inventoryItemId: freezed == inventoryItemId ? _self.inventoryItemId : inventoryItemId // ignore: cast_nullable_to_non_nullable
as int?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceLine].
extension InvoiceLinePatterns on InvoiceLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceLine value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceLine value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  String? quantity, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'unit_price')  String unitPrice, @JsonKey(name: 'vat_rate')  num? vatRate, @JsonKey(name: 'unit_price_without_vat')  String? unitPriceWithoutVat, @JsonKey(name: 'unit_price_with_vat')  String? unitPriceWithVat, @JsonKey(name: 'total_price_without_vat')  String? totalPriceWithoutVat, @JsonKey(name: 'total_vat')  String? totalVat, @JsonKey(name: 'native_total_price_without_vat')  String? nativeTotalPriceWithoutVat, @JsonKey(name: 'native_total_vat')  String? nativeTotalVat, @JsonKey(name: 'inventory_item_id')  int? inventoryItemId,  String? sku)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceLine() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.unitName,_that.unitPrice,_that.vatRate,_that.unitPriceWithoutVat,_that.unitPriceWithVat,_that.totalPriceWithoutVat,_that.totalVat,_that.nativeTotalPriceWithoutVat,_that.nativeTotalVat,_that.inventoryItemId,_that.sku);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  String? quantity, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'unit_price')  String unitPrice, @JsonKey(name: 'vat_rate')  num? vatRate, @JsonKey(name: 'unit_price_without_vat')  String? unitPriceWithoutVat, @JsonKey(name: 'unit_price_with_vat')  String? unitPriceWithVat, @JsonKey(name: 'total_price_without_vat')  String? totalPriceWithoutVat, @JsonKey(name: 'total_vat')  String? totalVat, @JsonKey(name: 'native_total_price_without_vat')  String? nativeTotalPriceWithoutVat, @JsonKey(name: 'native_total_vat')  String? nativeTotalVat, @JsonKey(name: 'inventory_item_id')  int? inventoryItemId,  String? sku)  $default,) {final _that = this;
switch (_that) {
case _InvoiceLine():
return $default(_that.id,_that.name,_that.quantity,_that.unitName,_that.unitPrice,_that.vatRate,_that.unitPriceWithoutVat,_that.unitPriceWithVat,_that.totalPriceWithoutVat,_that.totalVat,_that.nativeTotalPriceWithoutVat,_that.nativeTotalVat,_that.inventoryItemId,_that.sku);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  String? quantity, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'unit_price')  String unitPrice, @JsonKey(name: 'vat_rate')  num? vatRate, @JsonKey(name: 'unit_price_without_vat')  String? unitPriceWithoutVat, @JsonKey(name: 'unit_price_with_vat')  String? unitPriceWithVat, @JsonKey(name: 'total_price_without_vat')  String? totalPriceWithoutVat, @JsonKey(name: 'total_vat')  String? totalVat, @JsonKey(name: 'native_total_price_without_vat')  String? nativeTotalPriceWithoutVat, @JsonKey(name: 'native_total_vat')  String? nativeTotalVat, @JsonKey(name: 'inventory_item_id')  int? inventoryItemId,  String? sku)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceLine() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.unitName,_that.unitPrice,_that.vatRate,_that.unitPriceWithoutVat,_that.unitPriceWithVat,_that.totalPriceWithoutVat,_that.totalVat,_that.nativeTotalPriceWithoutVat,_that.nativeTotalVat,_that.inventoryItemId,_that.sku);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoiceLine implements InvoiceLine {
  const _InvoiceLine({this.id, required this.name, this.quantity, @JsonKey(name: 'unit_name') this.unitName, @JsonKey(name: 'unit_price') required this.unitPrice, @JsonKey(name: 'vat_rate') this.vatRate, @JsonKey(name: 'unit_price_without_vat') this.unitPriceWithoutVat, @JsonKey(name: 'unit_price_with_vat') this.unitPriceWithVat, @JsonKey(name: 'total_price_without_vat') this.totalPriceWithoutVat, @JsonKey(name: 'total_vat') this.totalVat, @JsonKey(name: 'native_total_price_without_vat') this.nativeTotalPriceWithoutVat, @JsonKey(name: 'native_total_vat') this.nativeTotalVat, @JsonKey(name: 'inventory_item_id') this.inventoryItemId, this.sku});
  factory _InvoiceLine.fromJson(Map<String, dynamic> json) => _$InvoiceLineFromJson(json);

@override final  int? id;
@override final  String name;
/// Fakturoid API vrací a přijímá decimální čísla jako String (např. "1.0")
@override final  String? quantity;
@override@JsonKey(name: 'unit_name') final  String? unitName;
@override@JsonKey(name: 'unit_price') final  String unitPrice;
@override@JsonKey(name: 'vat_rate') final  num? vatRate;
@override@JsonKey(name: 'unit_price_without_vat') final  String? unitPriceWithoutVat;
@override@JsonKey(name: 'unit_price_with_vat') final  String? unitPriceWithVat;
@override@JsonKey(name: 'total_price_without_vat') final  String? totalPriceWithoutVat;
@override@JsonKey(name: 'total_vat') final  String? totalVat;
@override@JsonKey(name: 'native_total_price_without_vat') final  String? nativeTotalPriceWithoutVat;
@override@JsonKey(name: 'native_total_vat') final  String? nativeTotalVat;
@override@JsonKey(name: 'inventory_item_id') final  int? inventoryItemId;
@override final  String? sku;

/// Create a copy of InvoiceLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceLineCopyWith<_InvoiceLine> get copyWith => __$InvoiceLineCopyWithImpl<_InvoiceLine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceLineToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceLine&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.unitPriceWithoutVat, unitPriceWithoutVat) || other.unitPriceWithoutVat == unitPriceWithoutVat)&&(identical(other.unitPriceWithVat, unitPriceWithVat) || other.unitPriceWithVat == unitPriceWithVat)&&(identical(other.totalPriceWithoutVat, totalPriceWithoutVat) || other.totalPriceWithoutVat == totalPriceWithoutVat)&&(identical(other.totalVat, totalVat) || other.totalVat == totalVat)&&(identical(other.nativeTotalPriceWithoutVat, nativeTotalPriceWithoutVat) || other.nativeTotalPriceWithoutVat == nativeTotalPriceWithoutVat)&&(identical(other.nativeTotalVat, nativeTotalVat) || other.nativeTotalVat == nativeTotalVat)&&(identical(other.inventoryItemId, inventoryItemId) || other.inventoryItemId == inventoryItemId)&&(identical(other.sku, sku) || other.sku == sku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,unitName,unitPrice,vatRate,unitPriceWithoutVat,unitPriceWithVat,totalPriceWithoutVat,totalVat,nativeTotalPriceWithoutVat,nativeTotalVat,inventoryItemId,sku);

@override
String toString() {
  return 'InvoiceLine(id: $id, name: $name, quantity: $quantity, unitName: $unitName, unitPrice: $unitPrice, vatRate: $vatRate, unitPriceWithoutVat: $unitPriceWithoutVat, unitPriceWithVat: $unitPriceWithVat, totalPriceWithoutVat: $totalPriceWithoutVat, totalVat: $totalVat, nativeTotalPriceWithoutVat: $nativeTotalPriceWithoutVat, nativeTotalVat: $nativeTotalVat, inventoryItemId: $inventoryItemId, sku: $sku)';
}


}

/// @nodoc
abstract mixin class _$InvoiceLineCopyWith<$Res> implements $InvoiceLineCopyWith<$Res> {
  factory _$InvoiceLineCopyWith(_InvoiceLine value, $Res Function(_InvoiceLine) _then) = __$InvoiceLineCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, String? quantity,@JsonKey(name: 'unit_name') String? unitName,@JsonKey(name: 'unit_price') String unitPrice,@JsonKey(name: 'vat_rate') num? vatRate,@JsonKey(name: 'unit_price_without_vat') String? unitPriceWithoutVat,@JsonKey(name: 'unit_price_with_vat') String? unitPriceWithVat,@JsonKey(name: 'total_price_without_vat') String? totalPriceWithoutVat,@JsonKey(name: 'total_vat') String? totalVat,@JsonKey(name: 'native_total_price_without_vat') String? nativeTotalPriceWithoutVat,@JsonKey(name: 'native_total_vat') String? nativeTotalVat,@JsonKey(name: 'inventory_item_id') int? inventoryItemId, String? sku
});




}
/// @nodoc
class __$InvoiceLineCopyWithImpl<$Res>
    implements _$InvoiceLineCopyWith<$Res> {
  __$InvoiceLineCopyWithImpl(this._self, this._then);

  final _InvoiceLine _self;
  final $Res Function(_InvoiceLine) _then;

/// Create a copy of InvoiceLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? quantity = freezed,Object? unitName = freezed,Object? unitPrice = null,Object? vatRate = freezed,Object? unitPriceWithoutVat = freezed,Object? unitPriceWithVat = freezed,Object? totalPriceWithoutVat = freezed,Object? totalVat = freezed,Object? nativeTotalPriceWithoutVat = freezed,Object? nativeTotalVat = freezed,Object? inventoryItemId = freezed,Object? sku = freezed,}) {
  return _then(_InvoiceLine(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,unitName: freezed == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as String,vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as num?,unitPriceWithoutVat: freezed == unitPriceWithoutVat ? _self.unitPriceWithoutVat : unitPriceWithoutVat // ignore: cast_nullable_to_non_nullable
as String?,unitPriceWithVat: freezed == unitPriceWithVat ? _self.unitPriceWithVat : unitPriceWithVat // ignore: cast_nullable_to_non_nullable
as String?,totalPriceWithoutVat: freezed == totalPriceWithoutVat ? _self.totalPriceWithoutVat : totalPriceWithoutVat // ignore: cast_nullable_to_non_nullable
as String?,totalVat: freezed == totalVat ? _self.totalVat : totalVat // ignore: cast_nullable_to_non_nullable
as String?,nativeTotalPriceWithoutVat: freezed == nativeTotalPriceWithoutVat ? _self.nativeTotalPriceWithoutVat : nativeTotalPriceWithoutVat // ignore: cast_nullable_to_non_nullable
as String?,nativeTotalVat: freezed == nativeTotalVat ? _self.nativeTotalVat : nativeTotalVat // ignore: cast_nullable_to_non_nullable
as String?,inventoryItemId: freezed == inventoryItemId ? _self.inventoryItemId : inventoryItemId // ignore: cast_nullable_to_non_nullable
as int?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
