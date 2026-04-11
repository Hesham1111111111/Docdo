// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  int get currentCycle => throw _privateConstructorUsedError;
  RequestState<AuthModel> get signUpState =>
      throw _privateConstructorUsedError;
  RequestState<AuthModel> get loginState =>
      throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
  _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {int currentCycle,
        RequestState<AuthModel> signUpState,
        RequestState<AuthModel> loginState,
        bool isObscure});

  $RequestStateCopyWith<AuthModel, $Res> get signUpState;
  $RequestStateCopyWith<AuthModel, $Res> get loginState;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCycle = null,
    Object? signUpState = null,
    Object? loginState = null,
    Object? isObscure = null,
  }) {
    return _then(_value.copyWith(
      currentCycle: null == currentCycle
          ? _value.currentCycle
          : currentCycle // ignore: cast_nullable_to_non_nullable
      as int,
      signUpState: null == signUpState
          ? _value.signUpState
          : signUpState // ignore: cast_nullable_to_non_nullable
      as RequestState<AuthModel>,
      loginState: null == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
      as RequestState<AuthModel>,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
      as bool,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<AuthModel, $Res> get signUpState {
    return $RequestStateCopyWith<AuthModel, $Res>(_value.signUpState,
            (value) {
          return _then(_value.copyWith(signUpState: value) as $Val);
        });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<AuthModel, $Res> get loginState {
    return $RequestStateCopyWith<AuthModel, $Res>(_value.loginState,
            (value) {
          return _then(_value.copyWith(loginState: value) as $Val);
        });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
      _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
  __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentCycle,
        RequestState<AuthModel> signUpState,
        RequestState<AuthModel> loginState,
        bool isObscure});

  @override
  $RequestStateCopyWith<AuthModel, $Res> get signUpState;
  @override
  $RequestStateCopyWith<AuthModel, $Res> get loginState;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCycle = null,
    Object? signUpState = null,
    Object? loginState = null,
    Object? isObscure = null,
  }) {
    return _then(_$AuthStateImpl(
      currentCycle: null == currentCycle
          ? _value.currentCycle
          : currentCycle // ignore: cast_nullable_to_non_nullable
      as int,
      signUpState: null == signUpState
          ? _value.signUpState
          : signUpState // ignore: cast_nullable_to_non_nullable
      as RequestState<AuthModel>,
      loginState: null == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
      as RequestState<AuthModel>,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.currentCycle = 1,
        this.signUpState = const InitialState(),
        this.loginState = const InitialState(),
        this.isObscure = true});

  @override
  @JsonKey()
  final int currentCycle;
  @override
  @JsonKey()
  final RequestState<AuthModel> signUpState;
  @override
  @JsonKey()
  final RequestState<AuthModel> loginState;
  @override
  @JsonKey()
  final bool isObscure;

  @override
  String toString() {
    return 'AuthState(currentCycle: $currentCycle, signUpState: $signUpState, loginState: $loginState, isObscure: $isObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.currentCycle, currentCycle) ||
                other.currentCycle == currentCycle) &&
            (identical(other.signUpState, signUpState) ||
                other.signUpState == signUpState) &&
            (identical(other.loginState, loginState) ||
                other.loginState == loginState) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentCycle, signUpState, loginState, isObscure);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final int currentCycle,
        final RequestState<AuthModel> signUpState,
        final RequestState<AuthModel> loginState,
        final bool isObscure}) = _$AuthStateImpl;

  @override
  int get currentCycle;
  @override
  RequestState<AuthModel> get signUpState;
  @override
  RequestState<AuthModel> get loginState;
  @override
  bool get isObscure;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
