// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdraw_nft_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WithdrawNftStateTearOff {
  const _$WithdrawNftStateTearOff();

  _WithdrawNftState call(
      {required TextEditingController controllerFromAddress,
      required TextEditingController controllerToAddress,
      String? contractAddress,
      Nft? nft,
      String? fromAddress,
      String? toAddress,
      bool isValidToAddress = false,
      Status<dynamic> status = const Idle()}) {
    return _WithdrawNftState(
      controllerFromAddress: controllerFromAddress,
      controllerToAddress: controllerToAddress,
      contractAddress: contractAddress,
      nft: nft,
      fromAddress: fromAddress,
      toAddress: toAddress,
      isValidToAddress: isValidToAddress,
      status: status,
    );
  }
}

/// @nodoc
const $WithdrawNftState = _$WithdrawNftStateTearOff();

/// @nodoc
mixin _$WithdrawNftState {
  TextEditingController get controllerFromAddress =>
      throw _privateConstructorUsedError;
  TextEditingController get controllerToAddress =>
      throw _privateConstructorUsedError;
  String? get contractAddress => throw _privateConstructorUsedError;
  Nft? get nft => throw _privateConstructorUsedError;
  String? get fromAddress => throw _privateConstructorUsedError;
  String? get toAddress => throw _privateConstructorUsedError;
  bool get isValidToAddress => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawNftStateCopyWith<WithdrawNftState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawNftStateCopyWith<$Res> {
  factory $WithdrawNftStateCopyWith(
          WithdrawNftState value, $Res Function(WithdrawNftState) then) =
      _$WithdrawNftStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController controllerFromAddress,
      TextEditingController controllerToAddress,
      String? contractAddress,
      Nft? nft,
      String? fromAddress,
      String? toAddress,
      bool isValidToAddress,
      Status<dynamic> status});

  $NftCopyWith<$Res>? get nft;
}

/// @nodoc
class _$WithdrawNftStateCopyWithImpl<$Res>
    implements $WithdrawNftStateCopyWith<$Res> {
  _$WithdrawNftStateCopyWithImpl(this._value, this._then);

  final WithdrawNftState _value;
  // ignore: unused_field
  final $Res Function(WithdrawNftState) _then;

  @override
  $Res call({
    Object? controllerFromAddress = freezed,
    Object? controllerToAddress = freezed,
    Object? contractAddress = freezed,
    Object? nft = freezed,
    Object? fromAddress = freezed,
    Object? toAddress = freezed,
    Object? isValidToAddress = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      controllerFromAddress: controllerFromAddress == freezed
          ? _value.controllerFromAddress
          : controllerFromAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      controllerToAddress: controllerToAddress == freezed
          ? _value.controllerToAddress
          : controllerToAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      contractAddress: contractAddress == freezed
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      nft: nft == freezed
          ? _value.nft
          : nft // ignore: cast_nullable_to_non_nullable
              as Nft?,
      fromAddress: fromAddress == freezed
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      toAddress: toAddress == freezed
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidToAddress: isValidToAddress == freezed
          ? _value.isValidToAddress
          : isValidToAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }

  @override
  $NftCopyWith<$Res>? get nft {
    if (_value.nft == null) {
      return null;
    }

    return $NftCopyWith<$Res>(_value.nft!, (value) {
      return _then(_value.copyWith(nft: value));
    });
  }
}

/// @nodoc
abstract class _$WithdrawNftStateCopyWith<$Res>
    implements $WithdrawNftStateCopyWith<$Res> {
  factory _$WithdrawNftStateCopyWith(
          _WithdrawNftState value, $Res Function(_WithdrawNftState) then) =
      __$WithdrawNftStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController controllerFromAddress,
      TextEditingController controllerToAddress,
      String? contractAddress,
      Nft? nft,
      String? fromAddress,
      String? toAddress,
      bool isValidToAddress,
      Status<dynamic> status});

  @override
  $NftCopyWith<$Res>? get nft;
}

/// @nodoc
class __$WithdrawNftStateCopyWithImpl<$Res>
    extends _$WithdrawNftStateCopyWithImpl<$Res>
    implements _$WithdrawNftStateCopyWith<$Res> {
  __$WithdrawNftStateCopyWithImpl(
      _WithdrawNftState _value, $Res Function(_WithdrawNftState) _then)
      : super(_value, (v) => _then(v as _WithdrawNftState));

  @override
  _WithdrawNftState get _value => super._value as _WithdrawNftState;

  @override
  $Res call({
    Object? controllerFromAddress = freezed,
    Object? controllerToAddress = freezed,
    Object? contractAddress = freezed,
    Object? nft = freezed,
    Object? fromAddress = freezed,
    Object? toAddress = freezed,
    Object? isValidToAddress = freezed,
    Object? status = freezed,
  }) {
    return _then(_WithdrawNftState(
      controllerFromAddress: controllerFromAddress == freezed
          ? _value.controllerFromAddress
          : controllerFromAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      controllerToAddress: controllerToAddress == freezed
          ? _value.controllerToAddress
          : controllerToAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      contractAddress: contractAddress == freezed
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      nft: nft == freezed
          ? _value.nft
          : nft // ignore: cast_nullable_to_non_nullable
              as Nft?,
      fromAddress: fromAddress == freezed
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      toAddress: toAddress == freezed
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidToAddress: isValidToAddress == freezed
          ? _value.isValidToAddress
          : isValidToAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_WithdrawNftState implements _WithdrawNftState {
  const _$_WithdrawNftState(
      {required this.controllerFromAddress,
      required this.controllerToAddress,
      this.contractAddress,
      this.nft,
      this.fromAddress,
      this.toAddress,
      this.isValidToAddress = false,
      this.status = const Idle()});

  @override
  final TextEditingController controllerFromAddress;
  @override
  final TextEditingController controllerToAddress;
  @override
  final String? contractAddress;
  @override
  final Nft? nft;
  @override
  final String? fromAddress;
  @override
  final String? toAddress;
  @JsonKey()
  @override
  final bool isValidToAddress;
  @JsonKey()
  @override
  final Status<dynamic> status;

  @override
  String toString() {
    return 'WithdrawNftState(controllerFromAddress: $controllerFromAddress, controllerToAddress: $controllerToAddress, contractAddress: $contractAddress, nft: $nft, fromAddress: $fromAddress, toAddress: $toAddress, isValidToAddress: $isValidToAddress, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawNftState &&
            const DeepCollectionEquality()
                .equals(other.controllerFromAddress, controllerFromAddress) &&
            const DeepCollectionEquality()
                .equals(other.controllerToAddress, controllerToAddress) &&
            const DeepCollectionEquality()
                .equals(other.contractAddress, contractAddress) &&
            const DeepCollectionEquality().equals(other.nft, nft) &&
            const DeepCollectionEquality()
                .equals(other.fromAddress, fromAddress) &&
            const DeepCollectionEquality().equals(other.toAddress, toAddress) &&
            const DeepCollectionEquality()
                .equals(other.isValidToAddress, isValidToAddress) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(controllerFromAddress),
      const DeepCollectionEquality().hash(controllerToAddress),
      const DeepCollectionEquality().hash(contractAddress),
      const DeepCollectionEquality().hash(nft),
      const DeepCollectionEquality().hash(fromAddress),
      const DeepCollectionEquality().hash(toAddress),
      const DeepCollectionEquality().hash(isValidToAddress),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$WithdrawNftStateCopyWith<_WithdrawNftState> get copyWith =>
      __$WithdrawNftStateCopyWithImpl<_WithdrawNftState>(this, _$identity);
}

abstract class _WithdrawNftState implements WithdrawNftState {
  const factory _WithdrawNftState(
      {required TextEditingController controllerFromAddress,
      required TextEditingController controllerToAddress,
      String? contractAddress,
      Nft? nft,
      String? fromAddress,
      String? toAddress,
      bool isValidToAddress,
      Status<dynamic> status}) = _$_WithdrawNftState;

  @override
  TextEditingController get controllerFromAddress;
  @override
  TextEditingController get controllerToAddress;
  @override
  String? get contractAddress;
  @override
  Nft? get nft;
  @override
  String? get fromAddress;
  @override
  String? get toAddress;
  @override
  bool get isValidToAddress;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$WithdrawNftStateCopyWith<_WithdrawNftState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WithdrawNftEventTearOff {
  const _$WithdrawNftEventTearOff();

  _WithdrawNftEventInitalData initData(String contractAddress, Nft? nft) {
    return _WithdrawNftEventInitalData(
      contractAddress,
      nft,
    );
  }

  _WithdrawNftEventToAddressChanged onToAddressChanged(String address) {
    return _WithdrawNftEventToAddressChanged(
      address,
    );
  }

  _WithdrawNftEventValidAddress validAddress() {
    return const _WithdrawNftEventValidAddress();
  }

  _WithdrawNftEventSend send() {
    return const _WithdrawNftEventSend();
  }
}

/// @nodoc
const $WithdrawNftEvent = _$WithdrawNftEventTearOff();

/// @nodoc
mixin _$WithdrawNftEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contractAddress, Nft? nft) initData,
    required TResult Function(String address) onToAddressChanged,
    required TResult Function() validAddress,
    required TResult Function() send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawNftEventInitalData value) initData,
    required TResult Function(_WithdrawNftEventToAddressChanged value)
        onToAddressChanged,
    required TResult Function(_WithdrawNftEventValidAddress value) validAddress,
    required TResult Function(_WithdrawNftEventSend value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawNftEventCopyWith<$Res> {
  factory $WithdrawNftEventCopyWith(
          WithdrawNftEvent value, $Res Function(WithdrawNftEvent) then) =
      _$WithdrawNftEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WithdrawNftEventCopyWithImpl<$Res>
    implements $WithdrawNftEventCopyWith<$Res> {
  _$WithdrawNftEventCopyWithImpl(this._value, this._then);

  final WithdrawNftEvent _value;
  // ignore: unused_field
  final $Res Function(WithdrawNftEvent) _then;
}

/// @nodoc
abstract class _$WithdrawNftEventInitalDataCopyWith<$Res> {
  factory _$WithdrawNftEventInitalDataCopyWith(
          _WithdrawNftEventInitalData value,
          $Res Function(_WithdrawNftEventInitalData) then) =
      __$WithdrawNftEventInitalDataCopyWithImpl<$Res>;
  $Res call({String contractAddress, Nft? nft});

  $NftCopyWith<$Res>? get nft;
}

/// @nodoc
class __$WithdrawNftEventInitalDataCopyWithImpl<$Res>
    extends _$WithdrawNftEventCopyWithImpl<$Res>
    implements _$WithdrawNftEventInitalDataCopyWith<$Res> {
  __$WithdrawNftEventInitalDataCopyWithImpl(_WithdrawNftEventInitalData _value,
      $Res Function(_WithdrawNftEventInitalData) _then)
      : super(_value, (v) => _then(v as _WithdrawNftEventInitalData));

  @override
  _WithdrawNftEventInitalData get _value =>
      super._value as _WithdrawNftEventInitalData;

  @override
  $Res call({
    Object? contractAddress = freezed,
    Object? nft = freezed,
  }) {
    return _then(_WithdrawNftEventInitalData(
      contractAddress == freezed
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      nft == freezed
          ? _value.nft
          : nft // ignore: cast_nullable_to_non_nullable
              as Nft?,
    ));
  }

  @override
  $NftCopyWith<$Res>? get nft {
    if (_value.nft == null) {
      return null;
    }

    return $NftCopyWith<$Res>(_value.nft!, (value) {
      return _then(_value.copyWith(nft: value));
    });
  }
}

/// @nodoc

class _$_WithdrawNftEventInitalData implements _WithdrawNftEventInitalData {
  const _$_WithdrawNftEventInitalData(this.contractAddress, this.nft);

  @override
  final String contractAddress;
  @override
  final Nft? nft;

  @override
  String toString() {
    return 'WithdrawNftEvent.initData(contractAddress: $contractAddress, nft: $nft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawNftEventInitalData &&
            const DeepCollectionEquality()
                .equals(other.contractAddress, contractAddress) &&
            const DeepCollectionEquality().equals(other.nft, nft));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contractAddress),
      const DeepCollectionEquality().hash(nft));

  @JsonKey(ignore: true)
  @override
  _$WithdrawNftEventInitalDataCopyWith<_WithdrawNftEventInitalData>
      get copyWith => __$WithdrawNftEventInitalDataCopyWithImpl<
          _WithdrawNftEventInitalData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contractAddress, Nft? nft) initData,
    required TResult Function(String address) onToAddressChanged,
    required TResult Function() validAddress,
    required TResult Function() send,
  }) {
    return initData(contractAddress, nft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
  }) {
    return initData?.call(contractAddress, nft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (initData != null) {
      return initData(contractAddress, nft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawNftEventInitalData value) initData,
    required TResult Function(_WithdrawNftEventToAddressChanged value)
        onToAddressChanged,
    required TResult Function(_WithdrawNftEventValidAddress value) validAddress,
    required TResult Function(_WithdrawNftEventSend value) send,
  }) {
    return initData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
  }) {
    return initData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
    required TResult orElse(),
  }) {
    if (initData != null) {
      return initData(this);
    }
    return orElse();
  }
}

abstract class _WithdrawNftEventInitalData implements WithdrawNftEvent {
  const factory _WithdrawNftEventInitalData(String contractAddress, Nft? nft) =
      _$_WithdrawNftEventInitalData;

  String get contractAddress;
  Nft? get nft;
  @JsonKey(ignore: true)
  _$WithdrawNftEventInitalDataCopyWith<_WithdrawNftEventInitalData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WithdrawNftEventToAddressChangedCopyWith<$Res> {
  factory _$WithdrawNftEventToAddressChangedCopyWith(
          _WithdrawNftEventToAddressChanged value,
          $Res Function(_WithdrawNftEventToAddressChanged) then) =
      __$WithdrawNftEventToAddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class __$WithdrawNftEventToAddressChangedCopyWithImpl<$Res>
    extends _$WithdrawNftEventCopyWithImpl<$Res>
    implements _$WithdrawNftEventToAddressChangedCopyWith<$Res> {
  __$WithdrawNftEventToAddressChangedCopyWithImpl(
      _WithdrawNftEventToAddressChanged _value,
      $Res Function(_WithdrawNftEventToAddressChanged) _then)
      : super(_value, (v) => _then(v as _WithdrawNftEventToAddressChanged));

  @override
  _WithdrawNftEventToAddressChanged get _value =>
      super._value as _WithdrawNftEventToAddressChanged;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_WithdrawNftEventToAddressChanged(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WithdrawNftEventToAddressChanged
    implements _WithdrawNftEventToAddressChanged {
  const _$_WithdrawNftEventToAddressChanged(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'WithdrawNftEvent.onToAddressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawNftEventToAddressChanged &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$WithdrawNftEventToAddressChangedCopyWith<_WithdrawNftEventToAddressChanged>
      get copyWith => __$WithdrawNftEventToAddressChangedCopyWithImpl<
          _WithdrawNftEventToAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contractAddress, Nft? nft) initData,
    required TResult Function(String address) onToAddressChanged,
    required TResult Function() validAddress,
    required TResult Function() send,
  }) {
    return onToAddressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
  }) {
    return onToAddressChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (onToAddressChanged != null) {
      return onToAddressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawNftEventInitalData value) initData,
    required TResult Function(_WithdrawNftEventToAddressChanged value)
        onToAddressChanged,
    required TResult Function(_WithdrawNftEventValidAddress value) validAddress,
    required TResult Function(_WithdrawNftEventSend value) send,
  }) {
    return onToAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
  }) {
    return onToAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
    required TResult orElse(),
  }) {
    if (onToAddressChanged != null) {
      return onToAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _WithdrawNftEventToAddressChanged implements WithdrawNftEvent {
  const factory _WithdrawNftEventToAddressChanged(String address) =
      _$_WithdrawNftEventToAddressChanged;

  String get address;
  @JsonKey(ignore: true)
  _$WithdrawNftEventToAddressChangedCopyWith<_WithdrawNftEventToAddressChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WithdrawNftEventValidAddressCopyWith<$Res> {
  factory _$WithdrawNftEventValidAddressCopyWith(
          _WithdrawNftEventValidAddress value,
          $Res Function(_WithdrawNftEventValidAddress) then) =
      __$WithdrawNftEventValidAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$WithdrawNftEventValidAddressCopyWithImpl<$Res>
    extends _$WithdrawNftEventCopyWithImpl<$Res>
    implements _$WithdrawNftEventValidAddressCopyWith<$Res> {
  __$WithdrawNftEventValidAddressCopyWithImpl(
      _WithdrawNftEventValidAddress _value,
      $Res Function(_WithdrawNftEventValidAddress) _then)
      : super(_value, (v) => _then(v as _WithdrawNftEventValidAddress));

  @override
  _WithdrawNftEventValidAddress get _value =>
      super._value as _WithdrawNftEventValidAddress;
}

/// @nodoc

class _$_WithdrawNftEventValidAddress implements _WithdrawNftEventValidAddress {
  const _$_WithdrawNftEventValidAddress();

  @override
  String toString() {
    return 'WithdrawNftEvent.validAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawNftEventValidAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contractAddress, Nft? nft) initData,
    required TResult Function(String address) onToAddressChanged,
    required TResult Function() validAddress,
    required TResult Function() send,
  }) {
    return validAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
  }) {
    return validAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
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
    required TResult Function(_WithdrawNftEventInitalData value) initData,
    required TResult Function(_WithdrawNftEventToAddressChanged value)
        onToAddressChanged,
    required TResult Function(_WithdrawNftEventValidAddress value) validAddress,
    required TResult Function(_WithdrawNftEventSend value) send,
  }) {
    return validAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
  }) {
    return validAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
    required TResult orElse(),
  }) {
    if (validAddress != null) {
      return validAddress(this);
    }
    return orElse();
  }
}

abstract class _WithdrawNftEventValidAddress implements WithdrawNftEvent {
  const factory _WithdrawNftEventValidAddress() =
      _$_WithdrawNftEventValidAddress;
}

/// @nodoc
abstract class _$WithdrawNftEventSendCopyWith<$Res> {
  factory _$WithdrawNftEventSendCopyWith(_WithdrawNftEventSend value,
          $Res Function(_WithdrawNftEventSend) then) =
      __$WithdrawNftEventSendCopyWithImpl<$Res>;
}

/// @nodoc
class __$WithdrawNftEventSendCopyWithImpl<$Res>
    extends _$WithdrawNftEventCopyWithImpl<$Res>
    implements _$WithdrawNftEventSendCopyWith<$Res> {
  __$WithdrawNftEventSendCopyWithImpl(
      _WithdrawNftEventSend _value, $Res Function(_WithdrawNftEventSend) _then)
      : super(_value, (v) => _then(v as _WithdrawNftEventSend));

  @override
  _WithdrawNftEventSend get _value => super._value as _WithdrawNftEventSend;
}

/// @nodoc

class _$_WithdrawNftEventSend implements _WithdrawNftEventSend {
  const _$_WithdrawNftEventSend();

  @override
  String toString() {
    return 'WithdrawNftEvent.send()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WithdrawNftEventSend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contractAddress, Nft? nft) initData,
    required TResult Function(String address) onToAddressChanged,
    required TResult Function() validAddress,
    required TResult Function() send,
  }) {
    return send();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
  }) {
    return send?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contractAddress, Nft? nft)? initData,
    TResult Function(String address)? onToAddressChanged,
    TResult Function()? validAddress,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawNftEventInitalData value) initData,
    required TResult Function(_WithdrawNftEventToAddressChanged value)
        onToAddressChanged,
    required TResult Function(_WithdrawNftEventValidAddress value) validAddress,
    required TResult Function(_WithdrawNftEventSend value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawNftEventInitalData value)? initData,
    TResult Function(_WithdrawNftEventToAddressChanged value)?
        onToAddressChanged,
    TResult Function(_WithdrawNftEventValidAddress value)? validAddress,
    TResult Function(_WithdrawNftEventSend value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _WithdrawNftEventSend implements WithdrawNftEvent {
  const factory _WithdrawNftEventSend() = _$_WithdrawNftEventSend;
}
