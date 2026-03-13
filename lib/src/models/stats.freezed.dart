// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatsPeriod {

 String? get paid; String? get unpaid; String? get overdue;
/// Create a copy of StatsPeriod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsPeriodCopyWith<StatsPeriod> get copyWith => _$StatsPeriodCopyWithImpl<StatsPeriod>(this as StatsPeriod, _$identity);

  /// Serializes this StatsPeriod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsPeriod&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.unpaid, unpaid) || other.unpaid == unpaid)&&(identical(other.overdue, overdue) || other.overdue == overdue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paid,unpaid,overdue);

@override
String toString() {
  return 'StatsPeriod(paid: $paid, unpaid: $unpaid, overdue: $overdue)';
}


}

/// @nodoc
abstract mixin class $StatsPeriodCopyWith<$Res>  {
  factory $StatsPeriodCopyWith(StatsPeriod value, $Res Function(StatsPeriod) _then) = _$StatsPeriodCopyWithImpl;
@useResult
$Res call({
 String? paid, String? unpaid, String? overdue
});




}
/// @nodoc
class _$StatsPeriodCopyWithImpl<$Res>
    implements $StatsPeriodCopyWith<$Res> {
  _$StatsPeriodCopyWithImpl(this._self, this._then);

  final StatsPeriod _self;
  final $Res Function(StatsPeriod) _then;

/// Create a copy of StatsPeriod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paid = freezed,Object? unpaid = freezed,Object? overdue = freezed,}) {
  return _then(_self.copyWith(
paid: freezed == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as String?,unpaid: freezed == unpaid ? _self.unpaid : unpaid // ignore: cast_nullable_to_non_nullable
as String?,overdue: freezed == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsPeriod].
extension StatsPeriodPatterns on StatsPeriod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsPeriod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsPeriod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsPeriod value)  $default,){
final _that = this;
switch (_that) {
case _StatsPeriod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsPeriod value)?  $default,){
final _that = this;
switch (_that) {
case _StatsPeriod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? paid,  String? unpaid,  String? overdue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsPeriod() when $default != null:
return $default(_that.paid,_that.unpaid,_that.overdue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? paid,  String? unpaid,  String? overdue)  $default,) {final _that = this;
switch (_that) {
case _StatsPeriod():
return $default(_that.paid,_that.unpaid,_that.overdue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? paid,  String? unpaid,  String? overdue)?  $default,) {final _that = this;
switch (_that) {
case _StatsPeriod() when $default != null:
return $default(_that.paid,_that.unpaid,_that.overdue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsPeriod implements StatsPeriod {
  const _StatsPeriod({this.paid, this.unpaid, this.overdue});
  factory _StatsPeriod.fromJson(Map<String, dynamic> json) => _$StatsPeriodFromJson(json);

@override final  String? paid;
@override final  String? unpaid;
@override final  String? overdue;

/// Create a copy of StatsPeriod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsPeriodCopyWith<_StatsPeriod> get copyWith => __$StatsPeriodCopyWithImpl<_StatsPeriod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsPeriodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsPeriod&&(identical(other.paid, paid) || other.paid == paid)&&(identical(other.unpaid, unpaid) || other.unpaid == unpaid)&&(identical(other.overdue, overdue) || other.overdue == overdue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paid,unpaid,overdue);

@override
String toString() {
  return 'StatsPeriod(paid: $paid, unpaid: $unpaid, overdue: $overdue)';
}


}

/// @nodoc
abstract mixin class _$StatsPeriodCopyWith<$Res> implements $StatsPeriodCopyWith<$Res> {
  factory _$StatsPeriodCopyWith(_StatsPeriod value, $Res Function(_StatsPeriod) _then) = __$StatsPeriodCopyWithImpl;
@override @useResult
$Res call({
 String? paid, String? unpaid, String? overdue
});




}
/// @nodoc
class __$StatsPeriodCopyWithImpl<$Res>
    implements _$StatsPeriodCopyWith<$Res> {
  __$StatsPeriodCopyWithImpl(this._self, this._then);

  final _StatsPeriod _self;
  final $Res Function(_StatsPeriod) _then;

/// Create a copy of StatsPeriod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paid = freezed,Object? unpaid = freezed,Object? overdue = freezed,}) {
  return _then(_StatsPeriod(
paid: freezed == paid ? _self.paid : paid // ignore: cast_nullable_to_non_nullable
as String?,unpaid: freezed == unpaid ? _self.unpaid : unpaid // ignore: cast_nullable_to_non_nullable
as String?,overdue: freezed == overdue ? _self.overdue : overdue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StatsTotals {

@JsonKey(name: 'all_time') StatsPeriod? get allTime; StatsPeriod? get year; StatsPeriod? get month;
/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsTotalsCopyWith<StatsTotals> get copyWith => _$StatsTotalsCopyWithImpl<StatsTotals>(this as StatsTotals, _$identity);

  /// Serializes this StatsTotals to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsTotals&&(identical(other.allTime, allTime) || other.allTime == allTime)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allTime,year,month);

@override
String toString() {
  return 'StatsTotals(allTime: $allTime, year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class $StatsTotalsCopyWith<$Res>  {
  factory $StatsTotalsCopyWith(StatsTotals value, $Res Function(StatsTotals) _then) = _$StatsTotalsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'all_time') StatsPeriod? allTime, StatsPeriod? year, StatsPeriod? month
});


$StatsPeriodCopyWith<$Res>? get allTime;$StatsPeriodCopyWith<$Res>? get year;$StatsPeriodCopyWith<$Res>? get month;

}
/// @nodoc
class _$StatsTotalsCopyWithImpl<$Res>
    implements $StatsTotalsCopyWith<$Res> {
  _$StatsTotalsCopyWithImpl(this._self, this._then);

  final StatsTotals _self;
  final $Res Function(StatsTotals) _then;

/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allTime = freezed,Object? year = freezed,Object? month = freezed,}) {
  return _then(_self.copyWith(
allTime: freezed == allTime ? _self.allTime : allTime // ignore: cast_nullable_to_non_nullable
as StatsPeriod?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as StatsPeriod?,month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as StatsPeriod?,
  ));
}
/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsPeriodCopyWith<$Res>? get allTime {
    if (_self.allTime == null) {
    return null;
  }

  return $StatsPeriodCopyWith<$Res>(_self.allTime!, (value) {
    return _then(_self.copyWith(allTime: value));
  });
}/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsPeriodCopyWith<$Res>? get year {
    if (_self.year == null) {
    return null;
  }

  return $StatsPeriodCopyWith<$Res>(_self.year!, (value) {
    return _then(_self.copyWith(year: value));
  });
}/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsPeriodCopyWith<$Res>? get month {
    if (_self.month == null) {
    return null;
  }

  return $StatsPeriodCopyWith<$Res>(_self.month!, (value) {
    return _then(_self.copyWith(month: value));
  });
}
}


/// Adds pattern-matching-related methods to [StatsTotals].
extension StatsTotalsPatterns on StatsTotals {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsTotals value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsTotals() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsTotals value)  $default,){
final _that = this;
switch (_that) {
case _StatsTotals():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsTotals value)?  $default,){
final _that = this;
switch (_that) {
case _StatsTotals() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'all_time')  StatsPeriod? allTime,  StatsPeriod? year,  StatsPeriod? month)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsTotals() when $default != null:
return $default(_that.allTime,_that.year,_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'all_time')  StatsPeriod? allTime,  StatsPeriod? year,  StatsPeriod? month)  $default,) {final _that = this;
switch (_that) {
case _StatsTotals():
return $default(_that.allTime,_that.year,_that.month);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'all_time')  StatsPeriod? allTime,  StatsPeriod? year,  StatsPeriod? month)?  $default,) {final _that = this;
switch (_that) {
case _StatsTotals() when $default != null:
return $default(_that.allTime,_that.year,_that.month);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsTotals implements StatsTotals {
  const _StatsTotals({@JsonKey(name: 'all_time') this.allTime, this.year, this.month});
  factory _StatsTotals.fromJson(Map<String, dynamic> json) => _$StatsTotalsFromJson(json);

@override@JsonKey(name: 'all_time') final  StatsPeriod? allTime;
@override final  StatsPeriod? year;
@override final  StatsPeriod? month;

/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsTotalsCopyWith<_StatsTotals> get copyWith => __$StatsTotalsCopyWithImpl<_StatsTotals>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsTotalsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsTotals&&(identical(other.allTime, allTime) || other.allTime == allTime)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allTime,year,month);

@override
String toString() {
  return 'StatsTotals(allTime: $allTime, year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class _$StatsTotalsCopyWith<$Res> implements $StatsTotalsCopyWith<$Res> {
  factory _$StatsTotalsCopyWith(_StatsTotals value, $Res Function(_StatsTotals) _then) = __$StatsTotalsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'all_time') StatsPeriod? allTime, StatsPeriod? year, StatsPeriod? month
});


@override $StatsPeriodCopyWith<$Res>? get allTime;@override $StatsPeriodCopyWith<$Res>? get year;@override $StatsPeriodCopyWith<$Res>? get month;

}
/// @nodoc
class __$StatsTotalsCopyWithImpl<$Res>
    implements _$StatsTotalsCopyWith<$Res> {
  __$StatsTotalsCopyWithImpl(this._self, this._then);

  final _StatsTotals _self;
  final $Res Function(_StatsTotals) _then;

/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allTime = freezed,Object? year = freezed,Object? month = freezed,}) {
  return _then(_StatsTotals(
allTime: freezed == allTime ? _self.allTime : allTime // ignore: cast_nullable_to_non_nullable
as StatsPeriod?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as StatsPeriod?,month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as StatsPeriod?,
  ));
}

/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsPeriodCopyWith<$Res>? get allTime {
    if (_self.allTime == null) {
    return null;
  }

  return $StatsPeriodCopyWith<$Res>(_self.allTime!, (value) {
    return _then(_self.copyWith(allTime: value));
  });
}/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsPeriodCopyWith<$Res>? get year {
    if (_self.year == null) {
    return null;
  }

  return $StatsPeriodCopyWith<$Res>(_self.year!, (value) {
    return _then(_self.copyWith(year: value));
  });
}/// Create a copy of StatsTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsPeriodCopyWith<$Res>? get month {
    if (_self.month == null) {
    return null;
  }

  return $StatsPeriodCopyWith<$Res>(_self.month!, (value) {
    return _then(_self.copyWith(month: value));
  });
}
}


/// @nodoc
mixin _$StatsGraphPoint {

 String? get date; String? get amount;
/// Create a copy of StatsGraphPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsGraphPointCopyWith<StatsGraphPoint> get copyWith => _$StatsGraphPointCopyWithImpl<StatsGraphPoint>(this as StatsGraphPoint, _$identity);

  /// Serializes this StatsGraphPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsGraphPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,amount);

@override
String toString() {
  return 'StatsGraphPoint(date: $date, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $StatsGraphPointCopyWith<$Res>  {
  factory $StatsGraphPointCopyWith(StatsGraphPoint value, $Res Function(StatsGraphPoint) _then) = _$StatsGraphPointCopyWithImpl;
@useResult
$Res call({
 String? date, String? amount
});




}
/// @nodoc
class _$StatsGraphPointCopyWithImpl<$Res>
    implements $StatsGraphPointCopyWith<$Res> {
  _$StatsGraphPointCopyWithImpl(this._self, this._then);

  final StatsGraphPoint _self;
  final $Res Function(StatsGraphPoint) _then;

/// Create a copy of StatsGraphPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? amount = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsGraphPoint].
extension StatsGraphPointPatterns on StatsGraphPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsGraphPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsGraphPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsGraphPoint value)  $default,){
final _that = this;
switch (_that) {
case _StatsGraphPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsGraphPoint value)?  $default,){
final _that = this;
switch (_that) {
case _StatsGraphPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? date,  String? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsGraphPoint() when $default != null:
return $default(_that.date,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? date,  String? amount)  $default,) {final _that = this;
switch (_that) {
case _StatsGraphPoint():
return $default(_that.date,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? date,  String? amount)?  $default,) {final _that = this;
switch (_that) {
case _StatsGraphPoint() when $default != null:
return $default(_that.date,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsGraphPoint implements StatsGraphPoint {
  const _StatsGraphPoint({this.date, this.amount});
  factory _StatsGraphPoint.fromJson(Map<String, dynamic> json) => _$StatsGraphPointFromJson(json);

@override final  String? date;
@override final  String? amount;

/// Create a copy of StatsGraphPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsGraphPointCopyWith<_StatsGraphPoint> get copyWith => __$StatsGraphPointCopyWithImpl<_StatsGraphPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsGraphPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsGraphPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,amount);

@override
String toString() {
  return 'StatsGraphPoint(date: $date, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$StatsGraphPointCopyWith<$Res> implements $StatsGraphPointCopyWith<$Res> {
  factory _$StatsGraphPointCopyWith(_StatsGraphPoint value, $Res Function(_StatsGraphPoint) _then) = __$StatsGraphPointCopyWithImpl;
@override @useResult
$Res call({
 String? date, String? amount
});




}
/// @nodoc
class __$StatsGraphPointCopyWithImpl<$Res>
    implements _$StatsGraphPointCopyWith<$Res> {
  __$StatsGraphPointCopyWithImpl(this._self, this._then);

  final _StatsGraphPoint _self;
  final $Res Function(_StatsGraphPoint) _then;

/// Create a copy of StatsGraphPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? amount = freezed,}) {
  return _then(_StatsGraphPoint(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StatsGraphs {

 List<StatsGraphPoint>? get revenue;
/// Create a copy of StatsGraphs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsGraphsCopyWith<StatsGraphs> get copyWith => _$StatsGraphsCopyWithImpl<StatsGraphs>(this as StatsGraphs, _$identity);

  /// Serializes this StatsGraphs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsGraphs&&const DeepCollectionEquality().equals(other.revenue, revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(revenue));

@override
String toString() {
  return 'StatsGraphs(revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $StatsGraphsCopyWith<$Res>  {
  factory $StatsGraphsCopyWith(StatsGraphs value, $Res Function(StatsGraphs) _then) = _$StatsGraphsCopyWithImpl;
@useResult
$Res call({
 List<StatsGraphPoint>? revenue
});




}
/// @nodoc
class _$StatsGraphsCopyWithImpl<$Res>
    implements $StatsGraphsCopyWith<$Res> {
  _$StatsGraphsCopyWithImpl(this._self, this._then);

  final StatsGraphs _self;
  final $Res Function(StatsGraphs) _then;

/// Create a copy of StatsGraphs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? revenue = freezed,}) {
  return _then(_self.copyWith(
revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<StatsGraphPoint>?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsGraphs].
extension StatsGraphsPatterns on StatsGraphs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsGraphs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsGraphs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsGraphs value)  $default,){
final _that = this;
switch (_that) {
case _StatsGraphs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsGraphs value)?  $default,){
final _that = this;
switch (_that) {
case _StatsGraphs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StatsGraphPoint>? revenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsGraphs() when $default != null:
return $default(_that.revenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StatsGraphPoint>? revenue)  $default,) {final _that = this;
switch (_that) {
case _StatsGraphs():
return $default(_that.revenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StatsGraphPoint>? revenue)?  $default,) {final _that = this;
switch (_that) {
case _StatsGraphs() when $default != null:
return $default(_that.revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsGraphs implements StatsGraphs {
  const _StatsGraphs({final  List<StatsGraphPoint>? revenue}): _revenue = revenue;
  factory _StatsGraphs.fromJson(Map<String, dynamic> json) => _$StatsGraphsFromJson(json);

 final  List<StatsGraphPoint>? _revenue;
@override List<StatsGraphPoint>? get revenue {
  final value = _revenue;
  if (value == null) return null;
  if (_revenue is EqualUnmodifiableListView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of StatsGraphs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsGraphsCopyWith<_StatsGraphs> get copyWith => __$StatsGraphsCopyWithImpl<_StatsGraphs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsGraphsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsGraphs&&const DeepCollectionEquality().equals(other._revenue, _revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_revenue));

@override
String toString() {
  return 'StatsGraphs(revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$StatsGraphsCopyWith<$Res> implements $StatsGraphsCopyWith<$Res> {
  factory _$StatsGraphsCopyWith(_StatsGraphs value, $Res Function(_StatsGraphs) _then) = __$StatsGraphsCopyWithImpl;
@override @useResult
$Res call({
 List<StatsGraphPoint>? revenue
});




}
/// @nodoc
class __$StatsGraphsCopyWithImpl<$Res>
    implements _$StatsGraphsCopyWith<$Res> {
  __$StatsGraphsCopyWithImpl(this._self, this._then);

  final _StatsGraphs _self;
  final $Res Function(_StatsGraphs) _then;

/// Create a copy of StatsGraphs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? revenue = freezed,}) {
  return _then(_StatsGraphs(
revenue: freezed == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<StatsGraphPoint>?,
  ));
}


}


/// @nodoc
mixin _$Stats {

 StatsTotals? get totals; StatsGraphs? get graphs;
/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsCopyWith<Stats> get copyWith => _$StatsCopyWithImpl<Stats>(this as Stats, _$identity);

  /// Serializes this Stats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stats&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.graphs, graphs) || other.graphs == graphs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totals,graphs);

@override
String toString() {
  return 'Stats(totals: $totals, graphs: $graphs)';
}


}

/// @nodoc
abstract mixin class $StatsCopyWith<$Res>  {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) _then) = _$StatsCopyWithImpl;
@useResult
$Res call({
 StatsTotals? totals, StatsGraphs? graphs
});


$StatsTotalsCopyWith<$Res>? get totals;$StatsGraphsCopyWith<$Res>? get graphs;

}
/// @nodoc
class _$StatsCopyWithImpl<$Res>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._self, this._then);

  final Stats _self;
  final $Res Function(Stats) _then;

/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totals = freezed,Object? graphs = freezed,}) {
  return _then(_self.copyWith(
totals: freezed == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as StatsTotals?,graphs: freezed == graphs ? _self.graphs : graphs // ignore: cast_nullable_to_non_nullable
as StatsGraphs?,
  ));
}
/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsTotalsCopyWith<$Res>? get totals {
    if (_self.totals == null) {
    return null;
  }

  return $StatsTotalsCopyWith<$Res>(_self.totals!, (value) {
    return _then(_self.copyWith(totals: value));
  });
}/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsGraphsCopyWith<$Res>? get graphs {
    if (_self.graphs == null) {
    return null;
  }

  return $StatsGraphsCopyWith<$Res>(_self.graphs!, (value) {
    return _then(_self.copyWith(graphs: value));
  });
}
}


/// Adds pattern-matching-related methods to [Stats].
extension StatsPatterns on Stats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Stats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Stats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Stats value)  $default,){
final _that = this;
switch (_that) {
case _Stats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Stats value)?  $default,){
final _that = this;
switch (_that) {
case _Stats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StatsTotals? totals,  StatsGraphs? graphs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stats() when $default != null:
return $default(_that.totals,_that.graphs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StatsTotals? totals,  StatsGraphs? graphs)  $default,) {final _that = this;
switch (_that) {
case _Stats():
return $default(_that.totals,_that.graphs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StatsTotals? totals,  StatsGraphs? graphs)?  $default,) {final _that = this;
switch (_that) {
case _Stats() when $default != null:
return $default(_that.totals,_that.graphs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Stats implements Stats {
  const _Stats({this.totals, this.graphs});
  factory _Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

@override final  StatsTotals? totals;
@override final  StatsGraphs? graphs;

/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsCopyWith<_Stats> get copyWith => __$StatsCopyWithImpl<_Stats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stats&&(identical(other.totals, totals) || other.totals == totals)&&(identical(other.graphs, graphs) || other.graphs == graphs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totals,graphs);

@override
String toString() {
  return 'Stats(totals: $totals, graphs: $graphs)';
}


}

/// @nodoc
abstract mixin class _$StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$StatsCopyWith(_Stats value, $Res Function(_Stats) _then) = __$StatsCopyWithImpl;
@override @useResult
$Res call({
 StatsTotals? totals, StatsGraphs? graphs
});


@override $StatsTotalsCopyWith<$Res>? get totals;@override $StatsGraphsCopyWith<$Res>? get graphs;

}
/// @nodoc
class __$StatsCopyWithImpl<$Res>
    implements _$StatsCopyWith<$Res> {
  __$StatsCopyWithImpl(this._self, this._then);

  final _Stats _self;
  final $Res Function(_Stats) _then;

/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totals = freezed,Object? graphs = freezed,}) {
  return _then(_Stats(
totals: freezed == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as StatsTotals?,graphs: freezed == graphs ? _self.graphs : graphs // ignore: cast_nullable_to_non_nullable
as StatsGraphs?,
  ));
}

/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsTotalsCopyWith<$Res>? get totals {
    if (_self.totals == null) {
    return null;
  }

  return $StatsTotalsCopyWith<$Res>(_self.totals!, (value) {
    return _then(_self.copyWith(totals: value));
  });
}/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsGraphsCopyWith<$Res>? get graphs {
    if (_self.graphs == null) {
    return null;
  }

  return $StatsGraphsCopyWith<$Res>(_self.graphs!, (value) {
    return _then(_self.copyWith(graphs: value));
  });
}
}

// dart format on
