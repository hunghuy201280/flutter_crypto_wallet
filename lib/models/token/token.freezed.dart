// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
class _$TokenTearOff {
  const _$TokenTearOff();

  _Token call(
      {@HiveField(0) required String address,
      @HiveField(1) required String symbol,
      @HiveField(2) required int decimal,
      @HiveField(3) String? imageUrl,
      @HiveField(4) double balance = 0,
      @HiveField(5) JazziconData? avatar}) {
    return _Token(
      address: address,
      symbol: symbol,
      decimal: decimal,
      imageUrl: imageUrl,
      balance: balance,
      avatar: avatar,
    );
  }

  Token fromJson(Map<String, Object?> json) {
    return Token.fromJson(json);
  }
}

/// @nodoc
const $Token = _$TokenTearOff();

/// @nodoc
mixin _$Token {
  @HiveField(0)
  String get address => throw _privateConstructorUsedError;
  @HiveField(1)
  String get symbol => throw _privateConstructorUsedError;
  @HiveField(2)
  int get decimal => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get imageUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  double get balance => throw _privateConstructorUsedError;
  @HiveField(5)
  JazziconData? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String address,
      @HiveField(1) String symbol,
      @HiveField(2) int decimal,
      @HiveField(3) String? imageUrl,
      @HiveField(4) double balance,
      @HiveField(5) JazziconData? avatar});

  $JazziconDataCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? symbol = freezed,
    Object? decimal = freezed,
    Object? imageUrl = freezed,
    Object? balance = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimal: decimal == freezed
          ? _value.decimal
          : decimal // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as JazziconData?,
    ));
  }

  @override
  $JazziconDataCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $JazziconDataCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value));
    });
  }
}

/// @nodoc
abstract class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) then) =
      __$TokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String address,
      @HiveField(1) String symbol,
      @HiveField(2) int decimal,
      @HiveField(3) String? imageUrl,
      @HiveField(4) double balance,
      @HiveField(5) JazziconData? avatar});

  @override
  $JazziconDataCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(_Token _value, $Res Function(_Token) _then)
      : super(_value, (v) => _then(v as _Token));

  @override
  _Token get _value => super._value as _Token;

  @override
  $Res call({
    Object? address = freezed,
    Object? symbol = freezed,
    Object? decimal = freezed,
    Object? imageUrl = freezed,
    Object? balance = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_Token(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimal: decimal == freezed
          ? _value.decimal
          : decimal // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as JazziconData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: HiveConfigs.kTokenTypeId, adapterName: "TokenAdapter")
class _$_Token implements _Token {
  const _$_Token(
      {@HiveField(0) required this.address,
      @HiveField(1) required this.symbol,
      @HiveField(2) required this.decimal,
      @HiveField(3) this.imageUrl,
      @HiveField(4) this.balance = 0,
      @HiveField(5) this.avatar});

  factory _$_Token.fromJson(Map<String, dynamic> json) =>
      _$$_TokenFromJson(json);

  @override
  @HiveField(0)
  final String address;
  @override
  @HiveField(1)
  final String symbol;
  @override
  @HiveField(2)
  final int decimal;
  @override
  @HiveField(3)
  final String? imageUrl;
  @JsonKey()
  @override
  @HiveField(4)
  final double balance;
  @override
  @HiveField(5)
  final JazziconData? avatar;

  @override
  String toString() {
    return 'Token(address: $address, symbol: $symbol, decimal: $decimal, imageUrl: $imageUrl, balance: $balance, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Token &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.decimal, decimal) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(decimal),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$TokenCopyWith<_Token> get copyWith =>
      __$TokenCopyWithImpl<_Token>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenToJson(this);
  }
}

abstract class _Token implements Token {
  const factory _Token(
      {@HiveField(0) required String address,
      @HiveField(1) required String symbol,
      @HiveField(2) required int decimal,
      @HiveField(3) String? imageUrl,
      @HiveField(4) double balance,
      @HiveField(5) JazziconData? avatar}) = _$_Token;

  factory _Token.fromJson(Map<String, dynamic> json) = _$_Token.fromJson;

  @override
  @HiveField(0)
  String get address;
  @override
  @HiveField(1)
  String get symbol;
  @override
  @HiveField(2)
  int get decimal;
  @override
  @HiveField(3)
  String? get imageUrl;
  @override
  @HiveField(4)
  double get balance;
  @override
  @HiveField(5)
  JazziconData? get avatar;
  @override
  @JsonKey(ignore: true)
  _$TokenCopyWith<_Token> get copyWith => throw _privateConstructorUsedError;
}
