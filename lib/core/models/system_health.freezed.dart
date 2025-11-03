// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SystemHealth _$SystemHealthFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'operational':
          return Operational.fromJson(
            json
          );
                case 'degraded':
          return Degraded.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'SystemHealth',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$SystemHealth {



  /// Serializes this SystemHealth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemHealth);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemHealth()';
}


}

/// @nodoc
class $SystemHealthCopyWith<$Res>  {
$SystemHealthCopyWith(SystemHealth _, $Res Function(SystemHealth) __);
}


/// Adds pattern-matching-related methods to [SystemHealth].
extension SystemHealthPatterns on SystemHealth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Operational value)?  operational,TResult Function( Degraded value)?  degraded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Operational() when operational != null:
return operational(_that);case Degraded() when degraded != null:
return degraded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Operational value)  operational,required TResult Function( Degraded value)  degraded,}){
final _that = this;
switch (_that) {
case Operational():
return operational(_that);case Degraded():
return degraded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Operational value)?  operational,TResult? Function( Degraded value)?  degraded,}){
final _that = this;
switch (_that) {
case Operational() when operational != null:
return operational(_that);case Degraded() when degraded != null:
return degraded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  operational,TResult Function( String userMessage,  DateTime lastSuccessfulSync)?  degraded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Operational() when operational != null:
return operational();case Degraded() when degraded != null:
return degraded(_that.userMessage,_that.lastSuccessfulSync);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  operational,required TResult Function( String userMessage,  DateTime lastSuccessfulSync)  degraded,}) {final _that = this;
switch (_that) {
case Operational():
return operational();case Degraded():
return degraded(_that.userMessage,_that.lastSuccessfulSync);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  operational,TResult? Function( String userMessage,  DateTime lastSuccessfulSync)?  degraded,}) {final _that = this;
switch (_that) {
case Operational() when operational != null:
return operational();case Degraded() when degraded != null:
return degraded(_that.userMessage,_that.lastSuccessfulSync);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class Operational implements SystemHealth {
  const Operational({final  String? $type}): $type = $type ?? 'operational';
  factory Operational.fromJson(Map<String, dynamic> json) => _$OperationalFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$OperationalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Operational);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemHealth.operational()';
}


}

/// @nodoc
class $OperationalCopyWith<$Res> implements $SystemHealthCopyWith<$Res> {
$OperationalCopyWith(Operational _, $Res Function(Operational) __);
}
/// @nodoc
class _$OperationalCopyWithImpl<$Res>
    implements $OperationalCopyWith<$Res> {
  _$OperationalCopyWithImpl(this._self, this._then);

  final Operational _self;
  final $Res Function(Operational) _then;




}

/// @nodoc
@JsonSerializable()

class Degraded implements SystemHealth {
  const Degraded({required this.userMessage, required this.lastSuccessfulSync, final  String? $type}): $type = $type ?? 'degraded';
  factory Degraded.fromJson(Map<String, dynamic> json) => _$DegradedFromJson(json);

 final  String userMessage;
 final  DateTime lastSuccessfulSync;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SystemHealth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DegradedCopyWith<Degraded> get copyWith => _$DegradedCopyWithImpl<Degraded>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DegradedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Degraded&&(identical(other.userMessage, userMessage) || other.userMessage == userMessage)&&(identical(other.lastSuccessfulSync, lastSuccessfulSync) || other.lastSuccessfulSync == lastSuccessfulSync));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userMessage,lastSuccessfulSync);

@override
String toString() {
  return 'SystemHealth.degraded(userMessage: $userMessage, lastSuccessfulSync: $lastSuccessfulSync)';
}


}

/// @nodoc
abstract mixin class $DegradedCopyWith<$Res> implements $SystemHealthCopyWith<$Res> {
  factory $DegradedCopyWith(Degraded value, $Res Function(Degraded) _then) = _$DegradedCopyWithImpl;
@useResult
$Res call({
 String userMessage, DateTime lastSuccessfulSync
});




}
/// @nodoc
class _$DegradedCopyWithImpl<$Res>
    implements $DegradedCopyWith<$Res> {
  _$DegradedCopyWithImpl(this._self, this._then);

  final Degraded _self;
  final $Res Function(Degraded) _then;

/// Create a copy of SystemHealth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userMessage = null,Object? lastSuccessfulSync = null,}) {
  return _then(Degraded(
userMessage: null == userMessage ? _self.userMessage : userMessage // ignore: cast_nullable_to_non_nullable
as String,lastSuccessfulSync: null == lastSuccessfulSync ? _self.lastSuccessfulSync : lastSuccessfulSync // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
