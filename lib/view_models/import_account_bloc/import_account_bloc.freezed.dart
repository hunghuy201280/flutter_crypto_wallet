// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'import_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImportAccountEventTearOff {
  const _$ImportAccountEventTearOff();

  ImportAccountImported imported() {
    return const ImportAccountImported();
  }
}

/// @nodoc
const $ImportAccountEvent = _$ImportAccountEventTearOff();

/// @nodoc
mixin _$ImportAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() imported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? imported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? imported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImportAccountImported value) imported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImportAccountImported value)? imported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportAccountImported value)? imported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportAccountEventCopyWith<$Res> {
  factory $ImportAccountEventCopyWith(
          ImportAccountEvent value, $Res Function(ImportAccountEvent) then) =
      _$ImportAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImportAccountEventCopyWithImpl<$Res>
    implements $ImportAccountEventCopyWith<$Res> {
  _$ImportAccountEventCopyWithImpl(this._value, this._then);

  final ImportAccountEvent _value;
  // ignore: unused_field
  final $Res Function(ImportAccountEvent) _then;
}

/// @nodoc
abstract class $ImportAccountImportedCopyWith<$Res> {
  factory $ImportAccountImportedCopyWith(ImportAccountImported value,
          $Res Function(ImportAccountImported) then) =
      _$ImportAccountImportedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImportAccountImportedCopyWithImpl<$Res>
    extends _$ImportAccountEventCopyWithImpl<$Res>
    implements $ImportAccountImportedCopyWith<$Res> {
  _$ImportAccountImportedCopyWithImpl(
      ImportAccountImported _value, $Res Function(ImportAccountImported) _then)
      : super(_value, (v) => _then(v as ImportAccountImported));

  @override
  ImportAccountImported get _value => super._value as ImportAccountImported;
}

/// @nodoc

class _$ImportAccountImported
    with DiagnosticableTreeMixin
    implements ImportAccountImported {
  const _$ImportAccountImported();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportAccountEvent.imported()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ImportAccountEvent.imported'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ImportAccountImported);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() imported,
  }) {
    return imported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? imported,
  }) {
    return imported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? imported,
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
    required TResult Function(ImportAccountImported value) imported,
  }) {
    return imported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImportAccountImported value)? imported,
  }) {
    return imported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImportAccountImported value)? imported,
    required TResult orElse(),
  }) {
    if (imported != null) {
      return imported(this);
    }
    return orElse();
  }
}

abstract class ImportAccountImported implements ImportAccountEvent {
  const factory ImportAccountImported() = _$ImportAccountImported;
}

/// @nodoc
class _$ImportAccountStateTearOff {
  const _$ImportAccountStateTearOff();

  _ImportAccountState call(
      {required TextEditingController privateKey,
      required Status<dynamic> status}) {
    return _ImportAccountState(
      privateKey: privateKey,
      status: status,
    );
  }
}

/// @nodoc
const $ImportAccountState = _$ImportAccountStateTearOff();

/// @nodoc
mixin _$ImportAccountState {
  TextEditingController get privateKey => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImportAccountStateCopyWith<ImportAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportAccountStateCopyWith<$Res> {
  factory $ImportAccountStateCopyWith(
          ImportAccountState value, $Res Function(ImportAccountState) then) =
      _$ImportAccountStateCopyWithImpl<$Res>;
  $Res call({TextEditingController privateKey, Status<dynamic> status});
}

/// @nodoc
class _$ImportAccountStateCopyWithImpl<$Res>
    implements $ImportAccountStateCopyWith<$Res> {
  _$ImportAccountStateCopyWithImpl(this._value, this._then);

  final ImportAccountState _value;
  // ignore: unused_field
  final $Res Function(ImportAccountState) _then;

  @override
  $Res call({
    Object? privateKey = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ImportAccountStateCopyWith<$Res>
    implements $ImportAccountStateCopyWith<$Res> {
  factory _$ImportAccountStateCopyWith(
          _ImportAccountState value, $Res Function(_ImportAccountState) then) =
      __$ImportAccountStateCopyWithImpl<$Res>;
  @override
  $Res call({TextEditingController privateKey, Status<dynamic> status});
}

/// @nodoc
class __$ImportAccountStateCopyWithImpl<$Res>
    extends _$ImportAccountStateCopyWithImpl<$Res>
    implements _$ImportAccountStateCopyWith<$Res> {
  __$ImportAccountStateCopyWithImpl(
      _ImportAccountState _value, $Res Function(_ImportAccountState) _then)
      : super(_value, (v) => _then(v as _ImportAccountState));

  @override
  _ImportAccountState get _value => super._value as _ImportAccountState;

  @override
  $Res call({
    Object? privateKey = freezed,
    Object? status = freezed,
  }) {
    return _then(_ImportAccountState(
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ImportAccountState extends _ImportAccountState
    with DiagnosticableTreeMixin {
  const _$_ImportAccountState({required this.privateKey, required this.status})
      : super._();

  @override
  final TextEditingController privateKey;
  @override
  final Status<dynamic> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportAccountState(privateKey: $privateKey, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImportAccountState'))
      ..add(DiagnosticsProperty('privateKey', privateKey))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImportAccountState &&
            const DeepCollectionEquality()
                .equals(other.privateKey, privateKey) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(privateKey),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ImportAccountStateCopyWith<_ImportAccountState> get copyWith =>
      __$ImportAccountStateCopyWithImpl<_ImportAccountState>(this, _$identity);
}

abstract class _ImportAccountState extends ImportAccountState {
  const factory _ImportAccountState(
      {required TextEditingController privateKey,
      required Status<dynamic> status}) = _$_ImportAccountState;
  const _ImportAccountState._() : super._();

  @override
  TextEditingController get privateKey;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$ImportAccountStateCopyWith<_ImportAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
