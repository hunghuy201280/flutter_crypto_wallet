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

  _WithdrawEventTokenChanged onTokenChanged(Token token) {
    return _WithdrawEventTokenChanged(
      token,
    );
  }

  _WithdrawEventAmountChanged onAmountChanged(double amount) {
    return _WithdrawEventAmountChanged(
      amount,
    );
  }

  _WithdrawEventMaxAmount maxAmount() {
    return const _WithdrawEventMaxAmount();
  }

  _WithdrawEventSend send() {
    return const _WithdrawEventSend();
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
    required TResult Function(Token token) onTokenChanged,
    required TResult Function(double amount) onAmountChanged,
    required TResult Function() maxAmount,
    required TResult Function() send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawEventAddressChanged value)
        onAddressChanged,
    required TResult Function(_WithdrawEventInitData value) initialData,
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
    required TResult Function(_WithdrawEventTokenChanged value) onTokenChanged,
    required TResult Function(_WithdrawEventAmountChanged value)
        onAmountChanged,
    required TResult Function(_WithdrawEventMaxAmount value) maxAmount,
    required TResult Function(_WithdrawEventSend value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
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
    required TResult Function(Token token) onTokenChanged,
    required TResult Function(double amount) onAmountChanged,
    required TResult Function() maxAmount,
    required TResult Function() send,
  }) {
    return onAddressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
  }) {
    return onAddressChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
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
    required TResult Function(_WithdrawEventTokenChanged value) onTokenChanged,
    required TResult Function(_WithdrawEventAmountChanged value)
        onAmountChanged,
    required TResult Function(_WithdrawEventMaxAmount value) maxAmount,
    required TResult Function(_WithdrawEventSend value) send,
  }) {
    return onAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
  }) {
    return onAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
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
    required TResult Function(Token token) onTokenChanged,
    required TResult Function(double amount) onAmountChanged,
    required TResult Function() maxAmount,
    required TResult Function() send,
  }) {
    return initialData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
  }) {
    return initialData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
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
    required TResult Function(_WithdrawEventTokenChanged value) onTokenChanged,
    required TResult Function(_WithdrawEventAmountChanged value)
        onAmountChanged,
    required TResult Function(_WithdrawEventMaxAmount value) maxAmount,
    required TResult Function(_WithdrawEventSend value) send,
  }) {
    return initialData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
  }) {
    return initialData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
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
    required TResult Function(Token token) onTokenChanged,
    required TResult Function(double amount) onAmountChanged,
    required TResult Function() maxAmount,
    required TResult Function() send,
  }) {
    return validAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
  }) {
    return validAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
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
    required TResult Function(_WithdrawEventAddressChanged value)
        onAddressChanged,
    required TResult Function(_WithdrawEventInitData value) initialData,
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
    required TResult Function(_WithdrawEventTokenChanged value) onTokenChanged,
    required TResult Function(_WithdrawEventAmountChanged value)
        onAmountChanged,
    required TResult Function(_WithdrawEventMaxAmount value) maxAmount,
    required TResult Function(_WithdrawEventSend value) send,
  }) {
    return validAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
  }) {
    return validAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
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

/// @nodoc
abstract class _$WithdrawEventTokenChangedCopyWith<$Res> {
  factory _$WithdrawEventTokenChangedCopyWith(_WithdrawEventTokenChanged value,
          $Res Function(_WithdrawEventTokenChanged) then) =
      __$WithdrawEventTokenChangedCopyWithImpl<$Res>;
  $Res call({Token token});

  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$WithdrawEventTokenChangedCopyWithImpl<$Res>
    extends _$WithdrawEventCopyWithImpl<$Res>
    implements _$WithdrawEventTokenChangedCopyWith<$Res> {
  __$WithdrawEventTokenChangedCopyWithImpl(_WithdrawEventTokenChanged _value,
      $Res Function(_WithdrawEventTokenChanged) _then)
      : super(_value, (v) => _then(v as _WithdrawEventTokenChanged));

  @override
  _WithdrawEventTokenChanged get _value =>
      super._value as _WithdrawEventTokenChanged;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_WithdrawEventTokenChanged(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$_WithdrawEventTokenChanged implements _WithdrawEventTokenChanged {
  const _$_WithdrawEventTokenChanged(this.token);

  @override
  final Token token;

  @override
  String toString() {
    return 'WithdrawEvent.onTokenChanged(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawEventTokenChanged &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$WithdrawEventTokenChangedCopyWith<_WithdrawEventTokenChanged>
      get copyWith =>
          __$WithdrawEventTokenChangedCopyWithImpl<_WithdrawEventTokenChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) onAddressChanged,
    required TResult Function() initialData,
    required TResult Function() validAddress,
    required TResult Function(Token token) onTokenChanged,
    required TResult Function(double amount) onAmountChanged,
    required TResult Function() maxAmount,
    required TResult Function() send,
  }) {
    return onTokenChanged(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
  }) {
    return onTokenChanged?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (onTokenChanged != null) {
      return onTokenChanged(token);
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
    required TResult Function(_WithdrawEventTokenChanged value) onTokenChanged,
    required TResult Function(_WithdrawEventAmountChanged value)
        onAmountChanged,
    required TResult Function(_WithdrawEventMaxAmount value) maxAmount,
    required TResult Function(_WithdrawEventSend value) send,
  }) {
    return onTokenChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
  }) {
    return onTokenChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
    required TResult orElse(),
  }) {
    if (onTokenChanged != null) {
      return onTokenChanged(this);
    }
    return orElse();
  }
}

abstract class _WithdrawEventTokenChanged implements WithdrawEvent {
  const factory _WithdrawEventTokenChanged(Token token) =
      _$_WithdrawEventTokenChanged;

  Token get token;
  @JsonKey(ignore: true)
  _$WithdrawEventTokenChangedCopyWith<_WithdrawEventTokenChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WithdrawEventAmountChangedCopyWith<$Res> {
  factory _$WithdrawEventAmountChangedCopyWith(
          _WithdrawEventAmountChanged value,
          $Res Function(_WithdrawEventAmountChanged) then) =
      __$WithdrawEventAmountChangedCopyWithImpl<$Res>;
  $Res call({double amount});
}

/// @nodoc
class __$WithdrawEventAmountChangedCopyWithImpl<$Res>
    extends _$WithdrawEventCopyWithImpl<$Res>
    implements _$WithdrawEventAmountChangedCopyWith<$Res> {
  __$WithdrawEventAmountChangedCopyWithImpl(_WithdrawEventAmountChanged _value,
      $Res Function(_WithdrawEventAmountChanged) _then)
      : super(_value, (v) => _then(v as _WithdrawEventAmountChanged));

  @override
  _WithdrawEventAmountChanged get _value =>
      super._value as _WithdrawEventAmountChanged;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_WithdrawEventAmountChanged(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_WithdrawEventAmountChanged implements _WithdrawEventAmountChanged {
  const _$_WithdrawEventAmountChanged(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'WithdrawEvent.onAmountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawEventAmountChanged &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$WithdrawEventAmountChangedCopyWith<_WithdrawEventAmountChanged>
      get copyWith => __$WithdrawEventAmountChangedCopyWithImpl<
          _WithdrawEventAmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) onAddressChanged,
    required TResult Function() initialData,
    required TResult Function() validAddress,
    required TResult Function(Token token) onTokenChanged,
    required TResult Function(double amount) onAmountChanged,
    required TResult Function() maxAmount,
    required TResult Function() send,
  }) {
    return onAmountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
  }) {
    return onAmountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (onAmountChanged != null) {
      return onAmountChanged(amount);
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
    required TResult Function(_WithdrawEventTokenChanged value) onTokenChanged,
    required TResult Function(_WithdrawEventAmountChanged value)
        onAmountChanged,
    required TResult Function(_WithdrawEventMaxAmount value) maxAmount,
    required TResult Function(_WithdrawEventSend value) send,
  }) {
    return onAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
  }) {
    return onAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
    required TResult orElse(),
  }) {
    if (onAmountChanged != null) {
      return onAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _WithdrawEventAmountChanged implements WithdrawEvent {
  const factory _WithdrawEventAmountChanged(double amount) =
      _$_WithdrawEventAmountChanged;

  double get amount;
  @JsonKey(ignore: true)
  _$WithdrawEventAmountChangedCopyWith<_WithdrawEventAmountChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WithdrawEventMaxAmountCopyWith<$Res> {
  factory _$WithdrawEventMaxAmountCopyWith(_WithdrawEventMaxAmount value,
          $Res Function(_WithdrawEventMaxAmount) then) =
      __$WithdrawEventMaxAmountCopyWithImpl<$Res>;
}

/// @nodoc
class __$WithdrawEventMaxAmountCopyWithImpl<$Res>
    extends _$WithdrawEventCopyWithImpl<$Res>
    implements _$WithdrawEventMaxAmountCopyWith<$Res> {
  __$WithdrawEventMaxAmountCopyWithImpl(_WithdrawEventMaxAmount _value,
      $Res Function(_WithdrawEventMaxAmount) _then)
      : super(_value, (v) => _then(v as _WithdrawEventMaxAmount));

  @override
  _WithdrawEventMaxAmount get _value => super._value as _WithdrawEventMaxAmount;
}

/// @nodoc

class _$_WithdrawEventMaxAmount implements _WithdrawEventMaxAmount {
  const _$_WithdrawEventMaxAmount();

  @override
  String toString() {
    return 'WithdrawEvent.maxAmount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WithdrawEventMaxAmount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) onAddressChanged,
    required TResult Function() initialData,
    required TResult Function() validAddress,
    required TResult Function(Token token) onTokenChanged,
    required TResult Function(double amount) onAmountChanged,
    required TResult Function() maxAmount,
    required TResult Function() send,
  }) {
    return maxAmount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
  }) {
    return maxAmount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
    required TResult orElse(),
  }) {
    if (maxAmount != null) {
      return maxAmount();
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
    required TResult Function(_WithdrawEventTokenChanged value) onTokenChanged,
    required TResult Function(_WithdrawEventAmountChanged value)
        onAmountChanged,
    required TResult Function(_WithdrawEventMaxAmount value) maxAmount,
    required TResult Function(_WithdrawEventSend value) send,
  }) {
    return maxAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
  }) {
    return maxAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
    required TResult orElse(),
  }) {
    if (maxAmount != null) {
      return maxAmount(this);
    }
    return orElse();
  }
}

abstract class _WithdrawEventMaxAmount implements WithdrawEvent {
  const factory _WithdrawEventMaxAmount() = _$_WithdrawEventMaxAmount;
}

/// @nodoc
abstract class _$WithdrawEventSendCopyWith<$Res> {
  factory _$WithdrawEventSendCopyWith(
          _WithdrawEventSend value, $Res Function(_WithdrawEventSend) then) =
      __$WithdrawEventSendCopyWithImpl<$Res>;
}

/// @nodoc
class __$WithdrawEventSendCopyWithImpl<$Res>
    extends _$WithdrawEventCopyWithImpl<$Res>
    implements _$WithdrawEventSendCopyWith<$Res> {
  __$WithdrawEventSendCopyWithImpl(
      _WithdrawEventSend _value, $Res Function(_WithdrawEventSend) _then)
      : super(_value, (v) => _then(v as _WithdrawEventSend));

  @override
  _WithdrawEventSend get _value => super._value as _WithdrawEventSend;
}

/// @nodoc

class _$_WithdrawEventSend implements _WithdrawEventSend {
  const _$_WithdrawEventSend();

  @override
  String toString() {
    return 'WithdrawEvent.send()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WithdrawEventSend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) onAddressChanged,
    required TResult Function() initialData,
    required TResult Function() validAddress,
    required TResult Function(Token token) onTokenChanged,
    required TResult Function(double amount) onAmountChanged,
    required TResult Function() maxAmount,
    required TResult Function() send,
  }) {
    return send();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
    TResult Function()? send,
  }) {
    return send?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? onAddressChanged,
    TResult Function()? initialData,
    TResult Function()? validAddress,
    TResult Function(Token token)? onTokenChanged,
    TResult Function(double amount)? onAmountChanged,
    TResult Function()? maxAmount,
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
    required TResult Function(_WithdrawEventAddressChanged value)
        onAddressChanged,
    required TResult Function(_WithdrawEventInitData value) initialData,
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
    required TResult Function(_WithdrawEventTokenChanged value) onTokenChanged,
    required TResult Function(_WithdrawEventAmountChanged value)
        onAmountChanged,
    required TResult Function(_WithdrawEventMaxAmount value) maxAmount,
    required TResult Function(_WithdrawEventSend value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventAddressChanged value)? onAddressChanged,
    TResult Function(_WithdrawEventInitData value)? initialData,
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    TResult Function(_WithdrawEventTokenChanged value)? onTokenChanged,
    TResult Function(_WithdrawEventAmountChanged value)? onAmountChanged,
    TResult Function(_WithdrawEventMaxAmount value)? maxAmount,
    TResult Function(_WithdrawEventSend value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _WithdrawEventSend implements WithdrawEvent {
  const factory _WithdrawEventSend() = _$_WithdrawEventSend;
}

/// @nodoc
class _$WithdrawStateTearOff {
  const _$WithdrawStateTearOff();

  _WithdrawState call(
      {required TextEditingController controllerAddress,
      required TextEditingController controllerAmount,
      String? address,
      bool isValidAddress = false,
      Token? tokenSelected,
      List<Token> tokens = const [],
      Status<dynamic> status = const Idle(),
      double amount = 0.0}) {
    return _WithdrawState(
      controllerAddress: controllerAddress,
      controllerAmount: controllerAmount,
      address: address,
      isValidAddress: isValidAddress,
      tokenSelected: tokenSelected,
      tokens: tokens,
      status: status,
      amount: amount,
    );
  }
}

/// @nodoc
const $WithdrawState = _$WithdrawStateTearOff();

/// @nodoc
mixin _$WithdrawState {
  TextEditingController get controllerAddress =>
      throw _privateConstructorUsedError;
  TextEditingController get controllerAmount =>
      throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool get isValidAddress => throw _privateConstructorUsedError;
  Token? get tokenSelected => throw _privateConstructorUsedError;
  List<Token> get tokens => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

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
      TextEditingController controllerAmount,
      String? address,
      bool isValidAddress,
      Token? tokenSelected,
      List<Token> tokens,
      Status<dynamic> status,
      double amount});

  $TokenCopyWith<$Res>? get tokenSelected;
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
    Object? controllerAmount = freezed,
    Object? address = freezed,
    Object? isValidAddress = freezed,
    Object? tokenSelected = freezed,
    Object? tokens = freezed,
    Object? status = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      controllerAddress: controllerAddress == freezed
          ? _value.controllerAddress
          : controllerAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      controllerAmount: controllerAmount == freezed
          ? _value.controllerAmount
          : controllerAmount // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidAddress: isValidAddress == freezed
          ? _value.isValidAddress
          : isValidAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenSelected: tokenSelected == freezed
          ? _value.tokenSelected
          : tokenSelected // ignore: cast_nullable_to_non_nullable
              as Token?,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $TokenCopyWith<$Res>? get tokenSelected {
    if (_value.tokenSelected == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.tokenSelected!, (value) {
      return _then(_value.copyWith(tokenSelected: value));
    });
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
      TextEditingController controllerAmount,
      String? address,
      bool isValidAddress,
      Token? tokenSelected,
      List<Token> tokens,
      Status<dynamic> status,
      double amount});

  @override
  $TokenCopyWith<$Res>? get tokenSelected;
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
    Object? controllerAmount = freezed,
    Object? address = freezed,
    Object? isValidAddress = freezed,
    Object? tokenSelected = freezed,
    Object? tokens = freezed,
    Object? status = freezed,
    Object? amount = freezed,
  }) {
    return _then(_WithdrawState(
      controllerAddress: controllerAddress == freezed
          ? _value.controllerAddress
          : controllerAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      controllerAmount: controllerAmount == freezed
          ? _value.controllerAmount
          : controllerAmount // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidAddress: isValidAddress == freezed
          ? _value.isValidAddress
          : isValidAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenSelected: tokenSelected == freezed
          ? _value.tokenSelected
          : tokenSelected // ignore: cast_nullable_to_non_nullable
              as Token?,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_WithdrawState implements _WithdrawState {
  const _$_WithdrawState(
      {required this.controllerAddress,
      required this.controllerAmount,
      this.address,
      this.isValidAddress = false,
      this.tokenSelected,
      this.tokens = const [],
      this.status = const Idle(),
      this.amount = 0.0});

  @override
  final TextEditingController controllerAddress;
  @override
  final TextEditingController controllerAmount;
  @override
  final String? address;
  @JsonKey()
  @override
  final bool isValidAddress;
  @override
  final Token? tokenSelected;
  @JsonKey()
  @override
  final List<Token> tokens;
  @JsonKey()
  @override
  final Status<dynamic> status;
  @JsonKey()
  @override
  final double amount;

  @override
  String toString() {
    return 'WithdrawState(controllerAddress: $controllerAddress, controllerAmount: $controllerAmount, address: $address, isValidAddress: $isValidAddress, tokenSelected: $tokenSelected, tokens: $tokens, status: $status, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawState &&
            const DeepCollectionEquality()
                .equals(other.controllerAddress, controllerAddress) &&
            const DeepCollectionEquality()
                .equals(other.controllerAmount, controllerAmount) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.isValidAddress, isValidAddress) &&
            const DeepCollectionEquality()
                .equals(other.tokenSelected, tokenSelected) &&
            const DeepCollectionEquality().equals(other.tokens, tokens) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(controllerAddress),
      const DeepCollectionEquality().hash(controllerAmount),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(isValidAddress),
      const DeepCollectionEquality().hash(tokenSelected),
      const DeepCollectionEquality().hash(tokens),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$WithdrawStateCopyWith<_WithdrawState> get copyWith =>
      __$WithdrawStateCopyWithImpl<_WithdrawState>(this, _$identity);
}

abstract class _WithdrawState implements WithdrawState {
  const factory _WithdrawState(
      {required TextEditingController controllerAddress,
      required TextEditingController controllerAmount,
      String? address,
      bool isValidAddress,
      Token? tokenSelected,
      List<Token> tokens,
      Status<dynamic> status,
      double amount}) = _$_WithdrawState;

  @override
  TextEditingController get controllerAddress;
  @override
  TextEditingController get controllerAmount;
  @override
  String? get address;
  @override
  bool get isValidAddress;
  @override
  Token? get tokenSelected;
  @override
  List<Token> get tokens;
  @override
  Status<dynamic> get status;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$WithdrawStateCopyWith<_WithdrawState> get copyWith =>
      throw _privateConstructorUsedError;
}
