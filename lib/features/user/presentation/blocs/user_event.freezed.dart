// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserStarted value)?  started,TResult Function( UserFetched value)?  userFetched,TResult Function( UserChangeUserNameRequested value)?  changeUserNameRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserStarted() when started != null:
return started(_that);case UserFetched() when userFetched != null:
return userFetched(_that);case UserChangeUserNameRequested() when changeUserNameRequested != null:
return changeUserNameRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserStarted value)  started,required TResult Function( UserFetched value)  userFetched,required TResult Function( UserChangeUserNameRequested value)  changeUserNameRequested,}){
final _that = this;
switch (_that) {
case UserStarted():
return started(_that);case UserFetched():
return userFetched(_that);case UserChangeUserNameRequested():
return changeUserNameRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserStarted value)?  started,TResult? Function( UserFetched value)?  userFetched,TResult? Function( UserChangeUserNameRequested value)?  changeUserNameRequested,}){
final _that = this;
switch (_that) {
case UserStarted() when started != null:
return started(_that);case UserFetched() when userFetched != null:
return userFetched(_that);case UserChangeUserNameRequested() when changeUserNameRequested != null:
return changeUserNameRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  userFetched,TResult Function( String name)?  changeUserNameRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserStarted() when started != null:
return started();case UserFetched() when userFetched != null:
return userFetched();case UserChangeUserNameRequested() when changeUserNameRequested != null:
return changeUserNameRequested(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  userFetched,required TResult Function( String name)  changeUserNameRequested,}) {final _that = this;
switch (_that) {
case UserStarted():
return started();case UserFetched():
return userFetched();case UserChangeUserNameRequested():
return changeUserNameRequested(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  userFetched,TResult? Function( String name)?  changeUserNameRequested,}) {final _that = this;
switch (_that) {
case UserStarted() when started != null:
return started();case UserFetched() when userFetched != null:
return userFetched();case UserChangeUserNameRequested() when changeUserNameRequested != null:
return changeUserNameRequested(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class UserStarted implements UserEvent {
  const UserStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.started()';
}


}




/// @nodoc


class UserFetched implements UserEvent {
  const UserFetched();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserFetched);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.userFetched()';
}


}




/// @nodoc


class UserChangeUserNameRequested implements UserEvent {
  const UserChangeUserNameRequested(this.name);
  

 final  String name;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserChangeUserNameRequestedCopyWith<UserChangeUserNameRequested> get copyWith => _$UserChangeUserNameRequestedCopyWithImpl<UserChangeUserNameRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserChangeUserNameRequested&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'UserEvent.changeUserNameRequested(name: $name)';
}


}

/// @nodoc
abstract mixin class $UserChangeUserNameRequestedCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $UserChangeUserNameRequestedCopyWith(UserChangeUserNameRequested value, $Res Function(UserChangeUserNameRequested) _then) = _$UserChangeUserNameRequestedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$UserChangeUserNameRequestedCopyWithImpl<$Res>
    implements $UserChangeUserNameRequestedCopyWith<$Res> {
  _$UserChangeUserNameRequestedCopyWithImpl(this._self, this._then);

  final UserChangeUserNameRequested _self;
  final $Res Function(UserChangeUserNameRequested) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(UserChangeUserNameRequested(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
