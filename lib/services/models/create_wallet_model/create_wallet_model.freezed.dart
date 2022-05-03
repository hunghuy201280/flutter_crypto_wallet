// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateWalletModel _$CreateWalletModelFromJson(Map<String, dynamic> json) {
  return _CreateWalletModel.fromJson(json);
}

/// @nodoc
class _$CreateWalletModelTearOff {
  const _$CreateWalletModelTearOff();

  _CreateWalletModel call({required String mnemonic, required Wallet wallet}) {
    return _CreateWalletModel(
      mnemonic: mnemonic,
      wallet: wallet,
    );
  }

  CreateWalletModel fromJson(Map<String, Object?> json) {
    return CreateWalletModel.fromJson(json);
  }
}

/// @nodoc
const $CreateWalletModel = _$CreateWalletModelTearOff();

/// @nodoc
mixin _$CreateWalletModel {
  String get mnemonic => throw _privateConstructorUsedError;
  Wallet get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateWalletModelCopyWith<CreateWalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletModelCopyWith<$Res> {
  factory $CreateWalletModelCopyWith(
          CreateWalletModel value, $Res Function(CreateWalletModel) then) =
      _$CreateWalletModelCopyWithImpl<$Res>;
  $Res call({String mnemonic, Wallet wallet});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$CreateWalletModelCopyWithImpl<$Res>
    implements $CreateWalletModelCopyWith<$Res> {
  _$CreateWalletModelCopyWithImpl(this._value, this._then);

  final CreateWalletModel _value;
  // ignore: unused_field
  final $Res Function(CreateWalletModel) _then;

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
abstract class _$CreateWalletModelCopyWith<$Res>
    implements $CreateWalletModelCopyWith<$Res> {
  factory _$CreateWalletModelCopyWith(
          _CreateWalletModel value, $Res Function(_CreateWalletModel) then) =
      __$CreateWalletModelCopyWithImpl<$Res>;
  @override
  $Res call({String mnemonic, Wallet wallet});

  @override
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class __$CreateWalletModelCopyWithImpl<$Res>
    extends _$CreateWalletModelCopyWithImpl<$Res>
    implements _$CreateWalletModelCopyWith<$Res> {
  __$CreateWalletModelCopyWithImpl(
      _CreateWalletModel _value, $Res Function(_CreateWalletModel) _then)
      : super(_value, (v) => _then(v as _CreateWalletModel));

  @override
  _CreateWalletModel get _value => super._value as _CreateWalletModel;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_CreateWalletModel(
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
class _$_CreateWalletModel implements _CreateWalletModel {
  _$_CreateWalletModel({required this.mnemonic, required this.wallet});

  factory _$_CreateWalletModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateWalletModelFromJson(json);

  @override
  final String mnemonic;
  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'CreateWalletModel(mnemonic: $mnemonic, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWalletModel &&
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
  _$CreateWalletModelCopyWith<_CreateWalletModel> get copyWith =>
      __$CreateWalletModelCopyWithImpl<_CreateWalletModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateWalletModelToJson(this);
  }
}

abstract class _CreateWalletModel implements CreateWalletModel {
  factory _CreateWalletModel(
      {required String mnemonic,
      required Wallet wallet}) = _$_CreateWalletModel;

  factory _CreateWalletModel.fromJson(Map<String, dynamic> json) =
      _$_CreateWalletModel.fromJson;

  @override
  String get mnemonic;
  @override
  Wallet get wallet;
  @override
  @JsonKey(ignore: true)
  _$CreateWalletModelCopyWith<_CreateWalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}
