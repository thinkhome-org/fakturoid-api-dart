// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryMove {

 int? get id;@JsonKey(name: 'inventory_item_id') int get inventoryItemId; InventoryMoveDirection get direction;@JsonKey(name: 'moved_on') DateTime get movedOn;@JsonKey(name: 'quantity_change') String get quantityChange;@JsonKey(name: 'purchase_price') String? get purchasePrice;@JsonKey(name: 'purchase_currency') String? get purchaseCurrency;@JsonKey(name: 'native_purchase_price') String? get nativePurchasePrice;@JsonKey(name: 'retail_price') String? get retailPrice;@JsonKey(name: 'retail_currency') String? get retailCurrency;@JsonKey(name: 'native_retail_price') String? get nativeRetailPrice;@JsonKey(name: 'private_note') String? get privateNote;@JsonKey(includeToJson: false) InventoryMoveDocument? get document;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of InventoryMove
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryMoveCopyWith<InventoryMove> get copyWith => _$InventoryMoveCopyWithImpl<InventoryMove>(this as InventoryMove, _$identity);

  /// Serializes this InventoryMove to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryMove&&(identical(other.id, id) || other.id == id)&&(identical(other.inventoryItemId, inventoryItemId) || other.inventoryItemId == inventoryItemId)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.movedOn, movedOn) || other.movedOn == movedOn)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.purchasePrice, purchasePrice) || other.purchasePrice == purchasePrice)&&(identical(other.purchaseCurrency, purchaseCurrency) || other.purchaseCurrency == purchaseCurrency)&&(identical(other.nativePurchasePrice, nativePurchasePrice) || other.nativePurchasePrice == nativePurchasePrice)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.retailCurrency, retailCurrency) || other.retailCurrency == retailCurrency)&&(identical(other.nativeRetailPrice, nativeRetailPrice) || other.nativeRetailPrice == nativeRetailPrice)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&(identical(other.document, document) || other.document == document)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,inventoryItemId,direction,movedOn,quantityChange,purchasePrice,purchaseCurrency,nativePurchasePrice,retailPrice,retailCurrency,nativeRetailPrice,privateNote,document,createdAt,updatedAt);

@override
String toString() {
  return 'InventoryMove(id: $id, inventoryItemId: $inventoryItemId, direction: $direction, movedOn: $movedOn, quantityChange: $quantityChange, purchasePrice: $purchasePrice, purchaseCurrency: $purchaseCurrency, nativePurchasePrice: $nativePurchasePrice, retailPrice: $retailPrice, retailCurrency: $retailCurrency, nativeRetailPrice: $nativeRetailPrice, privateNote: $privateNote, document: $document, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InventoryMoveCopyWith<$Res>  {
  factory $InventoryMoveCopyWith(InventoryMove value, $Res Function(InventoryMove) _then) = _$InventoryMoveCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'inventory_item_id') int inventoryItemId, InventoryMoveDirection direction,@JsonKey(name: 'moved_on') DateTime movedOn,@JsonKey(name: 'quantity_change') String quantityChange,@JsonKey(name: 'purchase_price') String? purchasePrice,@JsonKey(name: 'purchase_currency') String? purchaseCurrency,@JsonKey(name: 'native_purchase_price') String? nativePurchasePrice,@JsonKey(name: 'retail_price') String? retailPrice,@JsonKey(name: 'retail_currency') String? retailCurrency,@JsonKey(name: 'native_retail_price') String? nativeRetailPrice,@JsonKey(name: 'private_note') String? privateNote,@JsonKey(includeToJson: false) InventoryMoveDocument? document,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


$InventoryMoveDocumentCopyWith<$Res>? get document;

}
/// @nodoc
class _$InventoryMoveCopyWithImpl<$Res>
    implements $InventoryMoveCopyWith<$Res> {
  _$InventoryMoveCopyWithImpl(this._self, this._then);

  final InventoryMove _self;
  final $Res Function(InventoryMove) _then;

/// Create a copy of InventoryMove
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? inventoryItemId = null,Object? direction = null,Object? movedOn = null,Object? quantityChange = null,Object? purchasePrice = freezed,Object? purchaseCurrency = freezed,Object? nativePurchasePrice = freezed,Object? retailPrice = freezed,Object? retailCurrency = freezed,Object? nativeRetailPrice = freezed,Object? privateNote = freezed,Object? document = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,inventoryItemId: null == inventoryItemId ? _self.inventoryItemId : inventoryItemId // ignore: cast_nullable_to_non_nullable
as int,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as InventoryMoveDirection,movedOn: null == movedOn ? _self.movedOn : movedOn // ignore: cast_nullable_to_non_nullable
as DateTime,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as String,purchasePrice: freezed == purchasePrice ? _self.purchasePrice : purchasePrice // ignore: cast_nullable_to_non_nullable
as String?,purchaseCurrency: freezed == purchaseCurrency ? _self.purchaseCurrency : purchaseCurrency // ignore: cast_nullable_to_non_nullable
as String?,nativePurchasePrice: freezed == nativePurchasePrice ? _self.nativePurchasePrice : nativePurchasePrice // ignore: cast_nullable_to_non_nullable
as String?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as String?,retailCurrency: freezed == retailCurrency ? _self.retailCurrency : retailCurrency // ignore: cast_nullable_to_non_nullable
as String?,nativeRetailPrice: freezed == nativeRetailPrice ? _self.nativeRetailPrice : nativeRetailPrice // ignore: cast_nullable_to_non_nullable
as String?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as InventoryMoveDocument?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of InventoryMove
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryMoveDocumentCopyWith<$Res>? get document {
    if (_self.document == null) {
    return null;
  }

  return $InventoryMoveDocumentCopyWith<$Res>(_self.document!, (value) {
    return _then(_self.copyWith(document: value));
  });
}
}


/// Adds pattern-matching-related methods to [InventoryMove].
extension InventoryMovePatterns on InventoryMove {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryMove value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryMove() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryMove value)  $default,){
final _that = this;
switch (_that) {
case _InventoryMove():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryMove value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryMove() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'inventory_item_id')  int inventoryItemId,  InventoryMoveDirection direction, @JsonKey(name: 'moved_on')  DateTime movedOn, @JsonKey(name: 'quantity_change')  String quantityChange, @JsonKey(name: 'purchase_price')  String? purchasePrice, @JsonKey(name: 'purchase_currency')  String? purchaseCurrency, @JsonKey(name: 'native_purchase_price')  String? nativePurchasePrice, @JsonKey(name: 'retail_price')  String? retailPrice, @JsonKey(name: 'retail_currency')  String? retailCurrency, @JsonKey(name: 'native_retail_price')  String? nativeRetailPrice, @JsonKey(name: 'private_note')  String? privateNote, @JsonKey(includeToJson: false)  InventoryMoveDocument? document, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryMove() when $default != null:
return $default(_that.id,_that.inventoryItemId,_that.direction,_that.movedOn,_that.quantityChange,_that.purchasePrice,_that.purchaseCurrency,_that.nativePurchasePrice,_that.retailPrice,_that.retailCurrency,_that.nativeRetailPrice,_that.privateNote,_that.document,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'inventory_item_id')  int inventoryItemId,  InventoryMoveDirection direction, @JsonKey(name: 'moved_on')  DateTime movedOn, @JsonKey(name: 'quantity_change')  String quantityChange, @JsonKey(name: 'purchase_price')  String? purchasePrice, @JsonKey(name: 'purchase_currency')  String? purchaseCurrency, @JsonKey(name: 'native_purchase_price')  String? nativePurchasePrice, @JsonKey(name: 'retail_price')  String? retailPrice, @JsonKey(name: 'retail_currency')  String? retailCurrency, @JsonKey(name: 'native_retail_price')  String? nativeRetailPrice, @JsonKey(name: 'private_note')  String? privateNote, @JsonKey(includeToJson: false)  InventoryMoveDocument? document, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryMove():
return $default(_that.id,_that.inventoryItemId,_that.direction,_that.movedOn,_that.quantityChange,_that.purchasePrice,_that.purchaseCurrency,_that.nativePurchasePrice,_that.retailPrice,_that.retailCurrency,_that.nativeRetailPrice,_that.privateNote,_that.document,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'inventory_item_id')  int inventoryItemId,  InventoryMoveDirection direction, @JsonKey(name: 'moved_on')  DateTime movedOn, @JsonKey(name: 'quantity_change')  String quantityChange, @JsonKey(name: 'purchase_price')  String? purchasePrice, @JsonKey(name: 'purchase_currency')  String? purchaseCurrency, @JsonKey(name: 'native_purchase_price')  String? nativePurchasePrice, @JsonKey(name: 'retail_price')  String? retailPrice, @JsonKey(name: 'retail_currency')  String? retailCurrency, @JsonKey(name: 'native_retail_price')  String? nativeRetailPrice, @JsonKey(name: 'private_note')  String? privateNote, @JsonKey(includeToJson: false)  InventoryMoveDocument? document, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryMove() when $default != null:
return $default(_that.id,_that.inventoryItemId,_that.direction,_that.movedOn,_that.quantityChange,_that.purchasePrice,_that.purchaseCurrency,_that.nativePurchasePrice,_that.retailPrice,_that.retailCurrency,_that.nativeRetailPrice,_that.privateNote,_that.document,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryMove implements InventoryMove {
  const _InventoryMove({this.id, @JsonKey(name: 'inventory_item_id') required this.inventoryItemId, required this.direction, @JsonKey(name: 'moved_on') required this.movedOn, @JsonKey(name: 'quantity_change') required this.quantityChange, @JsonKey(name: 'purchase_price') this.purchasePrice, @JsonKey(name: 'purchase_currency') this.purchaseCurrency, @JsonKey(name: 'native_purchase_price') this.nativePurchasePrice, @JsonKey(name: 'retail_price') this.retailPrice, @JsonKey(name: 'retail_currency') this.retailCurrency, @JsonKey(name: 'native_retail_price') this.nativeRetailPrice, @JsonKey(name: 'private_note') this.privateNote, @JsonKey(includeToJson: false) this.document, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _InventoryMove.fromJson(Map<String, dynamic> json) => _$InventoryMoveFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'inventory_item_id') final  int inventoryItemId;
@override final  InventoryMoveDirection direction;
@override@JsonKey(name: 'moved_on') final  DateTime movedOn;
@override@JsonKey(name: 'quantity_change') final  String quantityChange;
@override@JsonKey(name: 'purchase_price') final  String? purchasePrice;
@override@JsonKey(name: 'purchase_currency') final  String? purchaseCurrency;
@override@JsonKey(name: 'native_purchase_price') final  String? nativePurchasePrice;
@override@JsonKey(name: 'retail_price') final  String? retailPrice;
@override@JsonKey(name: 'retail_currency') final  String? retailCurrency;
@override@JsonKey(name: 'native_retail_price') final  String? nativeRetailPrice;
@override@JsonKey(name: 'private_note') final  String? privateNote;
@override@JsonKey(includeToJson: false) final  InventoryMoveDocument? document;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of InventoryMove
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryMoveCopyWith<_InventoryMove> get copyWith => __$InventoryMoveCopyWithImpl<_InventoryMove>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryMoveToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryMove&&(identical(other.id, id) || other.id == id)&&(identical(other.inventoryItemId, inventoryItemId) || other.inventoryItemId == inventoryItemId)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.movedOn, movedOn) || other.movedOn == movedOn)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.purchasePrice, purchasePrice) || other.purchasePrice == purchasePrice)&&(identical(other.purchaseCurrency, purchaseCurrency) || other.purchaseCurrency == purchaseCurrency)&&(identical(other.nativePurchasePrice, nativePurchasePrice) || other.nativePurchasePrice == nativePurchasePrice)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.retailCurrency, retailCurrency) || other.retailCurrency == retailCurrency)&&(identical(other.nativeRetailPrice, nativeRetailPrice) || other.nativeRetailPrice == nativeRetailPrice)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&(identical(other.document, document) || other.document == document)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,inventoryItemId,direction,movedOn,quantityChange,purchasePrice,purchaseCurrency,nativePurchasePrice,retailPrice,retailCurrency,nativeRetailPrice,privateNote,document,createdAt,updatedAt);

@override
String toString() {
  return 'InventoryMove(id: $id, inventoryItemId: $inventoryItemId, direction: $direction, movedOn: $movedOn, quantityChange: $quantityChange, purchasePrice: $purchasePrice, purchaseCurrency: $purchaseCurrency, nativePurchasePrice: $nativePurchasePrice, retailPrice: $retailPrice, retailCurrency: $retailCurrency, nativeRetailPrice: $nativeRetailPrice, privateNote: $privateNote, document: $document, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryMoveCopyWith<$Res> implements $InventoryMoveCopyWith<$Res> {
  factory _$InventoryMoveCopyWith(_InventoryMove value, $Res Function(_InventoryMove) _then) = __$InventoryMoveCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'inventory_item_id') int inventoryItemId, InventoryMoveDirection direction,@JsonKey(name: 'moved_on') DateTime movedOn,@JsonKey(name: 'quantity_change') String quantityChange,@JsonKey(name: 'purchase_price') String? purchasePrice,@JsonKey(name: 'purchase_currency') String? purchaseCurrency,@JsonKey(name: 'native_purchase_price') String? nativePurchasePrice,@JsonKey(name: 'retail_price') String? retailPrice,@JsonKey(name: 'retail_currency') String? retailCurrency,@JsonKey(name: 'native_retail_price') String? nativeRetailPrice,@JsonKey(name: 'private_note') String? privateNote,@JsonKey(includeToJson: false) InventoryMoveDocument? document,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


@override $InventoryMoveDocumentCopyWith<$Res>? get document;

}
/// @nodoc
class __$InventoryMoveCopyWithImpl<$Res>
    implements _$InventoryMoveCopyWith<$Res> {
  __$InventoryMoveCopyWithImpl(this._self, this._then);

  final _InventoryMove _self;
  final $Res Function(_InventoryMove) _then;

/// Create a copy of InventoryMove
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? inventoryItemId = null,Object? direction = null,Object? movedOn = null,Object? quantityChange = null,Object? purchasePrice = freezed,Object? purchaseCurrency = freezed,Object? nativePurchasePrice = freezed,Object? retailPrice = freezed,Object? retailCurrency = freezed,Object? nativeRetailPrice = freezed,Object? privateNote = freezed,Object? document = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_InventoryMove(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,inventoryItemId: null == inventoryItemId ? _self.inventoryItemId : inventoryItemId // ignore: cast_nullable_to_non_nullable
as int,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as InventoryMoveDirection,movedOn: null == movedOn ? _self.movedOn : movedOn // ignore: cast_nullable_to_non_nullable
as DateTime,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as String,purchasePrice: freezed == purchasePrice ? _self.purchasePrice : purchasePrice // ignore: cast_nullable_to_non_nullable
as String?,purchaseCurrency: freezed == purchaseCurrency ? _self.purchaseCurrency : purchaseCurrency // ignore: cast_nullable_to_non_nullable
as String?,nativePurchasePrice: freezed == nativePurchasePrice ? _self.nativePurchasePrice : nativePurchasePrice // ignore: cast_nullable_to_non_nullable
as String?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as String?,retailCurrency: freezed == retailCurrency ? _self.retailCurrency : retailCurrency // ignore: cast_nullable_to_non_nullable
as String?,nativeRetailPrice: freezed == nativeRetailPrice ? _self.nativeRetailPrice : nativeRetailPrice // ignore: cast_nullable_to_non_nullable
as String?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as InventoryMoveDocument?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of InventoryMove
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryMoveDocumentCopyWith<$Res>? get document {
    if (_self.document == null) {
    return null;
  }

  return $InventoryMoveDocumentCopyWith<$Res>(_self.document!, (value) {
    return _then(_self.copyWith(document: value));
  });
}
}


/// @nodoc
mixin _$InventoryMoveDocument {

 int? get id; String? get type;@JsonKey(name: 'line_id') int? get lineId;
/// Create a copy of InventoryMoveDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryMoveDocumentCopyWith<InventoryMoveDocument> get copyWith => _$InventoryMoveDocumentCopyWithImpl<InventoryMoveDocument>(this as InventoryMoveDocument, _$identity);

  /// Serializes this InventoryMoveDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryMoveDocument&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.lineId, lineId) || other.lineId == lineId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,lineId);

@override
String toString() {
  return 'InventoryMoveDocument(id: $id, type: $type, lineId: $lineId)';
}


}

/// @nodoc
abstract mixin class $InventoryMoveDocumentCopyWith<$Res>  {
  factory $InventoryMoveDocumentCopyWith(InventoryMoveDocument value, $Res Function(InventoryMoveDocument) _then) = _$InventoryMoveDocumentCopyWithImpl;
@useResult
$Res call({
 int? id, String? type,@JsonKey(name: 'line_id') int? lineId
});




}
/// @nodoc
class _$InventoryMoveDocumentCopyWithImpl<$Res>
    implements $InventoryMoveDocumentCopyWith<$Res> {
  _$InventoryMoveDocumentCopyWithImpl(this._self, this._then);

  final InventoryMoveDocument _self;
  final $Res Function(InventoryMoveDocument) _then;

/// Create a copy of InventoryMoveDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? lineId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,lineId: freezed == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryMoveDocument].
extension InventoryMoveDocumentPatterns on InventoryMoveDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryMoveDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryMoveDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryMoveDocument value)  $default,){
final _that = this;
switch (_that) {
case _InventoryMoveDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryMoveDocument value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryMoveDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type, @JsonKey(name: 'line_id')  int? lineId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryMoveDocument() when $default != null:
return $default(_that.id,_that.type,_that.lineId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type, @JsonKey(name: 'line_id')  int? lineId)  $default,) {final _that = this;
switch (_that) {
case _InventoryMoveDocument():
return $default(_that.id,_that.type,_that.lineId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type, @JsonKey(name: 'line_id')  int? lineId)?  $default,) {final _that = this;
switch (_that) {
case _InventoryMoveDocument() when $default != null:
return $default(_that.id,_that.type,_that.lineId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryMoveDocument implements InventoryMoveDocument {
  const _InventoryMoveDocument({this.id, this.type, @JsonKey(name: 'line_id') this.lineId});
  factory _InventoryMoveDocument.fromJson(Map<String, dynamic> json) => _$InventoryMoveDocumentFromJson(json);

@override final  int? id;
@override final  String? type;
@override@JsonKey(name: 'line_id') final  int? lineId;

/// Create a copy of InventoryMoveDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryMoveDocumentCopyWith<_InventoryMoveDocument> get copyWith => __$InventoryMoveDocumentCopyWithImpl<_InventoryMoveDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryMoveDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryMoveDocument&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.lineId, lineId) || other.lineId == lineId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,lineId);

@override
String toString() {
  return 'InventoryMoveDocument(id: $id, type: $type, lineId: $lineId)';
}


}

/// @nodoc
abstract mixin class _$InventoryMoveDocumentCopyWith<$Res> implements $InventoryMoveDocumentCopyWith<$Res> {
  factory _$InventoryMoveDocumentCopyWith(_InventoryMoveDocument value, $Res Function(_InventoryMoveDocument) _then) = __$InventoryMoveDocumentCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type,@JsonKey(name: 'line_id') int? lineId
});




}
/// @nodoc
class __$InventoryMoveDocumentCopyWithImpl<$Res>
    implements _$InventoryMoveDocumentCopyWith<$Res> {
  __$InventoryMoveDocumentCopyWithImpl(this._self, this._then);

  final _InventoryMoveDocument _self;
  final $Res Function(_InventoryMoveDocument) _then;

/// Create a copy of InventoryMoveDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? lineId = freezed,}) {
  return _then(_InventoryMoveDocument(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,lineId: freezed == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
