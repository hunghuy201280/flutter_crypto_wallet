// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_wallet_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateWalletDto _$CreateWalletDtoFromJson(Map<String, dynamic> json) {
  return _CreateWalletDto.fromJson(json);
}

/// @nodoc
class _$CreateWalletDtoTearOff {
  const _$CreateWalletDtoTearOff();

  _CreateWalletDto call({required String mnemonic, required Wallet wallet}) {
    return _CreateWalletDto(
      mnemonic: mnemonic,
      wallet: wallet,
    );
  }

  CreateWalletDto fromJson(Map<String, Object?> json) {
    return CreateWalletDto.fromJson(json);
  }
}

/// @nodoc
const $CreateWalletDto = _$CreateWalletDtoTearOff();

/// @nodoc
mixin _$CreateWalletDto {
  String get mnemonic => throw _privateConstructorUsedError;
  Wallet get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateWalletDtoCopyWith<CreateWalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletDtoCopyWith<$Res> {
  factory $CreateWalletDtoCopyWith(
          CreateWalletDto value, $Res Function(CreateWalletDto) then) =
      _$CreateWalletDtoCopyWithImpl<$Res>;
  $Res call({String mnemonic, Wallet wallet});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$CreateWalletDtoCopyWithImpl<$Res>
    implements $CreateWalletDtoCopyWith<$Res> {
  _$CreateWalletDtoCopyWithImpl(this._value, this._then);

  final CreateWalletDto _value;
  // ignore: unused_field
  final $Res Function(CreateWalletDto) _then;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }

  @override
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$CreateWalletDtoCopyWith<$Res>
    implements $CreateWalletDtoCopyWith<$Res> {
  factory _$CreateWalletDtoCopyWith(
          _CreateWalletDto value, $Res Function(_CreateWalletDto) then) =
      __$CreateWalletDtoCopyWithImpl<$Res>;
  @override
  $Res call({String mnemonic, Wallet wallet});

  @override
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class __$CreateWalletDtoCopyWithImpl<$Res>
    extends _$CreateWalletDtoCopyWithImpl<$Res>
    implements _$CreateWalletDtoCopyWith<$Res> {
  __$CreateWalletDtoCopyWithImpl(
      _CreateWalletDto _value, $Res Function(_CreateWalletDto) _then)
      : super(_value, (v) => _then(v as _CreateWalletDto));

  @override
  _CreateWalletDto get _value => super._value as _CreateWalletDto;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_CreateWalletDto(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateWalletDto implements _CreateWalletDto {
  _$_CreateWalletDto({required this.mnemonic, required this.wallet});

  factory _$_CreateWalletDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateWalletDtoFromJson(json);

  @override
  final String mnemonic;
  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'CreateWalletDto(mnemonic: $mnemonic, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWalletDto &&
            const DeepCollectionEquality().equals(other.mnemonic, mnemonic) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mnemonic),
      const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  _$CreateWalletDtoCopyWith<_CreateWalletDto> get copyWith =>
      __$CreateWalletDtoCopyWithImpl<_CreateWalletDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateWalletDtoToJson(this);
  }
}

abstract class _CreateWalletDto implements CreateWalletDto {
  factory _CreateWalletDto({required String mnemonic, required Wallet wallet}) =
      _$_CreateWalletDto;

  factory _CreateWalletDto.fromJson(Map<String, dynamic> json) =
      _$_CreateWalletDto.fromJson;

  @override
  String get mnemonic;
  @override
  Wallet get wallet;
  @override
  @JsonKey(ignore: true)
  _$CreateWalletDtoCopyWith<_CreateWalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}
