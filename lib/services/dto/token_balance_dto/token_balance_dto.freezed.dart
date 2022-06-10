// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_balance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenBalanceDto _$TokenBalanceDtoFromJson(Map<String, dynamic> json) {
  return _TokenBalanceDto.fromJson(json);
}

/// @nodoc
class _$TokenBalanceDtoTearOff {
  const _$TokenBalanceDtoTearOff();

  _TokenBalanceDto call({required String address, required double balance}) {
    return _TokenBalanceDto(
      address: address,
      balance: balance,
    );
  }

  TokenBalanceDto fromJson(Map<String, Object?> json) {
    return TokenBalanceDto.fromJson(json);
  }
}

/// @nodoc
const $TokenBalanceDto = _$TokenBalanceDtoTearOff();

/// @nodoc
mixin _$TokenBalanceDto {
  String get address => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenBalanceDtoCopyWith<TokenBalanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenBalanceDtoCopyWith<$Res> {
  factory $TokenBalanceDtoCopyWith(
          TokenBalanceDto value, $Res Function(TokenBalanceDto) then) =
      _$TokenBalanceDtoCopyWithImpl<$Res>;
  $Res call({String address, double balance});
}

/// @nodoc
class _$TokenBalanceDtoCopyWithImpl<$Res>
    implements $TokenBalanceDtoCopyWith<$Res> {
  _$TokenBalanceDtoCopyWithImpl(this._value, this._then);

  final TokenBalanceDto _value;
  // ignore: unused_field
  final $Res Function(TokenBalanceDto) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TokenBalanceDtoCopyWith<$Res>
    implements $TokenBalanceDtoCopyWith<$Res> {
  factory _$TokenBalanceDtoCopyWith(
          _TokenBalanceDto value, $Res Function(_TokenBalanceDto) then) =
      __$TokenBalanceDtoCopyWithImpl<$Res>;
  @override
  $Res call({String address, double balance});
}

/// @nodoc
class __$TokenBalanceDtoCopyWithImpl<$Res>
    extends _$TokenBalanceDtoCopyWithImpl<$Res>
    implements _$TokenBalanceDtoCopyWith<$Res> {
  __$TokenBalanceDtoCopyWithImpl(
      _TokenBalanceDto _value, $Res Function(_TokenBalanceDto) _then)
      : super(_value, (v) => _then(v as _TokenBalanceDto));

  @override
  _TokenBalanceDto get _value => super._value as _TokenBalanceDto;

  @override
  $Res call({
    Object? address = freezed,
    Object? balance = freezed,
  }) {
    return _then(_TokenBalanceDto(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenBalanceDto implements _TokenBalanceDto {
  _$_TokenBalanceDto({required this.address, required this.balance});

  factory _$_TokenBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$$_TokenBalanceDtoFromJson(json);

  @override
  final String address;
  @override
  final double balance;

  @override
  String toString() {
    return 'TokenBalanceDto(address: $address, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenBalanceDto &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.balance, balance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(balance));

  @JsonKey(ignore: true)
  @override
  _$TokenBalanceDtoCopyWith<_TokenBalanceDto> get copyWith =>
      __$TokenBalanceDtoCopyWithImpl<_TokenBalanceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenBalanceDtoToJson(this);
  }
}

abstract class _TokenBalanceDto implements TokenBalanceDto {
  factory _TokenBalanceDto({required String address, required double balance}) =
      _$_TokenBalanceDto;

  factory _TokenBalanceDto.fromJson(Map<String, dynamic> json) =
      _$_TokenBalanceDto.fromJson;

  @override
  String get address;
  @override
  double get balance;
  @override
  @JsonKey(ignore: true)
  _$TokenBalanceDtoCopyWith<_TokenBalanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
