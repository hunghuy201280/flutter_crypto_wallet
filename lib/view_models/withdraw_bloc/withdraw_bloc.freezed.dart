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

  _WithdrawState call({String? address, List<Token> tokens = const []}) {
    return _WithdrawState(
      address: address,
      tokens: tokens,
    );
  }
}

/// @nodoc
const $WithdrawState = _$WithdrawStateTearOff();

/// @nodoc
mixin _$WithdrawState {
  String? get address => throw _privateConstructorUsedError;
  List<Token> get tokens => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawStateCopyWith<WithdrawState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawStateCopyWith<$Res> {
  factory $WithdrawStateCopyWith(
          WithdrawState value, $Res Function(WithdrawState) then) =
      _$WithdrawStateCopyWithImpl<$Res>;
  $Res call({String? address, List<Token> tokens});
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
    Object? address = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
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
  $Res call({String? address, List<Token> tokens});
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
    Object? address = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_WithdrawState(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ));
  }
}

/// @nodoc

class _$_WithdrawState implements _WithdrawState {
  const _$_WithdrawState({this.address, this.tokens = const []});

  @override
  final String? address;
  @JsonKey()
  @override
  final List<Token> tokens;

  @override
  String toString() {
    return 'WithdrawState(address: $address, tokens: $tokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawState &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.tokens, tokens));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(tokens));

  @JsonKey(ignore: true)
  @override
  _$WithdrawStateCopyWith<_WithdrawState> get copyWith =>
      __$WithdrawStateCopyWithImpl<_WithdrawState>(this, _$identity);
}

abstract class _WithdrawState implements WithdrawState {
  const factory _WithdrawState({String? address, List<Token> tokens}) =
      _$_WithdrawState;

  @override
  String? get address;
  @override
  List<Token> get tokens;
  @override
  @JsonKey(ignore: true)
  _$WithdrawStateCopyWith<_WithdrawState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WithdrawEventTearOff {
  const _$WithdrawEventTearOff();

  _WithdrawEventValidAddress validAddress(String address) {
    return _WithdrawEventValidAddress(
      address,
    );
  }
}

/// @nodoc
const $WithdrawEvent = _$WithdrawEventTearOff();

/// @nodoc
mixin _$WithdrawEvent {
  String get address => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) validAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? validAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? validAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawEventCopyWith<WithdrawEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawEventCopyWith<$Res> {
  factory $WithdrawEventCopyWith(
          WithdrawEvent value, $Res Function(WithdrawEvent) then) =
      _$WithdrawEventCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$WithdrawEventCopyWithImpl<$Res>
    implements $WithdrawEventCopyWith<$Res> {
  _$WithdrawEventCopyWithImpl(this._value, this._then);

  final WithdrawEvent _value;
  // ignore: unused_field
  final $Res Function(WithdrawEvent) _then;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WithdrawEventValidAddressCopyWith<$Res>
    implements $WithdrawEventCopyWith<$Res> {
  factory _$WithdrawEventValidAddressCopyWith(_WithdrawEventValidAddress value,
          $Res Function(_WithdrawEventValidAddress) then) =
      __$WithdrawEventValidAddressCopyWithImpl<$Res>;
  @override
  $Res call({String address});
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

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_WithdrawEventValidAddress(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WithdrawEventValidAddress implements _WithdrawEventValidAddress {
  const _$_WithdrawEventValidAddress(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'WithdrawEvent.validAddress(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawEventValidAddress &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$WithdrawEventValidAddressCopyWith<_WithdrawEventValidAddress>
      get copyWith =>
          __$WithdrawEventValidAddressCopyWithImpl<_WithdrawEventValidAddress>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) validAddress,
  }) {
    return validAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address)? validAddress,
  }) {
    return validAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? validAddress,
    required TResult orElse(),
  }) {
    if (validAddress != null) {
      return validAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithdrawEventValidAddress value) validAddress,
  }) {
    return validAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WithdrawEventValidAddress value)? validAddress,
  }) {
    return validAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory _WithdrawEventValidAddress(String address) =
      _$_WithdrawEventValidAddress;

  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$WithdrawEventValidAddressCopyWith<_WithdrawEventValidAddress>
      get copyWith => throw _privateConstructorUsedError;
}
