// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'import_collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImportCollectionStateTearOff {
  const _$ImportCollectionStateTearOff();

  _ImportCollectionState call(
      {required TextEditingController controllerName,
      String? address,
      bool isValidAddress = false,
      String? name,
      Status<dynamic> status = const Idle()}) {
    return _ImportCollectionState(
      controllerName: controllerName,
      address: address,
      isValidAddress: isValidAddress,
      name: name,
      status: status,
    );
  }
}

/// @nodoc
const $ImportCollectionState = _$ImportCollectionStateTearOff();

/// @nodoc
mixin _$ImportCollectionState {
  TextEditingController get controllerName =>
      throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool get isValidAddress => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImportCollectionStateCopyWith<ImportCollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportCollectionStateCopyWith<$Res> {
  factory $ImportCollectionStateCopyWith(ImportCollectionState value,
          $Res Function(ImportCollectionState) then) =
      _$ImportCollectionStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController controllerName,
      String? address,
      bool isValidAddress,
      String? name,
      Status<dynamic> status});
}

/// @nodoc
class _$ImportCollectionStateCopyWithImpl<$Res>
    implements $ImportCollectionStateCopyWith<$Res> {
  _$ImportCollectionStateCopyWithImpl(this._value, this._then);

  final ImportCollectionState _value;
  // ignore: unused_field
  final $Res Function(ImportCollectionState) _then;

  @override
  $Res call({
    Object? controllerName = freezed,
    Object? address = freezed,
    Object? isValidAddress = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      controllerName: controllerName == freezed
          ? _value.controllerName
          : controllerName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidAddress: isValidAddress == freezed
          ? _value.isValidAddress
          : isValidAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ImportCollectionStateCopyWith<$Res>
    implements $ImportCollectionStateCopyWith<$Res> {
  factory _$ImportCollectionStateCopyWith(_ImportCollectionState value,
          $Res Function(_ImportCollectionState) then) =
      __$ImportCollectionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController controllerName,
      String? address,
      bool isValidAddress,
      String? name,
      Status<dynamic> status});
}

/// @nodoc
class __$ImportCollectionStateCopyWithImpl<$Res>
    extends _$ImportCollectionStateCopyWithImpl<$Res>
    implements _$ImportCollectionStateCopyWith<$Res> {
  __$ImportCollectionStateCopyWithImpl(_ImportCollectionState _value,
      $Res Function(_ImportCollectionState) _then)
      : super(_value, (v) => _then(v as _ImportCollectionState));

  @override
  _ImportCollectionState get _value => super._value as _ImportCollectionState;

  @override
  $Res call({
    Object? controllerName = freezed,
    Object? address = freezed,
    Object? isValidAddress = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_ImportCollectionState(
      controllerName: controllerName == freezed
          ? _value.controllerName
          : controllerName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidAddress: isValidAddress == freezed
          ? _value.isValidAddress
          : isValidAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ImportCollectionState
    with DiagnosticableTreeMixin
    implements _ImportCollectionState {
  const _$_ImportCollectionState(
      {required this.controllerName,
      this.address,
      this.isValidAddress = false,
      this.name,
      this.status = const Idle()});

  @override
  final TextEditingController controllerName;
  @override
  final String? address;
  @JsonKey()
  @override
  final bool isValidAddress;
  @override
  final String? name;
  @JsonKey()
  @override
  final Status<dynamic> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportCollectionState(controllerName: $controllerName, address: $address, isValidAddress: $isValidAddress, name: $name, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImportCollectionState'))
      ..add(DiagnosticsProperty('controllerName', controllerName))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('isValidAddress', isValidAddress))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImportCollectionState &&
            const DeepCollectionEquality()
                .equals(other.controllerName, controllerName) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.isValidAddress, isValidAddress) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(controllerName),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(isValidAddress),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ImportCollectionStateCopyWith<_ImportCollectionState> get copyWith =>
      __$ImportCollectionStateCopyWithImpl<_ImportCollectionState>(
          this, _$identity);
}

abstract class _ImportCollectionState implements ImportCollectionState {
  const factory _ImportCollectionState(
      {required TextEditingController controllerName,
      String? address,
      bool isValidAddress,
      String? name,
      Status<dynamic> status}) = _$_ImportCollectionState;

  @override
  TextEditingController get controllerName;
  @override
  String? get address;
  @override
  bool get isValidAddress;
  @override
  String? get name;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$ImportCollectionStateCopyWith<_ImportCollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ImportCollectionEventTearOff {
  const _$ImportCollectionEventTearOff();

  _ImportCollectionEventValidAddress validAddress() {
    return const _ImportCollectionEventValidAddress();
  }

  _ImportCollectionEventImport import() {
    return const _ImportCollectionEventImport();
  }

  _ImportCollectionEventAddressChanged onAddressChanged(String address) {
    return _ImportCollectionEventAddressChanged(
      address,
    );
  }
}

/// @nodoc
const $ImportCollectionEvent = _$ImportCollectionEventTearOff();

/// @nodoc
mixin _$ImportCollectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validAddress,
    required TResult Function() import,
    required TResult Function(String address) onAddressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? validAddress,
    TResult Function()? import,
    TResult Function(String address)? onAddressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validAddress,
    TResult Function()? import,
    TResult Function(String address)? onAddressChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportCollectionEventValidAddress value)
        validAddress,
    required TResult Function(_ImportCollectionEventImport value) import,
    required TResult Function(_ImportCollectionEventAddressChanged value)
        onAddressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImportCollectionEventValidAddress value)? validAddress,
    TResult Function(_ImportCollectionEventImport value)? import,
    TResult Function(_ImportCollectionEventAddressChanged value)?
        onAddressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportCollectionEventValidAddress value)? validAddress,
    TResult Function(_ImportCollectionEventImport value)? import,
    TResult Function(_ImportCollectionEventAddressChanged value)?
        onAddressChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportCollectionEventCopyWith<$Res> {
  factory $ImportCollectionEventCopyWith(ImportCollectionEvent value,
          $Res Function(ImportCollectionEvent) then) =
      _$ImportCollectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImportCollectionEventCopyWithImpl<$Res>
    implements $ImportCollectionEventCopyWith<$Res> {
  _$ImportCollectionEventCopyWithImpl(this._value, this._then);

  final ImportCollectionEvent _value;
  // ignore: unused_field
  final $Res Function(ImportCollectionEvent) _then;
}

/// @nodoc
abstract class _$ImportCollectionEventValidAddressCopyWith<$Res> {
  factory _$ImportCollectionEventValidAddressCopyWith(
          _ImportCollectionEventValidAddress value,
          $Res Function(_ImportCollectionEventValidAddress) then) =
      __$ImportCollectionEventValidAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImportCollectionEventValidAddressCopyWithImpl<$Res>
    extends _$ImportCollectionEventCopyWithImpl<$Res>
    implements _$ImportCollectionEventValidAddressCopyWith<$Res> {
  __$ImportCollectionEventValidAddressCopyWithImpl(
      _ImportCollectionEventValidAddress _value,
      $Res Function(_ImportCollectionEventValidAddress) _then)
      : super(_value, (v) => _then(v as _ImportCollectionEventValidAddress));

  @override
  _ImportCollectionEventValidAddress get _value =>
      super._value as _ImportCollectionEventValidAddress;
}

/// @nodoc

class _$_ImportCollectionEventValidAddress
    with DiagnosticableTreeMixin
    implements _ImportCollectionEventValidAddress {
  const _$_ImportCollectionEventValidAddress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportCollectionEvent.validAddress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ImportCollectionEvent.validAddress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImportCollectionEventValidAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validAddress,
    required TResult Function() import,
    required TResult Function(String address) onAddressChanged,
  }) {
    return validAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? validAddress,
    TResult Function()? import,
    TResult Function(String address)? onAddressChanged,
  }) {
    return validAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validAddress,
    TResult Function()? import,
    TResult Function(String address)? onAddressChanged,
    required TResult orElse(),
  }) {
    if (validAddress != null) {
      return validAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportCollectionEventValidAddress value)
        validAddress,
    required TResult Function(_ImportCollectionEventImport value) import,
    required TResult Function(_ImportCollectionEventAddressChanged value)
        onAddressChanged,
  }) {
    return validAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImportCollectionEventValidAddress value)? validAddress,
    TResult Function(_ImportCollectionEventImport value)? import,
    TResult Function(_ImportCollectionEventAddressChanged value)?
        onAddressChanged,
  }) {
    return validAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportCollectionEventValidAddress value)? validAddress,
    TResult Function(_ImportCollectionEventImport value)? import,
    TResult Function(_ImportCollectionEventAddressChanged value)?
        onAddressChanged,
    required TResult orElse(),
  }) {
    if (validAddress != null) {
      return validAddress(this);
    }
    return orElse();
  }
}

abstract class _ImportCollectionEventValidAddress
    implements ImportCollectionEvent {
  const factory _ImportCollectionEventValidAddress() =
      _$_ImportCollectionEventValidAddress;
}

/// @nodoc
abstract class _$ImportCollectionEventImportCopyWith<$Res> {
  factory _$ImportCollectionEventImportCopyWith(
          _ImportCollectionEventImport value,
          $Res Function(_ImportCollectionEventImport) then) =
      __$ImportCollectionEventImportCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImportCollectionEventImportCopyWithImpl<$Res>
    extends _$ImportCollectionEventCopyWithImpl<$Res>
    implements _$ImportCollectionEventImportCopyWith<$Res> {
  __$ImportCollectionEventImportCopyWithImpl(
      _ImportCollectionEventImport _value,
      $Res Function(_ImportCollectionEventImport) _then)
      : super(_value, (v) => _then(v as _ImportCollectionEventImport));

  @override
  _ImportCollectionEventImport get _value =>
      super._value as _ImportCollectionEventImport;
}

/// @nodoc

class _$_ImportCollectionEventImport
    with DiagnosticableTreeMixin
    implements _ImportCollectionEventImport {
  const _$_ImportCollectionEventImport();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportCollectionEvent.import()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ImportCollectionEvent.import'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImportCollectionEventImport);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validAddress,
    required TResult Function() import,
    required TResult Function(String address) onAddressChanged,
  }) {
    return import();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? validAddress,
    TResult Function()? import,
    TResult Function(String address)? onAddressChanged,
  }) {
    return import?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validAddress,
    TResult Function()? import,
    TResult Function(String address)? onAddressChanged,
    required TResult orElse(),
  }) {
    if (import != null) {
      return import();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportCollectionEventValidAddress value)
        validAddress,
    required TResult Function(_ImportCollectionEventImport value) import,
    required TResult Function(_ImportCollectionEventAddressChanged value)
        onAddressChanged,
  }) {
    return import(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImportCollectionEventValidAddress value)? validAddress,
    TResult Function(_ImportCollectionEventImport value)? import,
    TResult Function(_ImportCollectionEventAddressChanged value)?
        onAddressChanged,
  }) {
    return import?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportCollectionEventValidAddress value)? validAddress,
    TResult Function(_ImportCollectionEventImport value)? import,
    TResult Function(_ImportCollectionEventAddressChanged value)?
        onAddressChanged,
    required TResult orElse(),
  }) {
    if (import != null) {
      return import(this);
    }
    return orElse();
  }
}

abstract class _ImportCollectionEventImport implements ImportCollectionEvent {
  const factory _ImportCollectionEventImport() = _$_ImportCollectionEventImport;
}

/// @nodoc
abstract class _$ImportCollectionEventAddressChangedCopyWith<$Res> {
  factory _$ImportCollectionEventAddressChangedCopyWith(
          _ImportCollectionEventAddressChanged value,
          $Res Function(_ImportCollectionEventAddressChanged) then) =
      __$ImportCollectionEventAddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class __$ImportCollectionEventAddressChangedCopyWithImpl<$Res>
    extends _$ImportCollectionEventCopyWithImpl<$Res>
    implements _$ImportCollectionEventAddressChangedCopyWith<$Res> {
  __$ImportCollectionEventAddressChangedCopyWithImpl(
      _ImportCollectionEventAddressChanged _value,
      $Res Function(_ImportCollectionEventAddressChanged) _then)
      : super(_value, (v) => _then(v as _ImportCollectionEventAddressChanged));

  @override
  _ImportCollectionEventAddressChanged get _value =>
      super._value as _ImportCollectionEventAddressChanged;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_ImportCollectionEventAddressChanged(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImportCollectionEventAddressChanged
    with DiagnosticableTreeMixin
    implements _ImportCollectionEventAddressChanged {
  const _$_ImportCollectionEventAddressChanged(this.address);

  @override
  final String address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportCollectionEvent.onAddressChanged(address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ImportCollectionEvent.onAddressChanged'))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImportCollectionEventAddressChanged &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$ImportCollectionEventAddressChangedCopyWith<
          _ImportCollectionEventAddressChanged>
      get copyWith => __$ImportCollectionEventAddressChangedCopyWithImpl<
          _ImportCollectionEventAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validAddress,
    required TResult Function() import,
    required TResult Function(String address) onAddressChanged,
  }) {
    return onAddressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? validAddress,
    TResult Function()? import,
    TResult Function(String address)? onAddressChanged,
  }) {
    return onAddressChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validAddress,
    TResult Function()? import,
    TResult Function(String address)? onAddressChanged,
    required TResult orElse(),
  }) {
    if (onAddressChanged != null) {
      return onAddressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportCollectionEventValidAddress value)
        validAddress,
    required TResult Function(_ImportCollectionEventImport value) import,
    required TResult Function(_ImportCollectionEventAddressChanged value)
        onAddressChanged,
  }) {
    return onAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImportCollectionEventValidAddress value)? validAddress,
    TResult Function(_ImportCollectionEventImport value)? import,
    TResult Function(_ImportCollectionEventAddressChanged value)?
        onAddressChanged,
  }) {
    return onAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportCollectionEventValidAddress value)? validAddress,
    TResult Function(_ImportCollectionEventImport value)? import,
    TResult Function(_ImportCollectionEventAddressChanged value)?
        onAddressChanged,
    required TResult orElse(),
  }) {
    if (onAddressChanged != null) {
      return onAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _ImportCollectionEventAddressChanged
    implements ImportCollectionEvent {
  const factory _ImportCollectionEventAddressChanged(String address) =
      _$_ImportCollectionEventAddressChanged;

  String get address;
  @JsonKey(ignore: true)
  _$ImportCollectionEventAddressChangedCopyWith<
          _ImportCollectionEventAddressChanged>
      get copyWith => throw _privateConstructorUsedError;
}
