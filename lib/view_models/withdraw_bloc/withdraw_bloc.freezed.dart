// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdraw_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WithdrawStateTearOff {
  const _$WithdrawStateTearOff();

  _WithdrawState call(
      {required TextEditingController controllerAddress,
      String? address,
      bool isValidAddress = false,
      List<Token> tokens = const [],
      Status<dynamic> status = const Idle()}) {
    return _WithdrawState(
      controllerAddress: controllerAddress,
      address: address,
      isValidAddress: isValidAddress,
      tokens: tokens,
      status: status,
    );
  }
}

/// @nodoc
const $WithdrawState = _$WithdrawStateTearOff();

/// @nodoc
mixin _$WithdrawState {
  TextEditingController get controllerAddress =>
      throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool get isValidAddress => throw _privateConstructorUsedError;
  List<Token> get tokens => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawStateCopyWith<WithdrawState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawStateCopyWith<$Res> {
  factory $WithdrawStateCopyWith(
          WithdrawState value, $Res Function(WithdrawState) then) =
      _$WithdrawStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController controllerAddress,
      String? address,
      bool isValidAddress,
      List<Token> tokens,
      Status<dynamic> status});
}

/// @nodoc
class _$WithdrawStateCopyWithImpl<$Res>
    implements $WithdrawStateCopyWith<$Res> {
  _$WithdrawStateCopyWithImpl(this._value, this._then);

  final WithdrawState _value;
  // ignore: unused_field
  final $Res Function(WithdrawState) _then;

  @override
  $Res call({
    Object? controllerAddress = freezed,
    Object? address = freezed,
    Object? isValidAddress = freezed,
    Object? tokens = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      controllerAddress: controllerAddress == freezed
          ? _value.controllerAddress
          : controllerAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidAddress: isValidAddress == freezed
          ? _value.isValidAddress
          : isValidAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$WithdrawStateCopyWith<$Res>
    implements $WithdrawStateCopyWith<$Res> {
  factory _$WithdrawStateCopyWith(
          _WithdrawState value, $Res Function(_WithdrawState) then) =
      __$WithdrawStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController controllerAddress,
      String? address,
      bool isValidAddress,
      List<Token> tokens,
      Status<dynamic> status});
}

/// @nodoc
class __$WithdrawStateCopyWithImpl<$Res>
    extends _$WithdrawStateCopyWithImpl<$Res>
    implements _$WithdrawStateCopyWith<$Res> {
  __$WithdrawStateCopyWithImpl(
      _WithdrawState _value, $Res Function(_WithdrawState) _then)
      : super(_value, (v) => _then(v as _WithdrawState));

  @override
  _WithdrawState get _value => super._value as _WithdrawState;

  @override
  $Res call({
    Object? controllerAddress = freezed,
    Object? address = freezed,
    Object? isValidAddress = freezed,
    Object? tokens = freezed,
    Object? status = freezed,
  }) {
    return _then(_WithdrawState(
      controllerAddress: controllerAddress == freezed
          ? _value.controllerAddress
          : controllerAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidAddress: isValidAddress == freezed
          ? _value.isValidAddress
          : isValidAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_WithdrawState implements _WithdrawState {
  const _$_WithdrawState(
      {required this.controllerAddress,
      this.address,
      this.isValidAddress = false,
      this.tokens = const [],
      this.status = const Idle()});

  @override
  final TextEditingController controllerAddress;
  @override
  final String? address;
  @JsonKey()
  @override
  final bool isValidAddress;
  @JsonKey()
  @override
  final List<Token> tokens;
  @JsonKey()
  @override
  final Status<dynamic> status;

  @override
  String toString() {
    return 'WithdrawState(controllerAddress: $controllerAddress, address: $address, isValidAddress: $isValidAddress, tokens: $tokens, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawState &&
            const DeepCollectionEquality()
                .equals(other.controllerAddress, controllerAddress) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.isValidAddress, isValidAddress) &&
            const DeepCollectionEquality().equals(other.tokens, tokens) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(controllerAddress),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(isValidAddress),
      const DeepCollectionEquality().hash(tokens),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$WithdrawStateCopyWith<_WithdrawState> get copyWith =>
      __$WithdrawStateCopyWithImpl<_WithdrawState>(this, _$identity);
}

abstract class _WithdrawState implements WithdrawState {
  const factory _WithdrawState(
      {required TextEditingController controllerAddress,
      String? address,
      bool isValidAddress,
      List<Token> tokens,
      Status<dynamic> status}) = _$_WithdrawState;

  @override
  TextEditingController get controllerAddress;
  @override
  String? get address;
  @override
  bool get isValidAddress;
  @override
  List<Token> get tokens;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$WithdrawStateCopyWith<_WithdrawState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WithdrawEventTearOff {
  const _$WithdrawEventTearOff();

  _WithdrawEventAddressChanged onAddressChanged(String address) {
    return _WithdrawEventAddressChanged(
      address,
    );
  }

  _WithdrawEventInitData initialData() {
    return const _WithdrawEventInitData();
  }

  _WithdrawEventValidAddress validAddress() {
    return const _WithdrawEventValidAddress();
  }
}

/// @nodoc
const $WithdrawEvent = _$WithdrawEventTearOff();

/// @nodoc
mixin _$WithdrawEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) onAddressChanged,
    required TResult Function() initialData,
    required TResult Function() validAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawEventAddressChanged value)
        onAddressChanged,
    required TResult Function(_WithdrawEventInitData value) initialData,
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawEventCopyWith<$Res> {
  factory $WithdrawEventCopyWith(
          WithdrawEvent value, $Res Function(WithdrawEvent) then) =
      _$WithdrawEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WithdrawEventCopyWithImpl<$Res>
    implements $WithdrawEventCopyWith<$Res> {
  _$WithdrawEventCopyWithImpl(this._value, this._then);

  final WithdrawEvent _value;
  // ignore: unused_field
  final $Res Function(WithdrawEvent) _then;
}

/// @nodoc
abstract class _$WithdrawEventAddressChangedCopyWith<$Res> {
  factory _$WithdrawEventAddressChangedCopyWith(
          _WithdrawEventAddressChanged value,
          $Res Function(_WithdrawEventAddressChanged) then) =
      __$WithdrawEventAddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class __$WithdrawEventAddressChangedCopyWithImpl<$Res>
    extends _$WithdrawEventCopyWithImpl<$Res>
    implements _$WithdrawEventAddressChangedCopyWith<$Res> {
  __$WithdrawEventAddressChangedCopyWithImpl(
      _WithdrawEventAddressChanged _value,
      $Res Function(_WithdrawEventAddressChanged) _then)
      : super(_value, (v) => _then(v as _WithdrawEventAddressChanged));

  @override
  _WithdrawEventAddressChanged get _value =>
      super._value as _WithdrawEventAddressChanged;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_WithdrawEventAddressChanged(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WithdrawEventAddressChanged implements _WithdrawEventAddressChanged {
  const _$_WithdrawEventAddressChanged(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'WithdrawEvent.onAddressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawEventAddressChanged &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$WithdrawEventAddressChangedCopyWith<_WithdrawEventAddressChanged>
      get copyWith => __$WithdrawEventAddressChangedCopyWithImpl<
          _WithdrawEventAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) onAddressChanged,
    required TResult Function() initialData,
    required TResult Function() validAddress,
  }) {
    return onAddressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
  }) {
    return onAddressChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
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
    required TResult Function(_WithdrawEventAddressChanged value)
        onAddressChanged,
    required TResult Function(_WithdrawEventInitData value) initialData,
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
  }) {
    return onAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
  }) {
    return onAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    required TResult orElse(),
  }) {
    if (onAddressChanged != null) {
      return onAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _WithdrawEventAddressChanged implements WithdrawEvent {
  const factory _WithdrawEventAddressChanged(String address) =
      _$_WithdrawEventAddressChanged;

  String get address;
  @JsonKey(ignore: true)
  _$WithdrawEventAddressChangedCopyWith<_WithdrawEventAddressChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WithdrawEventInitDataCopyWith<$Res> {
  factory _$WithdrawEventInitDataCopyWith(_WithdrawEventInitData value,
          $Res Function(_WithdrawEventInitData) then) =
      __$WithdrawEventInitDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$WithdrawEventInitDataCopyWithImpl<$Res>
    extends _$WithdrawEventCopyWithImpl<$Res>
    implements _$WithdrawEventInitDataCopyWith<$Res> {
  __$WithdrawEventInitDataCopyWithImpl(_WithdrawEventInitData _value,
      $Res Function(_WithdrawEventInitData) _then)
      : super(_value, (v) => _then(v as _WithdrawEventInitData));

  @override
  _WithdrawEventInitData get _value => super._value as _WithdrawEventInitData;
}

/// @nodoc

class _$_WithdrawEventInitData implements _WithdrawEventInitData {
  const _$_WithdrawEventInitData();

  @override
  String toString() {
    return 'WithdrawEvent.initialData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WithdrawEventInitData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) onAddressChanged,
    required TResult Function() initialData,
    required TResult Function() validAddress,
  }) {
    return initialData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
  }) {
    return initialData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    required TResult orElse(),
  }) {
    if (initialData != null) {
      return initialData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawEventAddressChanged value)
        onAddressChanged,
    required TResult Function(_WithdrawEventInitData value) initialData,
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
  }) {
    return initialData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
  }) {
    return initialData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    required TResult orElse(),
  }) {
    if (initialData != null) {
      return initialData(this);
    }
    return orElse();
  }
}

abstract class _WithdrawEventInitData implements WithdrawEvent {
  const factory _WithdrawEventInitData() = _$_WithdrawEventInitData;
}

/// @nodoc
abstract class _$WithdrawEventValidAddressCopyWith<$Res> {
  factory _$WithdrawEventValidAddressCopyWith(_WithdrawEventValidAddress value,
          $Res Function(_WithdrawEventValidAddress) then) =
      __$WithdrawEventValidAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$WithdrawEventValidAddressCopyWithImpl<$Res>
    extends _$WithdrawEventCopyWithImpl<$Res>
    implements _$WithdrawEventValidAddressCopyWith<$Res> {
  __$WithdrawEventValidAddressCopyWithImpl(_WithdrawEventValidAddress _value,
      $Res Function(_WithdrawEventValidAddress) _then)
      : super(_value, (v) => _then(v as _WithdrawEventValidAddress));

  @override
  _WithdrawEventValidAddress get _value =>
      super._value as _WithdrawEventValidAddress;
}

/// @nodoc

class _$_WithdrawEventValidAddress implements _WithdrawEventValidAddress {
  const _$_WithdrawEventValidAddress();

  @override
  String toString() {
    return 'WithdrawEvent.validAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawEventValidAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) onAddressChanged,
    required TResult Function() initialData,
    required TResult Function() validAddress,
  }) {
    return validAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
  }) {
    return validAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
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
    required TResult Function(_WithdrawEventAddressChanged value)
        onAddressChanged,
    required TResult Function(_WithdrawEventInitData value) initialData,
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
  }) {
    return validAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
  }) {
    return validAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    required TResult orElse(),
  }) {
    if (validAddress != null) {
      return validAddress(this);
    }
    return orElse();
  }
}

abstract class _WithdrawEventValidAddress implements WithdrawEvent {
  const factory _WithdrawEventValidAddress() = _$_WithdrawEventValidAddress;
}
