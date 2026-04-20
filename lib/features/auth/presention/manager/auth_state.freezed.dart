// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {

 int get currentCycle; bool get isPasswordVisible; bool get isConfirmPasswordVisible; RequestState<LoginResponse> get loginState; RequestState<SingUpResponse> get signUpState;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.currentCycle, currentCycle) || other.currentCycle == currentCycle)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.isConfirmPasswordVisible, isConfirmPasswordVisible) || other.isConfirmPasswordVisible == isConfirmPasswordVisible)&&(identical(other.loginState, loginState) || other.loginState == loginState)&&(identical(other.signUpState, signUpState) || other.signUpState == signUpState));
}


@override
int get hashCode => Object.hash(runtimeType,currentCycle,isPasswordVisible,isConfirmPasswordVisible,loginState,signUpState);

@override
String toString() {
  return 'AuthState(currentCycle: $currentCycle, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, loginState: $loginState, signUpState: $signUpState)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 int currentCycle, bool isPasswordVisible, bool isConfirmPasswordVisible, RequestState<LoginResponse> loginState, RequestState<SingUpResponse> signUpState
});


$RequestStateCopyWith<LoginResponse, $Res> get loginState;$RequestStateCopyWith<SingUpResponse, $Res> get signUpState;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentCycle = null,Object? isPasswordVisible = null,Object? isConfirmPasswordVisible = null,Object? loginState = null,Object? signUpState = null,}) {
  return _then(_self.copyWith(
currentCycle: null == currentCycle ? _self.currentCycle : currentCycle // ignore: cast_nullable_to_non_nullable
as int,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordVisible: null == isConfirmPasswordVisible ? _self.isConfirmPasswordVisible : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,loginState: null == loginState ? _self.loginState : loginState // ignore: cast_nullable_to_non_nullable
as RequestState<LoginResponse>,signUpState: null == signUpState ? _self.signUpState : signUpState // ignore: cast_nullable_to_non_nullable
as RequestState<SingUpResponse>,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<LoginResponse, $Res> get loginState {
  
  return $RequestStateCopyWith<LoginResponse, $Res>(_self.loginState, (value) {
    return _then(_self.copyWith(loginState: value));
  });
}/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<SingUpResponse, $Res> get signUpState {
  
  return $RequestStateCopyWith<SingUpResponse, $Res>(_self.signUpState, (value) {
    return _then(_self.copyWith(signUpState: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentCycle,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  RequestState<LoginResponse> loginState,  RequestState<SingUpResponse> signUpState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.currentCycle,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.loginState,_that.signUpState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentCycle,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  RequestState<LoginResponse> loginState,  RequestState<SingUpResponse> signUpState)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.currentCycle,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.loginState,_that.signUpState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentCycle,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  RequestState<LoginResponse> loginState,  RequestState<SingUpResponse> signUpState)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.currentCycle,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.loginState,_that.signUpState);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.currentCycle = 1, this.isPasswordVisible = false, this.isConfirmPasswordVisible = false, this.loginState = const InitialState(), this.signUpState = const InitialState()});
  

@override@JsonKey() final  int currentCycle;
@override@JsonKey() final  bool isPasswordVisible;
@override@JsonKey() final  bool isConfirmPasswordVisible;
@override@JsonKey() final  RequestState<LoginResponse> loginState;
@override@JsonKey() final  RequestState<SingUpResponse> signUpState;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.currentCycle, currentCycle) || other.currentCycle == currentCycle)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.isConfirmPasswordVisible, isConfirmPasswordVisible) || other.isConfirmPasswordVisible == isConfirmPasswordVisible)&&(identical(other.loginState, loginState) || other.loginState == loginState)&&(identical(other.signUpState, signUpState) || other.signUpState == signUpState));
}


@override
int get hashCode => Object.hash(runtimeType,currentCycle,isPasswordVisible,isConfirmPasswordVisible,loginState,signUpState);

@override
String toString() {
  return 'AuthState(currentCycle: $currentCycle, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, loginState: $loginState, signUpState: $signUpState)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 int currentCycle, bool isPasswordVisible, bool isConfirmPasswordVisible, RequestState<LoginResponse> loginState, RequestState<SingUpResponse> signUpState
});


@override $RequestStateCopyWith<LoginResponse, $Res> get loginState;@override $RequestStateCopyWith<SingUpResponse, $Res> get signUpState;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentCycle = null,Object? isPasswordVisible = null,Object? isConfirmPasswordVisible = null,Object? loginState = null,Object? signUpState = null,}) {
  return _then(_AuthState(
currentCycle: null == currentCycle ? _self.currentCycle : currentCycle // ignore: cast_nullable_to_non_nullable
as int,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordVisible: null == isConfirmPasswordVisible ? _self.isConfirmPasswordVisible : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,loginState: null == loginState ? _self.loginState : loginState // ignore: cast_nullable_to_non_nullable
as RequestState<LoginResponse>,signUpState: null == signUpState ? _self.signUpState : signUpState // ignore: cast_nullable_to_non_nullable
as RequestState<SingUpResponse>,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<LoginResponse, $Res> get loginState {
  
  return $RequestStateCopyWith<LoginResponse, $Res>(_self.loginState, (value) {
    return _then(_self.copyWith(loginState: value));
  });
}/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestStateCopyWith<SingUpResponse, $Res> get signUpState {
  
  return $RequestStateCopyWith<SingUpResponse, $Res>(_self.signUpState, (value) {
    return _then(_self.copyWith(signUpState: value));
  });
}
}

// dart format on
