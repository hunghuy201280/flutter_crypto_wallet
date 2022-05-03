// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'import_wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImportWalletEventTearOff {
  const _$ImportWalletEventTearOff();

  ImportWalletImported imported() {
    return const ImportWalletImported();
  }

  ImportWalletPrivateKeyChanged privateKeyChanged(String privateKey) {
    return ImportWalletPrivateKeyChanged(
      privateKey,
    );
  }

  ImportWalletPasswordChanged passwordChanged(String password) {
    return ImportWalletPasswordChanged(
      password,
    );
  }

  ImportWalletRePasswordChanged rePasswordChanged(String password) {
    return ImportWalletRePasswordChanged(
      password,
    );
  }

  ImportWalletCheckBoxChanged checkBoxChanged(bool value) {
    return ImportWalletCheckBoxChanged(
      value,
    );
  }
}

/// @nodoc
const $ImportWalletEvent = _$ImportWalletEventTearOff();

/// @nodoc
mixin _$ImportWalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() imported,
    required TResult Function(String privateKey) privateKeyChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) rePasswordChanged,
    required TResult Function(bool value) checkBoxChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImportWalletImported value) imported,
    required TResult Function(ImportWalletPrivateKeyChanged value)
        privateKeyChanged,
    required TResult Function(ImportWalletPasswordChanged value)
        passwordChanged,
    required TResult Function(ImportWalletRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(ImportWalletCheckBoxChanged value)
        checkBoxChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportWalletEventCopyWith<$Res> {
  factory $ImportWalletEventCopyWith(
          ImportWalletEvent value, $Res Function(ImportWalletEvent) then) =
      _$ImportWalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImportWalletEventCopyWithImpl<$Res>
    implements $ImportWalletEventCopyWith<$Res> {
  _$ImportWalletEventCopyWithImpl(this._value, this._then);

  final ImportWalletEvent _value;
  // ignore: unused_field
  final $Res Function(ImportWalletEvent) _then;
}

/// @nodoc
abstract class $ImportWalletImportedCopyWith<$Res> {
  factory $ImportWalletImportedCopyWith(ImportWalletImported value,
          $Res Function(ImportWalletImported) then) =
      _$ImportWalletImportedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImportWalletImportedCopyWithImpl<$Res>
    extends _$ImportWalletEventCopyWithImpl<$Res>
    implements $ImportWalletImportedCopyWith<$Res> {
  _$ImportWalletImportedCopyWithImpl(
      ImportWalletImported _value, $Res Function(ImportWalletImported) _then)
      : super(_value, (v) => _then(v as ImportWalletImported));

  @override
  ImportWalletImported get _value => super._value as ImportWalletImported;
}

/// @nodoc

class _$ImportWalletImported
    with DiagnosticableTreeMixin
    implements ImportWalletImported {
  const _$ImportWalletImported();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportWalletEvent.imported()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImportWalletEvent.imported'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ImportWalletImported);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() imported,
    required TResult Function(String privateKey) privateKeyChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) rePasswordChanged,
    required TResult Function(bool value) checkBoxChanged,
  }) {
    return imported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
  }) {
    return imported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (imported != null) {
      return imported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImportWalletImported value) imported,
    required TResult Function(ImportWalletPrivateKeyChanged value)
        privateKeyChanged,
    required TResult Function(ImportWalletPasswordChanged value)
        passwordChanged,
    required TResult Function(ImportWalletRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(ImportWalletCheckBoxChanged value)
        checkBoxChanged,
  }) {
    return imported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
  }) {
    return imported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (imported != null) {
      return imported(this);
    }
    return orElse();
  }
}

abstract class ImportWalletImported implements ImportWalletEvent {
  const factory ImportWalletImported() = _$ImportWalletImported;
}

/// @nodoc
abstract class $ImportWalletPrivateKeyChangedCopyWith<$Res> {
  factory $ImportWalletPrivateKeyChangedCopyWith(
          ImportWalletPrivateKeyChanged value,
          $Res Function(ImportWalletPrivateKeyChanged) then) =
      _$ImportWalletPrivateKeyChangedCopyWithImpl<$Res>;
  $Res call({String privateKey});
}

/// @nodoc
class _$ImportWalletPrivateKeyChangedCopyWithImpl<$Res>
    extends _$ImportWalletEventCopyWithImpl<$Res>
    implements $ImportWalletPrivateKeyChangedCopyWith<$Res> {
  _$ImportWalletPrivateKeyChangedCopyWithImpl(
      ImportWalletPrivateKeyChanged _value,
      $Res Function(ImportWalletPrivateKeyChanged) _then)
      : super(_value, (v) => _then(v as ImportWalletPrivateKeyChanged));

  @override
  ImportWalletPrivateKeyChanged get _value =>
      super._value as ImportWalletPrivateKeyChanged;

  @override
  $Res call({
    Object? privateKey = freezed,
  }) {
    return _then(ImportWalletPrivateKeyChanged(
      privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImportWalletPrivateKeyChanged
    with DiagnosticableTreeMixin
    implements ImportWalletPrivateKeyChanged {
  const _$ImportWalletPrivateKeyChanged(this.privateKey);

  @override
  final String privateKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportWalletEvent.privateKeyChanged(privateKey: $privateKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImportWalletEvent.privateKeyChanged'))
      ..add(DiagnosticsProperty('privateKey', privateKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportWalletPrivateKeyChanged &&
            const DeepCollectionEquality()
                .equals(other.privateKey, privateKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(privateKey));

  @JsonKey(ignore: true)
  @override
  $ImportWalletPrivateKeyChangedCopyWith<ImportWalletPrivateKeyChanged>
      get copyWith => _$ImportWalletPrivateKeyChangedCopyWithImpl<
          ImportWalletPrivateKeyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() imported,
    required TResult Function(String privateKey) privateKeyChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) rePasswordChanged,
    required TResult Function(bool value) checkBoxChanged,
  }) {
    return privateKeyChanged(privateKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
  }) {
    return privateKeyChanged?.call(privateKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (privateKeyChanged != null) {
      return privateKeyChanged(privateKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImportWalletImported value) imported,
    required TResult Function(ImportWalletPrivateKeyChanged value)
        privateKeyChanged,
    required TResult Function(ImportWalletPasswordChanged value)
        passwordChanged,
    required TResult Function(ImportWalletRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(ImportWalletCheckBoxChanged value)
        checkBoxChanged,
  }) {
    return privateKeyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
  }) {
    return privateKeyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (privateKeyChanged != null) {
      return privateKeyChanged(this);
    }
    return orElse();
  }
}

abstract class ImportWalletPrivateKeyChanged implements ImportWalletEvent {
  const factory ImportWalletPrivateKeyChanged(String privateKey) =
      _$ImportWalletPrivateKeyChanged;

  String get privateKey;
  @JsonKey(ignore: true)
  $ImportWalletPrivateKeyChangedCopyWith<ImportWalletPrivateKeyChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportWalletPasswordChangedCopyWith<$Res> {
  factory $ImportWalletPasswordChangedCopyWith(
          ImportWalletPasswordChanged value,
          $Res Function(ImportWalletPasswordChanged) then) =
      _$ImportWalletPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$ImportWalletPasswordChangedCopyWithImpl<$Res>
    extends _$ImportWalletEventCopyWithImpl<$Res>
    implements $ImportWalletPasswordChangedCopyWith<$Res> {
  _$ImportWalletPasswordChangedCopyWithImpl(ImportWalletPasswordChanged _value,
      $Res Function(ImportWalletPasswordChanged) _then)
      : super(_value, (v) => _then(v as ImportWalletPasswordChanged));

  @override
  ImportWalletPasswordChanged get _value =>
      super._value as ImportWalletPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(ImportWalletPasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImportWalletPasswordChanged
    with DiagnosticableTreeMixin
    implements ImportWalletPasswordChanged {
  const _$ImportWalletPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportWalletEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImportWalletEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportWalletPasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $ImportWalletPasswordChangedCopyWith<ImportWalletPasswordChanged>
      get copyWith => _$ImportWalletPasswordChangedCopyWithImpl<
          ImportWalletPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() imported,
    required TResult Function(String privateKey) privateKeyChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) rePasswordChanged,
    required TResult Function(bool value) checkBoxChanged,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
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
    required TResult Function(ImportWalletImported value) imported,
    required TResult Function(ImportWalletPrivateKeyChanged value)
        privateKeyChanged,
    required TResult Function(ImportWalletPasswordChanged value)
        passwordChanged,
    required TResult Function(ImportWalletRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(ImportWalletCheckBoxChanged value)
        checkBoxChanged,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class ImportWalletPasswordChanged implements ImportWalletEvent {
  const factory ImportWalletPasswordChanged(String password) =
      _$ImportWalletPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $ImportWalletPasswordChangedCopyWith<ImportWalletPasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportWalletRePasswordChangedCopyWith<$Res> {
  factory $ImportWalletRePasswordChangedCopyWith(
          ImportWalletRePasswordChanged value,
          $Res Function(ImportWalletRePasswordChanged) then) =
      _$ImportWalletRePasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$ImportWalletRePasswordChangedCopyWithImpl<$Res>
    extends _$ImportWalletEventCopyWithImpl<$Res>
    implements $ImportWalletRePasswordChangedCopyWith<$Res> {
  _$ImportWalletRePasswordChangedCopyWithImpl(
      ImportWalletRePasswordChanged _value,
      $Res Function(ImportWalletRePasswordChanged) _then)
      : super(_value, (v) => _then(v as ImportWalletRePasswordChanged));

  @override
  ImportWalletRePasswordChanged get _value =>
      super._value as ImportWalletRePasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(ImportWalletRePasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImportWalletRePasswordChanged
    with DiagnosticableTreeMixin
    implements ImportWalletRePasswordChanged {
  const _$ImportWalletRePasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportWalletEvent.rePasswordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImportWalletEvent.rePasswordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportWalletRePasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $ImportWalletRePasswordChangedCopyWith<ImportWalletRePasswordChanged>
      get copyWith => _$ImportWalletRePasswordChangedCopyWithImpl<
          ImportWalletRePasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() imported,
    required TResult Function(String privateKey) privateKeyChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) rePasswordChanged,
    required TResult Function(bool value) checkBoxChanged,
  }) {
    return rePasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
  }) {
    return rePasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (rePasswordChanged != null) {
      return rePasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImportWalletImported value) imported,
    required TResult Function(ImportWalletPrivateKeyChanged value)
        privateKeyChanged,
    required TResult Function(ImportWalletPasswordChanged value)
        passwordChanged,
    required TResult Function(ImportWalletRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(ImportWalletCheckBoxChanged value)
        checkBoxChanged,
  }) {
    return rePasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
  }) {
    return rePasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (rePasswordChanged != null) {
      return rePasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ImportWalletRePasswordChanged implements ImportWalletEvent {
  const factory ImportWalletRePasswordChanged(String password) =
      _$ImportWalletRePasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $ImportWalletRePasswordChangedCopyWith<ImportWalletRePasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportWalletCheckBoxChangedCopyWith<$Res> {
  factory $ImportWalletCheckBoxChangedCopyWith(
          ImportWalletCheckBoxChanged value,
          $Res Function(ImportWalletCheckBoxChanged) then) =
      _$ImportWalletCheckBoxChangedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$ImportWalletCheckBoxChangedCopyWithImpl<$Res>
    extends _$ImportWalletEventCopyWithImpl<$Res>
    implements $ImportWalletCheckBoxChangedCopyWith<$Res> {
  _$ImportWalletCheckBoxChangedCopyWithImpl(ImportWalletCheckBoxChanged _value,
      $Res Function(ImportWalletCheckBoxChanged) _then)
      : super(_value, (v) => _then(v as ImportWalletCheckBoxChanged));

  @override
  ImportWalletCheckBoxChanged get _value =>
      super._value as ImportWalletCheckBoxChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ImportWalletCheckBoxChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ImportWalletCheckBoxChanged
    with DiagnosticableTreeMixin
    implements ImportWalletCheckBoxChanged {
  const _$ImportWalletCheckBoxChanged(this.value);

  @override
  final bool value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportWalletEvent.checkBoxChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImportWalletEvent.checkBoxChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportWalletCheckBoxChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $ImportWalletCheckBoxChangedCopyWith<ImportWalletCheckBoxChanged>
      get copyWith => _$ImportWalletCheckBoxChangedCopyWithImpl<
          ImportWalletCheckBoxChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() imported,
    required TResult Function(String privateKey) privateKeyChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) rePasswordChanged,
    required TResult Function(bool value) checkBoxChanged,
  }) {
    return checkBoxChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
  }) {
    return checkBoxChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? imported,
    TResult Function(String privateKey)? privateKeyChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? rePasswordChanged,
    TResult Function(bool value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (checkBoxChanged != null) {
      return checkBoxChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImportWalletImported value) imported,
    required TResult Function(ImportWalletPrivateKeyChanged value)
        privateKeyChanged,
    required TResult Function(ImportWalletPasswordChanged value)
        passwordChanged,
    required TResult Function(ImportWalletRePasswordChanged value)
        rePasswordChanged,
    required TResult Function(ImportWalletCheckBoxChanged value)
        checkBoxChanged,
  }) {
    return checkBoxChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
  }) {
    return checkBoxChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportWalletImported value)? imported,
    TResult Function(ImportWalletPrivateKeyChanged value)? privateKeyChanged,
    TResult Function(ImportWalletPasswordChanged value)? passwordChanged,
    TResult Function(ImportWalletRePasswordChanged value)? rePasswordChanged,
    TResult Function(ImportWalletCheckBoxChanged value)? checkBoxChanged,
    required TResult orElse(),
  }) {
    if (checkBoxChanged != null) {
      return checkBoxChanged(this);
    }
    return orElse();
  }
}

abstract class ImportWalletCheckBoxChanged implements ImportWalletEvent {
  const factory ImportWalletCheckBoxChanged(bool value) =
      _$ImportWalletCheckBoxChanged;

  bool get value;
  @JsonKey(ignore: true)
  $ImportWalletCheckBoxChangedCopyWith<ImportWalletCheckBoxChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ImportWalletStateTearOff {
  const _$ImportWalletStateTearOff();

  _ImportWalletState call(
      {required String privateKey,
      required String password,
      required String repeatPassword,
      required bool boxChecked,
      required Status<dynamic> status}) {
    return _ImportWalletState(
      privateKey: privateKey,
      password: password,
      repeatPassword: repeatPassword,
      boxChecked: boxChecked,
      status: status,
    );
  }
}

/// @nodoc
const $ImportWalletState = _$ImportWalletStateTearOff();

/// @nodoc
mixin _$ImportWalletState {
  String get privateKey => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get repeatPassword => throw _privateConstructorUsedError;
  bool get boxChecked => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImportWalletStateCopyWith<ImportWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportWalletStateCopyWith<$Res> {
  factory $ImportWalletStateCopyWith(
          ImportWalletState value, $Res Function(ImportWalletState) then) =
      _$ImportWalletStateCopyWithImpl<$Res>;
  $Res call(
      {String privateKey,
      String password,
      String repeatPassword,
      bool boxChecked,
      Status<dynamic> status});
}

/// @nodoc
class _$ImportWalletStateCopyWithImpl<$Res>
    implements $ImportWalletStateCopyWith<$Res> {
  _$ImportWalletStateCopyWithImpl(this._value, this._then);

  final ImportWalletState _value;
  // ignore: unused_field
  final $Res Function(ImportWalletState) _then;

  @override
  $Res call({
    Object? privateKey = freezed,
    Object? password = freezed,
    Object? repeatPassword = freezed,
    Object? boxChecked = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      boxChecked: boxChecked == freezed
          ? _value.boxChecked
          : boxChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ImportWalletStateCopyWith<$Res>
    implements $ImportWalletStateCopyWith<$Res> {
  factory _$ImportWalletStateCopyWith(
          _ImportWalletState value, $Res Function(_ImportWalletState) then) =
      __$ImportWalletStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String privateKey,
      String password,
      String repeatPassword,
      bool boxChecked,
      Status<dynamic> status});
}

/// @nodoc
class __$ImportWalletStateCopyWithImpl<$Res>
    extends _$ImportWalletStateCopyWithImpl<$Res>
    implements _$ImportWalletStateCopyWith<$Res> {
  __$ImportWalletStateCopyWithImpl(
      _ImportWalletState _value, $Res Function(_ImportWalletState) _then)
      : super(_value, (v) => _then(v as _ImportWalletState));

  @override
  _ImportWalletState get _value => super._value as _ImportWalletState;

  @override
  $Res call({
    Object? privateKey = freezed,
    Object? password = freezed,
    Object? repeatPassword = freezed,
    Object? boxChecked = freezed,
    Object? status = freezed,
  }) {
    return _then(_ImportWalletState(
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      boxChecked: boxChecked == freezed
          ? _value.boxChecked
          : boxChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ImportWalletState extends _ImportWalletState
    with DiagnosticableTreeMixin {
  const _$_ImportWalletState(
      {required this.privateKey,
      required this.password,
      required this.repeatPassword,
      required this.boxChecked,
      required this.status})
      : super._();

  @override
  final String privateKey;
  @override
  final String password;
  @override
  final String repeatPassword;
  @override
  final bool boxChecked;
  @override
  final Status<dynamic> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportWalletState(privateKey: $privateKey, password: $password, repeatPassword: $repeatPassword, boxChecked: $boxChecked, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImportWalletState'))
      ..add(DiagnosticsProperty('privateKey', privateKey))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword))
      ..add(DiagnosticsProperty('boxChecked', boxChecked))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImportWalletState &&
            const DeepCollectionEquality()
                .equals(other.privateKey, privateKey) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword) &&
            const DeepCollectionEquality()
                .equals(other.boxChecked, boxChecked) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(privateKey),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword),
      const DeepCollectionEquality().hash(boxChecked),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ImportWalletStateCopyWith<_ImportWalletState> get copyWith =>
      __$ImportWalletStateCopyWithImpl<_ImportWalletState>(this, _$identity);
}

abstract class _ImportWalletState extends ImportWalletState {
  const factory _ImportWalletState(
      {required String privateKey,
      required String password,
      required String repeatPassword,
      required bool boxChecked,
      required Status<dynamic> status}) = _$_ImportWalletState;
  const _ImportWalletState._() : super._();

  @override
  String get privateKey;
  @override
  String get password;
  @override
  String get repeatPassword;
  @override
  bool get boxChecked;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$ImportWalletStateCopyWith<_ImportWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
