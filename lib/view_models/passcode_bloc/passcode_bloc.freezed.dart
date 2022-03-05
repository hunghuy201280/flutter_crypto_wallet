// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'passcode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasscodeStateTearOff {
  const _$PasscodeStateTearOff();

  _PasscodeState call(
      {ImageProvider<Object>? avatar,
      required String password,
      required bool isShowPassword,
      required bool isSignInBiotremics}) {
    return _PasscodeState(
      avatar: avatar,
      password: password,
      isShowPassword: isShowPassword,
      isSignInBiotremics: isSignInBiotremics,
    );
  }
}

/// @nodoc
const $PasscodeState = _$PasscodeStateTearOff();

/// @nodoc
mixin _$PasscodeState {
  ImageProvider<Object>? get avatar => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isShowPassword => throw _privateConstructorUsedError;
  bool get isSignInBiotremics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasscodeStateCopyWith<PasscodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasscodeStateCopyWith<$Res> {
  factory $PasscodeStateCopyWith(
          PasscodeState value, $Res Function(PasscodeState) then) =
      _$PasscodeStateCopyWithImpl<$Res>;
  $Res call(
      {ImageProvider<Object>? avatar,
      String password,
      bool isShowPassword,
      bool isSignInBiotremics});
}

/// @nodoc
class _$PasscodeStateCopyWithImpl<$Res>
    implements $PasscodeStateCopyWith<$Res> {
  _$PasscodeStateCopyWithImpl(this._value, this._then);

  final PasscodeState _value;
  // ignore: unused_field
  final $Res Function(PasscodeState) _then;

  @override
  $Res call({
    Object? avatar = freezed,
    Object? password = freezed,
    Object? isShowPassword = freezed,
    Object? isSignInBiotremics = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isShowPassword: isShowPassword == freezed
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInBiotremics: isSignInBiotremics == freezed
          ? _value.isSignInBiotremics
          : isSignInBiotremics // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PasscodeStateCopyWith<$Res>
    implements $PasscodeStateCopyWith<$Res> {
  factory _$PasscodeStateCopyWith(
          _PasscodeState value, $Res Function(_PasscodeState) then) =
      __$PasscodeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ImageProvider<Object>? avatar,
      String password,
      bool isShowPassword,
      bool isSignInBiotremics});
}

/// @nodoc
class __$PasscodeStateCopyWithImpl<$Res>
    extends _$PasscodeStateCopyWithImpl<$Res>
    implements _$PasscodeStateCopyWith<$Res> {
  __$PasscodeStateCopyWithImpl(
      _PasscodeState _value, $Res Function(_PasscodeState) _then)
      : super(_value, (v) => _then(v as _PasscodeState));

  @override
  _PasscodeState get _value => super._value as _PasscodeState;

  @override
  $Res call({
    Object? avatar = freezed,
    Object? password = freezed,
    Object? isShowPassword = freezed,
    Object? isSignInBiotremics = freezed,
  }) {
    return _then(_PasscodeState(
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isShowPassword: isShowPassword == freezed
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInBiotremics: isSignInBiotremics == freezed
          ? _value.isSignInBiotremics
          : isSignInBiotremics // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PasscodeState extends _PasscodeState {
  const _$_PasscodeState(
      {this.avatar,
      required this.password,
      required this.isShowPassword,
      required this.isSignInBiotremics})
      : super._();

  @override
  final ImageProvider<Object>? avatar;
  @override
  final String password;
  @override
  final bool isShowPassword;
  @override
  final bool isSignInBiotremics;

  @override
  String toString() {
    return 'PasscodeState(avatar: $avatar, password: $password, isShowPassword: $isShowPassword, isSignInBiotremics: $isSignInBiotremics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasscodeState &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.isShowPassword, isShowPassword) &&
            const DeepCollectionEquality()
                .equals(other.isSignInBiotremics, isSignInBiotremics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isShowPassword),
      const DeepCollectionEquality().hash(isSignInBiotremics));

  @JsonKey(ignore: true)
  @override
  _$PasscodeStateCopyWith<_PasscodeState> get copyWith =>
      __$PasscodeStateCopyWithImpl<_PasscodeState>(this, _$identity);
}

abstract class _PasscodeState extends PasscodeState {
  const factory _PasscodeState(
      {ImageProvider<Object>? avatar,
      required String password,
      required bool isShowPassword,
      required bool isSignInBiotremics}) = _$_PasscodeState;
  const _PasscodeState._() : super._();

  @override
  ImageProvider<Object>? get avatar;
  @override
  String get password;
  @override
  bool get isShowPassword;
  @override
  bool get isSignInBiotremics;
  @override
  @JsonKey(ignore: true)
  _$PasscodeStateCopyWith<_PasscodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PasscodeEventTearOff {
  const _$PasscodeEventTearOff();

  PasscodeStateSignInWithBiometricsChanged stateSignInWithBiometricsChanged(
      bool isBiometrics) {
    return PasscodeStateSignInWithBiometricsChanged(
      isBiometrics,
    );
  }

  PasscodeInitialLoaded initialLoaded() {
    return const PasscodeInitialLoaded();
  }
}

/// @nodoc
const $PasscodeEvent = _$PasscodeEventTearOff();

/// @nodoc
mixin _$PasscodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometrics)
        stateSignInWithBiometricsChanged,
    required TResult Function() initialLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function()? initialLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function()? initialLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(PasscodeInitialLoaded value) initialLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(PasscodeInitialLoaded value)? initialLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(PasscodeInitialLoaded value)? initialLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasscodeEventCopyWith<$Res> {
  factory $PasscodeEventCopyWith(
          PasscodeEvent value, $Res Function(PasscodeEvent) then) =
      _$PasscodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasscodeEventCopyWithImpl<$Res>
    implements $PasscodeEventCopyWith<$Res> {
  _$PasscodeEventCopyWithImpl(this._value, this._then);

  final PasscodeEvent _value;
  // ignore: unused_field
  final $Res Function(PasscodeEvent) _then;
}

/// @nodoc
abstract class $PasscodeStateSignInWithBiometricsChangedCopyWith<$Res> {
  factory $PasscodeStateSignInWithBiometricsChangedCopyWith(
          PasscodeStateSignInWithBiometricsChanged value,
          $Res Function(PasscodeStateSignInWithBiometricsChanged) then) =
      _$PasscodeStateSignInWithBiometricsChangedCopyWithImpl<$Res>;
  $Res call({bool isBiometrics});
}

/// @nodoc
class _$PasscodeStateSignInWithBiometricsChangedCopyWithImpl<$Res>
    extends _$PasscodeEventCopyWithImpl<$Res>
    implements $PasscodeStateSignInWithBiometricsChangedCopyWith<$Res> {
  _$PasscodeStateSignInWithBiometricsChangedCopyWithImpl(
      PasscodeStateSignInWithBiometricsChanged _value,
      $Res Function(PasscodeStateSignInWithBiometricsChanged) _then)
      : super(_value,
            (v) => _then(v as PasscodeStateSignInWithBiometricsChanged));

  @override
  PasscodeStateSignInWithBiometricsChanged get _value =>
      super._value as PasscodeStateSignInWithBiometricsChanged;

  @override
  $Res call({
    Object? isBiometrics = freezed,
  }) {
    return _then(PasscodeStateSignInWithBiometricsChanged(
      isBiometrics == freezed
          ? _value.isBiometrics
          : isBiometrics // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasscodeStateSignInWithBiometricsChanged
    implements PasscodeStateSignInWithBiometricsChanged {
  const _$PasscodeStateSignInWithBiometricsChanged(this.isBiometrics);

  @override
  final bool isBiometrics;

  @override
  String toString() {
    return 'PasscodeEvent.stateSignInWithBiometricsChanged(isBiometrics: $isBiometrics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasscodeStateSignInWithBiometricsChanged &&
            const DeepCollectionEquality()
                .equals(other.isBiometrics, isBiometrics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isBiometrics));

  @JsonKey(ignore: true)
  @override
  $PasscodeStateSignInWithBiometricsChangedCopyWith<
          PasscodeStateSignInWithBiometricsChanged>
      get copyWith => _$PasscodeStateSignInWithBiometricsChangedCopyWithImpl<
          PasscodeStateSignInWithBiometricsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometrics)
        stateSignInWithBiometricsChanged,
    required TResult Function() initialLoaded,
  }) {
    return stateSignInWithBiometricsChanged(isBiometrics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function()? initialLoaded,
  }) {
    return stateSignInWithBiometricsChanged?.call(isBiometrics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function()? initialLoaded,
    required TResult orElse(),
  }) {
    if (stateSignInWithBiometricsChanged != null) {
      return stateSignInWithBiometricsChanged(isBiometrics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(PasscodeInitialLoaded value) initialLoaded,
  }) {
    return stateSignInWithBiometricsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(PasscodeInitialLoaded value)? initialLoaded,
  }) {
    return stateSignInWithBiometricsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(PasscodeInitialLoaded value)? initialLoaded,
    required TResult orElse(),
  }) {
    if (stateSignInWithBiometricsChanged != null) {
      return stateSignInWithBiometricsChanged(this);
    }
    return orElse();
  }
}

abstract class PasscodeStateSignInWithBiometricsChanged
    implements PasscodeEvent {
  const factory PasscodeStateSignInWithBiometricsChanged(bool isBiometrics) =
      _$PasscodeStateSignInWithBiometricsChanged;

  bool get isBiometrics;
  @JsonKey(ignore: true)
  $PasscodeStateSignInWithBiometricsChangedCopyWith<
          PasscodeStateSignInWithBiometricsChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasscodeInitialLoadedCopyWith<$Res> {
  factory $PasscodeInitialLoadedCopyWith(PasscodeInitialLoaded value,
          $Res Function(PasscodeInitialLoaded) then) =
      _$PasscodeInitialLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasscodeInitialLoadedCopyWithImpl<$Res>
    extends _$PasscodeEventCopyWithImpl<$Res>
    implements $PasscodeInitialLoadedCopyWith<$Res> {
  _$PasscodeInitialLoadedCopyWithImpl(
      PasscodeInitialLoaded _value, $Res Function(PasscodeInitialLoaded) _then)
      : super(_value, (v) => _then(v as PasscodeInitialLoaded));

  @override
  PasscodeInitialLoaded get _value => super._value as PasscodeInitialLoaded;
}

/// @nodoc

class _$PasscodeInitialLoaded implements PasscodeInitialLoaded {
  const _$PasscodeInitialLoaded();

  @override
  String toString() {
    return 'PasscodeEvent.initialLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasscodeInitialLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometrics)
        stateSignInWithBiometricsChanged,
    required TResult Function() initialLoaded,
  }) {
    return initialLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function()? initialLoaded,
  }) {
    return initialLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function()? initialLoaded,
    required TResult orElse(),
  }) {
    if (initialLoaded != null) {
      return initialLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(PasscodeInitialLoaded value) initialLoaded,
  }) {
    return initialLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(PasscodeInitialLoaded value)? initialLoaded,
  }) {
    return initialLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(PasscodeInitialLoaded value)? initialLoaded,
    required TResult orElse(),
  }) {
    if (initialLoaded != null) {
      return initialLoaded(this);
    }
    return orElse();
  }
}

abstract class PasscodeInitialLoaded implements PasscodeEvent {
  const factory PasscodeInitialLoaded() = _$PasscodeInitialLoaded;
}
