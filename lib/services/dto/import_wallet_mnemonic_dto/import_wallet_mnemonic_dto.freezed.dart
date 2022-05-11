// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'import_wallet_mnemonic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImportWalletMnemonicDto _$ImportWalletMnemonicDtoFromJson(
    Map<String, dynamic> json) {
  return _ImportWalletMnemonicDto.fromJson(json);
}

/// @nodoc
class _$ImportWalletMnemonicDtoTearOff {
  const _$ImportWalletMnemonicDtoTearOff();

  _ImportWalletMnemonicDto call({String? mnemonic, Wallet? wallet}) {
    return _ImportWalletMnemonicDto(
      mnemonic: mnemonic,
      wallet: wallet,
    );
  }

  ImportWalletMnemonicDto fromJson(Map<String, Object?> json) {
    return ImportWalletMnemonicDto.fromJson(json);
  }
}

/// @nodoc
const $ImportWalletMnemonicDto = _$ImportWalletMnemonicDtoTearOff();

/// @nodoc
mixin _$ImportWalletMnemonicDto {
  String? get mnemonic => throw _privateConstructorUsedError;
  Wallet? get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImportWalletMnemonicDtoCopyWith<ImportWalletMnemonicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportWalletMnemonicDtoCopyWith<$Res> {
  factory $ImportWalletMnemonicDtoCopyWith(ImportWalletMnemonicDto value,
          $Res Function(ImportWalletMnemonicDto) then) =
      _$ImportWalletMnemonicDtoCopyWithImpl<$Res>;
  $Res call({String? mnemonic, Wallet? wallet});

  $WalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$ImportWalletMnemonicDtoCopyWithImpl<$Res>
    implements $ImportWalletMnemonicDtoCopyWith<$Res> {
  _$ImportWalletMnemonicDtoCopyWithImpl(this._value, this._then);

  final ImportWalletMnemonicDto _value;
  // ignore: unused_field
  final $Res Function(ImportWalletMnemonicDto) _then;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
    ));
  }

  @override
  $WalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$ImportWalletMnemonicDtoCopyWith<$Res>
    implements $ImportWalletMnemonicDtoCopyWith<$Res> {
  factory _$ImportWalletMnemonicDtoCopyWith(_ImportWalletMnemonicDto value,
          $Res Function(_ImportWalletMnemonicDto) then) =
      __$ImportWalletMnemonicDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? mnemonic, Wallet? wallet});

  @override
  $WalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$ImportWalletMnemonicDtoCopyWithImpl<$Res>
    extends _$ImportWalletMnemonicDtoCopyWithImpl<$Res>
    implements _$ImportWalletMnemonicDtoCopyWith<$Res> {
  __$ImportWalletMnemonicDtoCopyWithImpl(_ImportWalletMnemonicDto _value,
      $Res Function(_ImportWalletMnemonicDto) _then)
      : super(_value, (v) => _then(v as _ImportWalletMnemonicDto));

  @override
  _ImportWalletMnemonicDto get _value =>
      super._value as _ImportWalletMnemonicDto;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_ImportWalletMnemonicDto(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImportWalletMnemonicDto implements _ImportWalletMnemonicDto {
  _$_ImportWalletMnemonicDto({this.mnemonic, this.wallet});

  factory _$_ImportWalletMnemonicDto.fromJson(Map<String, dynamic> json) =>
      _$$_ImportWalletMnemonicDtoFromJson(json);

  @override
  final String? mnemonic;
  @override
  final Wallet? wallet;

  @override
  String toString() {
    return 'ImportWalletMnemonicDto(mnemonic: $mnemonic, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImportWalletMnemonicDto &&
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
  _$ImportWalletMnemonicDtoCopyWith<_ImportWalletMnemonicDto> get copyWith =>
      __$ImportWalletMnemonicDtoCopyWithImpl<_ImportWalletMnemonicDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImportWalletMnemonicDtoToJson(this);
  }
}

abstract class _ImportWalletMnemonicDto implements ImportWalletMnemonicDto {
  factory _ImportWalletMnemonicDto({String? mnemonic, Wallet? wallet}) =
      _$_ImportWalletMnemonicDto;

  factory _ImportWalletMnemonicDto.fromJson(Map<String, dynamic> json) =
      _$_ImportWalletMnemonicDto.fromJson;

  @override
  String? get mnemonic;
  @override
  Wallet? get wallet;
  @override
  @JsonKey(ignore: true)
  _$ImportWalletMnemonicDtoCopyWith<_ImportWalletMnemonicDto> get copyWith =>
      throw _privateConstructorUsedError;
}
