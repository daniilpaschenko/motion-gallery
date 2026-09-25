// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_Named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState()';
}


}

/// @nodoc
class $UserStateCopyWith<$Res>  {
$UserStateCopyWith(UserState _, $Res Function(UserState) __);
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserInitial value)?  initial,TResult Function( UserLoading value)?  loading,TResult Function( UserLoaded value)?  loaded,TResult Function( UserFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserInitial() when initial != null:
return initial(_that);case UserLoading() when loading != null:
return loading(_that);case UserLoaded() when loaded != null:
return loaded(_that);case UserFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserInitial value)  initial,required TResult Function( UserLoading value)  loading,required TResult Function( UserLoaded value)  loaded,required TResult Function( UserFailure value)  failure,}){
final _that = this;
switch (_that) {
case UserInitial():
return initial(_that);case UserLoading():
return loading(_that);case UserLoaded():
return loaded(_that);case UserFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserInitial value)?  initial,TResult? Function( UserLoading value)?  loading,TResult? Function( UserLoaded value)?  loaded,TResult? Function( UserFailure value)?  failure,}){
final _that = this;
switch (_that) {
case UserInitial() when initial != null:
return initial(_that);case UserLoading() when loading != null:
return loading(_that);case UserLoaded() when loaded != null:
return loaded(_that);case UserFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserEntity user,  bool isChangingUserName,  String? userNameError)?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserInitial() when initial != null:
return initial();case UserLoading() when loading != null:
return loading();case UserLoaded() when loaded != null:
return loaded(_that.user,_that.isChangingUserName,_that.userNameError);case UserFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserEntity user,  bool isChangingUserName,  String? userNameError)  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case UserInitial():
return initial();case UserLoading():
return loading();case UserLoaded():
return loaded(_that.user,_that.isChangingUserName,_that.userNameError);case UserFailure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserEntity user,  bool isChangingUserName,  String? userNameError)?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case UserInitial() when initial != null:
return initial();case UserLoading() when loading != null:
return loading();case UserLoaded() when loaded != null:
return loaded(_that.user,_that.isChangingUserName,_that.userNameError);case UserFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UserInitial implements UserState {
  const UserInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.initial()';
}


}




/// @nodoc


class UserLoading implements UserState {
  const UserLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.loading()';
}


}




/// @nodoc


class UserLoaded implements UserState {
  const UserLoaded({required this.user, this.isChangingUserName = false, this.userNameError});
  

 final  UserEntity user;
@JsonKey() final  bool isChangingUserName;
 final  String? userNameError;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLoadedCopyWith<UserLoaded> get copyWith => _$UserLoadedCopyWithImpl<UserLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLoaded&&(identical(other.user, user) || other.user == user)&&(identical(other.isChangingUserName, isChangingUserName) || other.isChangingUserName == isChangingUserName)&&(identical(other.userNameError, userNameError) || other.userNameError == userNameError));
}


@override
int get hashCode => Object.hash(runtimeType,user,isChangingUserName,userNameError);

@override
String toString() {
  return 'UserState.loaded(user: $user, isChangingUserName: $isChangingUserName, userNameError: $userNameError)';
}


}

/// @nodoc
abstract mixin class $UserLoadedCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserLoadedCopyWith(UserLoaded value, $Res Function(UserLoaded) _then) = _$UserLoadedCopyWithImpl;
@useResult
$Res call({
 UserEntity user, bool isChangingUserName, String? userNameError
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$UserLoadedCopyWithImpl<$Res>
    implements $UserLoadedCopyWith<$Res> {
  _$UserLoadedCopyWithImpl(this._self, this._then);

  final UserLoaded _self;
  final $Res Function(UserLoaded) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? isChangingUserName = null,Object? userNameError = freezed,}) {
  return _then(UserLoaded(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,isChangingUserName: null == isChangingUserName ? _self.isChangingUserName : isChangingUserName // ignore: cast_nullable_to_non_nullable
as bool,userNameError: freezed == userNameError ? _self.userNameError : userNameError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class UserFailure implements UserState {
  const UserFailure(this.message);
  

 final  String message;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserFailureCopyWith<UserFailure> get copyWith => _$UserFailureCopyWithImpl<UserFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $UserFailureCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserFailureCopyWith(UserFailure value, $Res Function(UserFailure) _then) = _$UserFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UserFailureCopyWithImpl<$Res>
    implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._self, this._then);

  final UserFailure _self;
  final $Res Function(UserFailure) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UserFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
