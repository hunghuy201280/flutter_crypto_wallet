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
class _$PasscodeEventTearOff {
  const _$PasscodeEventTearOff();

  _PasscodeStateSignInWithBiometricsChanged stateSignInWithBiometricsChanged(
      bool isBiometrics) {
    return _PasscodeStateSignInWithBiometricsChanged(
      isBiometrics,
    );
  }

  _PasscodeChanged passCodeChanged({required String passCode}) {
    return _PasscodeChanged(
      passCode: passCode,
    );
  }

  _PasscodeInitialLoaded initialLoaded() {
    return const _PasscodeInitialLoaded();
  }

  _PasscodeEventSignInWithBiometrics signInWithBiometrics() {
    return const _PasscodeEventSignInWithBiometrics();
  }

  _PasscodeEventSignInWithPasscode signInWithPasscode() {
    return const _PasscodeEventSignInWithPasscode();
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
    required TResult Function(String passCode) passCodeChanged,
    required TResult Function() initialLoaded,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signInWithPasscode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(_PasscodeChanged value) passCodeChanged,
    required TResult Function(_PasscodeInitialLoaded value) initialLoaded,
    required TResult Function(_PasscodeEventSignInWithBiometrics value)
        signInWithBiometrics,
    required TResult Function(_PasscodeEventSignInWithPasscode value)
        signInWithPasscode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
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
abstract class _$PasscodeStateSignInWithBiometricsChangedCopyWith<$Res> {
  factory _$PasscodeStateSignInWithBiometricsChangedCopyWith(
          _PasscodeStateSignInWithBiometricsChanged value,
          $Res Function(_PasscodeStateSignInWithBiometricsChanged) then) =
      __$PasscodeStateSignInWithBiometricsChangedCopyWithImpl<$Res>;
  $Res call({bool isBiometrics});
}

/// @nodoc
class __$PasscodeStateSignInWithBiometricsChangedCopyWithImpl<$Res>
    extends _$PasscodeEventCopyWithImpl<$Res>
    implements _$PasscodeStateSignInWithBiometricsChangedCopyWith<$Res> {
  __$PasscodeStateSignInWithBiometricsChangedCopyWithImpl(
      _PasscodeStateSignInWithBiometricsChanged _value,
      $Res Function(_PasscodeStateSignInWithBiometricsChanged) _then)
      : super(_value,
            (v) => _then(v as _PasscodeStateSignInWithBiometricsChanged));

  @override
  _PasscodeStateSignInWithBiometricsChanged get _value =>
      super._value as _PasscodeStateSignInWithBiometricsChanged;

  @override
  $Res call({
    Object? isBiometrics = freezed,
  }) {
    return _then(_PasscodeStateSignInWithBiometricsChanged(
      isBiometrics == freezed
          ? _value.isBiometrics
          : isBiometrics // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PasscodeStateSignInWithBiometricsChanged
    implements _PasscodeStateSignInWithBiometricsChanged {
  const _$_PasscodeStateSignInWithBiometricsChanged(this.isBiometrics);

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
            other is _PasscodeStateSignInWithBiometricsChanged &&
            const DeepCollectionEquality()
                .equals(other.isBiometrics, isBiometrics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isBiometrics));

  @JsonKey(ignore: true)
  @override
  _$PasscodeStateSignInWithBiometricsChangedCopyWith<
          _PasscodeStateSignInWithBiometricsChanged>
      get copyWith => __$PasscodeStateSignInWithBiometricsChangedCopyWithImpl<
          _PasscodeStateSignInWithBiometricsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometrics)
        stateSignInWithBiometricsChanged,
    required TResult Function(String passCode) passCodeChanged,
    required TResult Function() initialLoaded,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signInWithPasscode,
  }) {
    return stateSignInWithBiometricsChanged(isBiometrics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
  }) {
    return stateSignInWithBiometricsChanged?.call(isBiometrics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
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
    required TResult Function(_PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(_PasscodeChanged value) passCodeChanged,
    required TResult Function(_PasscodeInitialLoaded value) initialLoaded,
    required TResult Function(_PasscodeEventSignInWithBiometrics value)
        signInWithBiometrics,
    required TResult Function(_PasscodeEventSignInWithPasscode value)
        signInWithPasscode,
  }) {
    return stateSignInWithBiometricsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
  }) {
    return stateSignInWithBiometricsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
    required TResult orElse(),
  }) {
    if (stateSignInWithBiometricsChanged != null) {
      return stateSignInWithBiometricsChanged(this);
    }
    return orElse();
  }
}

abstract class _PasscodeStateSignInWithBiometricsChanged
    implements PasscodeEvent {
  const factory _PasscodeStateSignInWithBiometricsChanged(bool isBiometrics) =
      _$_PasscodeStateSignInWithBiometricsChanged;

  bool get isBiometrics;
  @JsonKey(ignore: true)
  _$PasscodeStateSignInWithBiometricsChangedCopyWith<
          _PasscodeStateSignInWithBiometricsChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasscodeChangedCopyWith<$Res> {
  factory _$PasscodeChangedCopyWith(
          _PasscodeChanged value, $Res Function(_PasscodeChanged) then) =
      __$PasscodeChangedCopyWithImpl<$Res>;
  $Res call({String passCode});
}

/// @nodoc
class __$PasscodeChangedCopyWithImpl<$Res>
    extends _$PasscodeEventCopyWithImpl<$Res>
    implements _$PasscodeChangedCopyWith<$Res> {
  __$PasscodeChangedCopyWithImpl(
      _PasscodeChanged _value, $Res Function(_PasscodeChanged) _then)
      : super(_value, (v) => _then(v as _PasscodeChanged));

  @override
  _PasscodeChanged get _value => super._value as _PasscodeChanged;

  @override
  $Res call({
    Object? passCode = freezed,
  }) {
    return _then(_PasscodeChanged(
      passCode: passCode == freezed
          ? _value.passCode
          : passCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasscodeChanged implements _PasscodeChanged {
  const _$_PasscodeChanged({required this.passCode});

  @override
  final String passCode;

  @override
  String toString() {
    return 'PasscodeEvent.passCodeChanged(passCode: $passCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasscodeChanged &&
            const DeepCollectionEquality().equals(other.passCode, passCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(passCode));

  @JsonKey(ignore: true)
  @override
  _$PasscodeChangedCopyWith<_PasscodeChanged> get copyWith =>
      __$PasscodeChangedCopyWithImpl<_PasscodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometrics)
        stateSignInWithBiometricsChanged,
    required TResult Function(String passCode) passCodeChanged,
    required TResult Function() initialLoaded,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signInWithPasscode,
  }) {
    return passCodeChanged(passCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
  }) {
    return passCodeChanged?.call(passCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
    required TResult orElse(),
  }) {
    if (passCodeChanged != null) {
      return passCodeChanged(passCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(_PasscodeChanged value) passCodeChanged,
    required TResult Function(_PasscodeInitialLoaded value) initialLoaded,
    required TResult Function(_PasscodeEventSignInWithBiometrics value)
        signInWithBiometrics,
    required TResult Function(_PasscodeEventSignInWithPasscode value)
        signInWithPasscode,
  }) {
    return passCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
  }) {
    return passCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
    required TResult orElse(),
  }) {
    if (passCodeChanged != null) {
      return passCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _PasscodeChanged implements PasscodeEvent {
  const factory _PasscodeChanged({required String passCode}) =
      _$_PasscodeChanged;

  String get passCode;
  @JsonKey(ignore: true)
  _$PasscodeChangedCopyWith<_PasscodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasscodeInitialLoadedCopyWith<$Res> {
  factory _$PasscodeInitialLoadedCopyWith(_PasscodeInitialLoaded value,
          $Res Function(_PasscodeInitialLoaded) then) =
      __$PasscodeInitialLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PasscodeInitialLoadedCopyWithImpl<$Res>
    extends _$PasscodeEventCopyWithImpl<$Res>
    implements _$PasscodeInitialLoadedCopyWith<$Res> {
  __$PasscodeInitialLoadedCopyWithImpl(_PasscodeInitialLoaded _value,
      $Res Function(_PasscodeInitialLoaded) _then)
      : super(_value, (v) => _then(v as _PasscodeInitialLoaded));

  @override
  _PasscodeInitialLoaded get _value => super._value as _PasscodeInitialLoaded;
}

/// @nodoc

class _$_PasscodeInitialLoaded implements _PasscodeInitialLoaded {
  const _$_PasscodeInitialLoaded();

  @override
  String toString() {
    return 'PasscodeEvent.initialLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PasscodeInitialLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometrics)
        stateSignInWithBiometricsChanged,
    required TResult Function(String passCode) passCodeChanged,
    required TResult Function() initialLoaded,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signInWithPasscode,
  }) {
    return initialLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
  }) {
    return initialLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
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
    required TResult Function(_PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(_PasscodeChanged value) passCodeChanged,
    required TResult Function(_PasscodeInitialLoaded value) initialLoaded,
    required TResult Function(_PasscodeEventSignInWithBiometrics value)
        signInWithBiometrics,
    required TResult Function(_PasscodeEventSignInWithPasscode value)
        signInWithPasscode,
  }) {
    return initialLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
  }) {
    return initialLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
    required TResult orElse(),
  }) {
    if (initialLoaded != null) {
      return initialLoaded(this);
    }
    return orElse();
  }
}

abstract class _PasscodeInitialLoaded implements PasscodeEvent {
  const factory _PasscodeInitialLoaded() = _$_PasscodeInitialLoaded;
}

/// @nodoc
abstract class _$PasscodeEventSignInWithBiometricsCopyWith<$Res> {
  factory _$PasscodeEventSignInWithBiometricsCopyWith(
          _PasscodeEventSignInWithBiometrics value,
          $Res Function(_PasscodeEventSignInWithBiometrics) then) =
      __$PasscodeEventSignInWithBiometricsCopyWithImpl<$Res>;
}

/// @nodoc
class __$PasscodeEventSignInWithBiometricsCopyWithImpl<$Res>
    extends _$PasscodeEventCopyWithImpl<$Res>
    implements _$PasscodeEventSignInWithBiometricsCopyWith<$Res> {
  __$PasscodeEventSignInWithBiometricsCopyWithImpl(
      _PasscodeEventSignInWithBiometrics _value,
      $Res Function(_PasscodeEventSignInWithBiometrics) _then)
      : super(_value, (v) => _then(v as _PasscodeEventSignInWithBiometrics));

  @override
  _PasscodeEventSignInWithBiometrics get _value =>
      super._value as _PasscodeEventSignInWithBiometrics;
}

/// @nodoc

class _$_PasscodeEventSignInWithBiometrics
    implements _PasscodeEventSignInWithBiometrics {
  const _$_PasscodeEventSignInWithBiometrics();

  @override
  String toString() {
    return 'PasscodeEvent.signInWithBiometrics()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasscodeEventSignInWithBiometrics);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometrics)
        stateSignInWithBiometricsChanged,
    required TResult Function(String passCode) passCodeChanged,
    required TResult Function() initialLoaded,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signInWithPasscode,
  }) {
    return signInWithBiometrics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
  }) {
    return signInWithBiometrics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
    required TResult orElse(),
  }) {
    if (signInWithBiometrics != null) {
      return signInWithBiometrics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(_PasscodeChanged value) passCodeChanged,
    required TResult Function(_PasscodeInitialLoaded value) initialLoaded,
    required TResult Function(_PasscodeEventSignInWithBiometrics value)
        signInWithBiometrics,
    required TResult Function(_PasscodeEventSignInWithPasscode value)
        signInWithPasscode,
  }) {
    return signInWithBiometrics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
  }) {
    return signInWithBiometrics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
    required TResult orElse(),
  }) {
    if (signInWithBiometrics != null) {
      return signInWithBiometrics(this);
    }
    return orElse();
  }
}

abstract class _PasscodeEventSignInWithBiometrics implements PasscodeEvent {
  const factory _PasscodeEventSignInWithBiometrics() =
      _$_PasscodeEventSignInWithBiometrics;
}

/// @nodoc
abstract class _$PasscodeEventSignInWithPasscodeCopyWith<$Res> {
  factory _$PasscodeEventSignInWithPasscodeCopyWith(
          _PasscodeEventSignInWithPasscode value,
          $Res Function(_PasscodeEventSignInWithPasscode) then) =
      __$PasscodeEventSignInWithPasscodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$PasscodeEventSignInWithPasscodeCopyWithImpl<$Res>
    extends _$PasscodeEventCopyWithImpl<$Res>
    implements _$PasscodeEventSignInWithPasscodeCopyWith<$Res> {
  __$PasscodeEventSignInWithPasscodeCopyWithImpl(
      _PasscodeEventSignInWithPasscode _value,
      $Res Function(_PasscodeEventSignInWithPasscode) _then)
      : super(_value, (v) => _then(v as _PasscodeEventSignInWithPasscode));

  @override
  _PasscodeEventSignInWithPasscode get _value =>
      super._value as _PasscodeEventSignInWithPasscode;
}

/// @nodoc

class _$_PasscodeEventSignInWithPasscode
    implements _PasscodeEventSignInWithPasscode {
  const _$_PasscodeEventSignInWithPasscode();

  @override
  String toString() {
    return 'PasscodeEvent.signInWithPasscode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasscodeEventSignInWithPasscode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBiometrics)
        stateSignInWithBiometricsChanged,
    required TResult Function(String passCode) passCodeChanged,
    required TResult Function() initialLoaded,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signInWithPasscode,
  }) {
    return signInWithPasscode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
  }) {
    return signInWithPasscode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBiometrics)? stateSignInWithBiometricsChanged,
    TResult Function(String passCode)? passCodeChanged,
    TResult Function()? initialLoaded,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signInWithPasscode,
    required TResult orElse(),
  }) {
    if (signInWithPasscode != null) {
      return signInWithPasscode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasscodeStateSignInWithBiometricsChanged value)
        stateSignInWithBiometricsChanged,
    required TResult Function(_PasscodeChanged value) passCodeChanged,
    required TResult Function(_PasscodeInitialLoaded value) initialLoaded,
    required TResult Function(_PasscodeEventSignInWithBiometrics value)
        signInWithBiometrics,
    required TResult Function(_PasscodeEventSignInWithPasscode value)
        signInWithPasscode,
  }) {
    return signInWithPasscode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
  }) {
    return signInWithPasscode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasscodeStateSignInWithBiometricsChanged value)?
        stateSignInWithBiometricsChanged,
    TResult Function(_PasscodeChanged value)? passCodeChanged,
    TResult Function(_PasscodeInitialLoaded value)? initialLoaded,
    TResult Function(_PasscodeEventSignInWithBiometrics value)?
        signInWithBiometrics,
    TResult Function(_PasscodeEventSignInWithPasscode value)?
        signInWithPasscode,
    required TResult orElse(),
  }) {
    if (signInWithPasscode != null) {
      return signInWithPasscode(this);
    }
    return orElse();
  }
}

abstract class _PasscodeEventSignInWithPasscode implements PasscodeEvent {
  const factory _PasscodeEventSignInWithPasscode() =
      _$_PasscodeEventSignInWithPasscode;
}

/// @nodoc
class _$PasscodeStateTearOff {
  const _$PasscodeStateTearOff();

  _PasscodeState call(
      {ImageProvider<Object>? avatar,
      required String password,
      PasscodeSignInStatus status = PasscodeSignInStatus.pure,
      bool isShowPassword = false,
      bool isSignInBiotremics = false}) {
    return _PasscodeState(
      avatar: avatar,
      password: password,
      status: status,
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
  PasscodeSignInStatus get status => throw _privateConstructorUsedError;
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
      PasscodeSignInStatus status,
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
    Object? status = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PasscodeSignInStatus,
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
      PasscodeSignInStatus status,
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
    Object? status = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PasscodeSignInStatus,
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

class _$_PasscodeState implements _PasscodeState {
  const _$_PasscodeState(
      {this.avatar,
      required this.password,
      this.status = PasscodeSignInStatus.pure,
      this.isShowPassword = false,
      this.isSignInBiotremics = false});

  @override
  final ImageProvider<Object>? avatar;
  @override
  final String password;
  @JsonKey()
  @override
  final PasscodeSignInStatus status;
  @JsonKey()
  @override
  final bool isShowPassword;
  @JsonKey()
  @override
  final bool isSignInBiotremics;

  @override
  String toString() {
    return 'PasscodeState(avatar: $avatar, password: $password, status: $status, isShowPassword: $isShowPassword, isSignInBiotremics: $isSignInBiotremics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasscodeState &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
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
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isShowPassword),
      const DeepCollectionEquality().hash(isSignInBiotremics));

  @JsonKey(ignore: true)
  @override
  _$PasscodeStateCopyWith<_PasscodeState> get copyWith =>
      __$PasscodeStateCopyWithImpl<_PasscodeState>(this, _$identity);
}

abstract class _PasscodeState implements PasscodeState {
  const factory _PasscodeState(
      {ImageProvider<Object>? avatar,
      required String password,
      PasscodeSignInStatus status,
      bool isShowPassword,
      bool isSignInBiotremics}) = _$_PasscodeState;

  @override
  ImageProvider<Object>? get avatar;
  @override
  String get password;
  @override
  PasscodeSignInStatus get status;
  @override
  bool get isShowPassword;
  @override
  bool get isSignInBiotremics;
  @override
  @JsonKey(ignore: true)
  _$PasscodeStateCopyWith<_PasscodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
