// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateWalletEventTearOff {
  const _$CreateWalletEventTearOff();

  _CreateWalletEventPasswordChanged passwordChanged(
      {required String password}) {
    return _CreateWalletEventPasswordChanged(
      password: password,
    );
  }

  _CreateWalletEventRePasswordChanged rePasswordChanged(
      {required String rePassword}) {
    return _CreateWalletEventRePasswordChanged(
      rePassword: rePassword,
    );
  }

  _CreateWalletEventCheckBox checkBox({required bool isCheck}) {
    return _CreateWalletEventCheckBox(
      isCheck: isCheck,
    );
  }

  _CreateWalletEventRequest requestCreateWallet() {
    return const _CreateWalletEventRequest();
  }

  _CreateWalletEventStart startApp() {
    return const _CreateWalletEventStart();
  }
}

/// @nodoc
const $CreateWalletEvent = _$CreateWalletEventTearOff();

/// @nodoc
mixin _$CreateWalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String rePassword) rePasswordChanged,
    required TResult Function(bool isCheck) checkBox,
    required TResult Function() requestCreateWallet,
    required TResult Function() startApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletEventPasswordChanged value)
        passwordChanged,
    required TResult Function(_CreateWalletEventRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(_CreateWalletEventCheckBox value) checkBox,
    required TResult Function(_CreateWalletEventRequest value)
        requestCreateWallet,
    required TResult Function(_CreateWalletEventStart value) startApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletEventCopyWith<$Res> {
  factory $CreateWalletEventCopyWith(
          CreateWalletEvent value, $Res Function(CreateWalletEvent) then) =
      _$CreateWalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateWalletEventCopyWithImpl<$Res>
    implements $CreateWalletEventCopyWith<$Res> {
  _$CreateWalletEventCopyWithImpl(this._value, this._then);

  final CreateWalletEvent _value;
  // ignore: unused_field
  final $Res Function(CreateWalletEvent) _then;
}

/// @nodoc
abstract class _$CreateWalletEventPasswordChangedCopyWith<$Res> {
  factory _$CreateWalletEventPasswordChangedCopyWith(
          _CreateWalletEventPasswordChanged value,
          $Res Function(_CreateWalletEventPasswordChanged) then) =
      __$CreateWalletEventPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$CreateWalletEventPasswordChangedCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res>
    implements _$CreateWalletEventPasswordChangedCopyWith<$Res> {
  __$CreateWalletEventPasswordChangedCopyWithImpl(
      _CreateWalletEventPasswordChanged _value,
      $Res Function(_CreateWalletEventPasswordChanged) _then)
      : super(_value, (v) => _then(v as _CreateWalletEventPasswordChanged));

  @override
  _CreateWalletEventPasswordChanged get _value =>
      super._value as _CreateWalletEventPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_CreateWalletEventPasswordChanged(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateWalletEventPasswordChanged
    implements _CreateWalletEventPasswordChanged {
  const _$_CreateWalletEventPasswordChanged({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'CreateWalletEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWalletEventPasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$CreateWalletEventPasswordChangedCopyWith<_CreateWalletEventPasswordChanged>
      get copyWith => __$CreateWalletEventPasswordChangedCopyWithImpl<
          _CreateWalletEventPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String rePassword) rePasswordChanged,
    required TResult Function(bool isCheck) checkBox,
    required TResult Function() requestCreateWallet,
    required TResult Function() startApp,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletEventPasswordChanged value)
        passwordChanged,
    required TResult Function(_CreateWalletEventRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(_CreateWalletEventCheckBox value) checkBox,
    required TResult Function(_CreateWalletEventRequest value)
        requestCreateWallet,
    required TResult Function(_CreateWalletEventStart value) startApp,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletEventPasswordChanged implements CreateWalletEvent {
  const factory _CreateWalletEventPasswordChanged({required String password}) =
      _$_CreateWalletEventPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$CreateWalletEventPasswordChangedCopyWith<_CreateWalletEventPasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateWalletEventRePasswordChangedCopyWith<$Res> {
  factory _$CreateWalletEventRePasswordChangedCopyWith(
          _CreateWalletEventRePasswordChanged value,
          $Res Function(_CreateWalletEventRePasswordChanged) then) =
      __$CreateWalletEventRePasswordChangedCopyWithImpl<$Res>;
  $Res call({String rePassword});
}

/// @nodoc
class __$CreateWalletEventRePasswordChangedCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res>
    implements _$CreateWalletEventRePasswordChangedCopyWith<$Res> {
  __$CreateWalletEventRePasswordChangedCopyWithImpl(
      _CreateWalletEventRePasswordChanged _value,
      $Res Function(_CreateWalletEventRePasswordChanged) _then)
      : super(_value, (v) => _then(v as _CreateWalletEventRePasswordChanged));

  @override
  _CreateWalletEventRePasswordChanged get _value =>
      super._value as _CreateWalletEventRePasswordChanged;

  @override
  $Res call({
    Object? rePassword = freezed,
  }) {
    return _then(_CreateWalletEventRePasswordChanged(
      rePassword: rePassword == freezed
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateWalletEventRePasswordChanged
    implements _CreateWalletEventRePasswordChanged {
  const _$_CreateWalletEventRePasswordChanged({required this.rePassword});

  @override
  final String rePassword;

  @override
  String toString() {
    return 'CreateWalletEvent.rePasswordChanged(rePassword: $rePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWalletEventRePasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.rePassword, rePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rePassword));

  @JsonKey(ignore: true)
  @override
  _$CreateWalletEventRePasswordChangedCopyWith<
          _CreateWalletEventRePasswordChanged>
      get copyWith => __$CreateWalletEventRePasswordChangedCopyWithImpl<
          _CreateWalletEventRePasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String rePassword) rePasswordChanged,
    required TResult Function(bool isCheck) checkBox,
    required TResult Function() requestCreateWallet,
    required TResult Function() startApp,
  }) {
    return rePasswordChanged(rePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
  }) {
    return rePasswordChanged?.call(rePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
    required TResult orElse(),
  }) {
    if (rePasswordChanged != null) {
      return rePasswordChanged(rePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletEventPasswordChanged value)
        passwordChanged,
    required TResult Function(_CreateWalletEventRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(_CreateWalletEventCheckBox value) checkBox,
    required TResult Function(_CreateWalletEventRequest value)
        requestCreateWallet,
    required TResult Function(_CreateWalletEventStart value) startApp,
  }) {
    return rePasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
  }) {
    return rePasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
    required TResult orElse(),
  }) {
    if (rePasswordChanged != null) {
      return rePasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletEventRePasswordChanged
    implements CreateWalletEvent {
  const factory _CreateWalletEventRePasswordChanged(
      {required String rePassword}) = _$_CreateWalletEventRePasswordChanged;

  String get rePassword;
  @JsonKey(ignore: true)
  _$CreateWalletEventRePasswordChangedCopyWith<
          _CreateWalletEventRePasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateWalletEventCheckBoxCopyWith<$Res> {
  factory _$CreateWalletEventCheckBoxCopyWith(_CreateWalletEventCheckBox value,
          $Res Function(_CreateWalletEventCheckBox) then) =
      __$CreateWalletEventCheckBoxCopyWithImpl<$Res>;
  $Res call({bool isCheck});
}

/// @nodoc
class __$CreateWalletEventCheckBoxCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res>
    implements _$CreateWalletEventCheckBoxCopyWith<$Res> {
  __$CreateWalletEventCheckBoxCopyWithImpl(_CreateWalletEventCheckBox _value,
      $Res Function(_CreateWalletEventCheckBox) _then)
      : super(_value, (v) => _then(v as _CreateWalletEventCheckBox));

  @override
  _CreateWalletEventCheckBox get _value =>
      super._value as _CreateWalletEventCheckBox;

  @override
  $Res call({
    Object? isCheck = freezed,
  }) {
    return _then(_CreateWalletEventCheckBox(
      isCheck: isCheck == freezed
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateWalletEventCheckBox implements _CreateWalletEventCheckBox {
  const _$_CreateWalletEventCheckBox({required this.isCheck});

  @override
  final bool isCheck;

  @override
  String toString() {
    return 'CreateWalletEvent.checkBox(isCheck: $isCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWalletEventCheckBox &&
            const DeepCollectionEquality().equals(other.isCheck, isCheck));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isCheck));

  @JsonKey(ignore: true)
  @override
  _$CreateWalletEventCheckBoxCopyWith<_CreateWalletEventCheckBox>
      get copyWith =>
          __$CreateWalletEventCheckBoxCopyWithImpl<_CreateWalletEventCheckBox>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String rePassword) rePasswordChanged,
    required TResult Function(bool isCheck) checkBox,
    required TResult Function() requestCreateWallet,
    required TResult Function() startApp,
  }) {
    return checkBox(isCheck);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
  }) {
    return checkBox?.call(isCheck);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
    required TResult orElse(),
  }) {
    if (checkBox != null) {
      return checkBox(isCheck);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletEventPasswordChanged value)
        passwordChanged,
    required TResult Function(_CreateWalletEventRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(_CreateWalletEventCheckBox value) checkBox,
    required TResult Function(_CreateWalletEventRequest value)
        requestCreateWallet,
    required TResult Function(_CreateWalletEventStart value) startApp,
  }) {
    return checkBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
  }) {
    return checkBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
    required TResult orElse(),
  }) {
    if (checkBox != null) {
      return checkBox(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletEventCheckBox implements CreateWalletEvent {
  const factory _CreateWalletEventCheckBox({required bool isCheck}) =
      _$_CreateWalletEventCheckBox;

  bool get isCheck;
  @JsonKey(ignore: true)
  _$CreateWalletEventCheckBoxCopyWith<_CreateWalletEventCheckBox>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateWalletEventRequestCopyWith<$Res> {
  factory _$CreateWalletEventRequestCopyWith(_CreateWalletEventRequest value,
          $Res Function(_CreateWalletEventRequest) then) =
      __$CreateWalletEventRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateWalletEventRequestCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res>
    implements _$CreateWalletEventRequestCopyWith<$Res> {
  __$CreateWalletEventRequestCopyWithImpl(_CreateWalletEventRequest _value,
      $Res Function(_CreateWalletEventRequest) _then)
      : super(_value, (v) => _then(v as _CreateWalletEventRequest));

  @override
  _CreateWalletEventRequest get _value =>
      super._value as _CreateWalletEventRequest;
}

/// @nodoc

class _$_CreateWalletEventRequest implements _CreateWalletEventRequest {
  const _$_CreateWalletEventRequest();

  @override
  String toString() {
    return 'CreateWalletEvent.requestCreateWallet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWalletEventRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String rePassword) rePasswordChanged,
    required TResult Function(bool isCheck) checkBox,
    required TResult Function() requestCreateWallet,
    required TResult Function() startApp,
  }) {
    return requestCreateWallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
  }) {
    return requestCreateWallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
    required TResult orElse(),
  }) {
    if (requestCreateWallet != null) {
      return requestCreateWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletEventPasswordChanged value)
        passwordChanged,
    required TResult Function(_CreateWalletEventRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(_CreateWalletEventCheckBox value) checkBox,
    required TResult Function(_CreateWalletEventRequest value)
        requestCreateWallet,
    required TResult Function(_CreateWalletEventStart value) startApp,
  }) {
    return requestCreateWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
  }) {
    return requestCreateWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
    required TResult orElse(),
  }) {
    if (requestCreateWallet != null) {
      return requestCreateWallet(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletEventRequest implements CreateWalletEvent {
  const factory _CreateWalletEventRequest() = _$_CreateWalletEventRequest;
}

/// @nodoc
abstract class _$CreateWalletEventStartCopyWith<$Res> {
  factory _$CreateWalletEventStartCopyWith(_CreateWalletEventStart value,
          $Res Function(_CreateWalletEventStart) then) =
      __$CreateWalletEventStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateWalletEventStartCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res>
    implements _$CreateWalletEventStartCopyWith<$Res> {
  __$CreateWalletEventStartCopyWithImpl(_CreateWalletEventStart _value,
      $Res Function(_CreateWalletEventStart) _then)
      : super(_value, (v) => _then(v as _CreateWalletEventStart));

  @override
  _CreateWalletEventStart get _value => super._value as _CreateWalletEventStart;
}

/// @nodoc

class _$_CreateWalletEventStart implements _CreateWalletEventStart {
  const _$_CreateWalletEventStart();

  @override
  String toString() {
    return 'CreateWalletEvent.startApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateWalletEventStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String rePassword) rePasswordChanged,
    required TResult Function(bool isCheck) checkBox,
    required TResult Function() requestCreateWallet,
    required TResult Function() startApp,
  }) {
    return startApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
  }) {
    return startApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String rePassword)? rePasswordChanged,
    TResult Function(bool isCheck)? checkBox,
    TResult Function()? requestCreateWallet,
    TResult Function()? startApp,
    required TResult orElse(),
  }) {
    if (startApp != null) {
      return startApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletEventPasswordChanged value)
        passwordChanged,
    required TResult Function(_CreateWalletEventRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(_CreateWalletEventCheckBox value) checkBox,
    required TResult Function(_CreateWalletEventRequest value)
        requestCreateWallet,
    required TResult Function(_CreateWalletEventStart value) startApp,
  }) {
    return startApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
  }) {
    return startApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletEventPasswordChanged value)? passwordChanged,
    TResult Function(_CreateWalletEventRePasswordChanged value)?
        rePasswordChanged,
    TResult Function(_CreateWalletEventCheckBox value)? checkBox,
    TResult Function(_CreateWalletEventRequest value)? requestCreateWallet,
    TResult Function(_CreateWalletEventStart value)? startApp,
    required TResult orElse(),
  }) {
    if (startApp != null) {
      return startApp(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletEventStart implements CreateWalletEvent {
  const factory _CreateWalletEventStart() = _$_CreateWalletEventStart;
}

/// @nodoc
class _$CreateWalletStateTearOff {
  const _$CreateWalletStateTearOff();

  _CreateWalletState call(
      {required String password,
      required String repeatPassword,
      required bool checkBox,
      int currentPage = 1,
      Status<dynamic> status = const Idle(),
      String? mnemonic,
      Wallet? wallet}) {
    return _CreateWalletState(
      password: password,
      repeatPassword: repeatPassword,
      checkBox: checkBox,
      currentPage: currentPage,
      status: status,
      mnemonic: mnemonic,
      wallet: wallet,
    );
  }
}

/// @nodoc
const $CreateWalletState = _$CreateWalletStateTearOff();

/// @nodoc
mixin _$CreateWalletState {
  String get password => throw _privateConstructorUsedError;
  String get repeatPassword => throw _privateConstructorUsedError;
  bool get checkBox => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;
  String? get mnemonic => throw _privateConstructorUsedError;
  Wallet? get wallet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateWalletStateCopyWith<CreateWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletStateCopyWith<$Res> {
  factory $CreateWalletStateCopyWith(
          CreateWalletState value, $Res Function(CreateWalletState) then) =
      _$CreateWalletStateCopyWithImpl<$Res>;
  $Res call(
      {String password,
      String repeatPassword,
      bool checkBox,
      int currentPage,
      Status<dynamic> status,
      String? mnemonic,
      Wallet? wallet});

  $WalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$CreateWalletStateCopyWithImpl<$Res>
    implements $CreateWalletStateCopyWith<$Res> {
  _$CreateWalletStateCopyWithImpl(this._value, this._then);

  final CreateWalletState _value;
  // ignore: unused_field
  final $Res Function(CreateWalletState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatPassword = freezed,
    Object? checkBox = freezed,
    Object? currentPage = freezed,
    Object? status = freezed,
    Object? mnemonic = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      checkBox: checkBox == freezed
          ? _value.checkBox
          : checkBox // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
    ));
  }

  @override
  $WalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$CreateWalletStateCopyWith<$Res>
    implements $CreateWalletStateCopyWith<$Res> {
  factory _$CreateWalletStateCopyWith(
          _CreateWalletState value, $Res Function(_CreateWalletState) then) =
      __$CreateWalletStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String password,
      String repeatPassword,
      bool checkBox,
      int currentPage,
      Status<dynamic> status,
      String? mnemonic,
      Wallet? wallet});

  @override
  $WalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$CreateWalletStateCopyWithImpl<$Res>
    extends _$CreateWalletStateCopyWithImpl<$Res>
    implements _$CreateWalletStateCopyWith<$Res> {
  __$CreateWalletStateCopyWithImpl(
      _CreateWalletState _value, $Res Function(_CreateWalletState) _then)
      : super(_value, (v) => _then(v as _CreateWalletState));

  @override
  _CreateWalletState get _value => super._value as _CreateWalletState;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatPassword = freezed,
    Object? checkBox = freezed,
    Object? currentPage = freezed,
    Object? status = freezed,
    Object? mnemonic = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_CreateWalletState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      checkBox: checkBox == freezed
          ? _value.checkBox
          : checkBox // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
    ));
  }
}

/// @nodoc

class _$_CreateWalletState implements _CreateWalletState {
  const _$_CreateWalletState(
      {required this.password,
      required this.repeatPassword,
      required this.checkBox,
      this.currentPage = 1,
      this.status = const Idle(),
      this.mnemonic,
      this.wallet});

  @override
  final String password;
  @override
  final String repeatPassword;
  @override
  final bool checkBox;
  @JsonKey()
  @override
  final int currentPage;
  @JsonKey()
  @override
  final Status<dynamic> status;
  @override
  final String? mnemonic;
  @override
  final Wallet? wallet;

  @override
  String toString() {
    return 'CreateWalletState(password: $password, repeatPassword: $repeatPassword, checkBox: $checkBox, currentPage: $currentPage, status: $status, mnemonic: $mnemonic, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWalletState &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword) &&
            const DeepCollectionEquality().equals(other.checkBox, checkBox) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.mnemonic, mnemonic) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword),
      const DeepCollectionEquality().hash(checkBox),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(mnemonic),
      const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  _$CreateWalletStateCopyWith<_CreateWalletState> get copyWith =>
      __$CreateWalletStateCopyWithImpl<_CreateWalletState>(this, _$identity);
}

abstract class _CreateWalletState implements CreateWalletState {
  const factory _CreateWalletState(
      {required String password,
      required String repeatPassword,
      required bool checkBox,
      int currentPage,
      Status<dynamic> status,
      String? mnemonic,
      Wallet? wallet}) = _$_CreateWalletState;

  @override
  String get password;
  @override
  String get repeatPassword;
  @override
  bool get checkBox;
  @override
  int get currentPage;
  @override
  Status<dynamic> get status;
  @override
  String? get mnemonic;
  @override
  Wallet? get wallet;
  @override
  @JsonKey(ignore: true)
  _$CreateWalletStateCopyWith<_CreateWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
