// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return _Wallet.fromJson(json);
}

/// @nodoc
class _$WalletTearOff {
  const _$WalletTearOff();

  _Wallet call(
      {@HiveField(0) required String address,
      @HiveField(1) required String privateKey,
      @HiveField(2) bool isImportedWallet = false,
      @HiveField(3) double balance = 0,
      @HiveField(4) int index = 1}) {
    return _Wallet(
      address: address,
      privateKey: privateKey,
      isImportedWallet: isImportedWallet,
      balance: balance,
      index: index,
    );
  }

  Wallet fromJson(Map<String, Object?> json) {
    return Wallet.fromJson(json);
  }
}

/// @nodoc
const $Wallet = _$WalletTearOff();

/// @nodoc
mixin _$Wallet {
  @HiveField(0)
  String get address => throw _privateConstructorUsedError;
  @HiveField(1)
  String get privateKey => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get isImportedWallet => throw _privateConstructorUsedError;
  @HiveField(3)
  double get balance => throw _privateConstructorUsedError;
  @HiveField(4)
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String address,
      @HiveField(1) String privateKey,
      @HiveField(2) bool isImportedWallet,
      @HiveField(3) double balance,
      @HiveField(4) int index});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res> implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  final Wallet _value;
  // ignore: unused_field
  final $Res Function(Wallet) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? privateKey = freezed,
    Object? isImportedWallet = freezed,
    Object? balance = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      isImportedWallet: isImportedWallet == freezed
          ? _value.isImportedWallet
          : isImportedWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WalletCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$WalletCopyWith(_Wallet value, $Res Function(_Wallet) then) =
      __$WalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String address,
      @HiveField(1) String privateKey,
      @HiveField(2) bool isImportedWallet,
      @HiveField(3) double balance,
      @HiveField(4) int index});
}

/// @nodoc
class __$WalletCopyWithImpl<$Res> extends _$WalletCopyWithImpl<$Res>
    implements _$WalletCopyWith<$Res> {
  __$WalletCopyWithImpl(_Wallet _value, $Res Function(_Wallet) _then)
      : super(_value, (v) => _then(v as _Wallet));

  @override
  _Wallet get _value => super._value as _Wallet;

  @override
  $Res call({
    Object? address = freezed,
    Object? privateKey = freezed,
    Object? isImportedWallet = freezed,
    Object? balance = freezed,
    Object? index = freezed,
  }) {
    return _then(_Wallet(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      isImportedWallet: isImportedWallet == freezed
          ? _value.isImportedWallet
          : isImportedWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveConfigs.kWalletTypeId, adapterName: "WalletAdapter")
class _$_Wallet implements _Wallet {
  _$_Wallet(
      {@HiveField(0) required this.address,
      @HiveField(1) required this.privateKey,
      @HiveField(2) this.isImportedWallet = false,
      @HiveField(3) this.balance = 0,
      @HiveField(4) this.index = 1});

  factory _$_Wallet.fromJson(Map<String, dynamic> json) =>
      _$$_WalletFromJson(json);

  @override
  @HiveField(0)
  final String address;
  @override
  @HiveField(1)
  final String privateKey;
  @JsonKey()
  @override
  @HiveField(2)
  final bool isImportedWallet;
  @JsonKey()
  @override
  @HiveField(3)
  final double balance;
  @JsonKey()
  @override
  @HiveField(4)
  final int index;

  @override
  String toString() {
    return 'Wallet(address: $address, privateKey: $privateKey, isImportedWallet: $isImportedWallet, balance: $balance, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Wallet &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.privateKey, privateKey) &&
            const DeepCollectionEquality()
                .equals(other.isImportedWallet, isImportedWallet) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(privateKey),
      const DeepCollectionEquality().hash(isImportedWallet),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$WalletCopyWith<_Wallet> get copyWith =>
      __$WalletCopyWithImpl<_Wallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletToJson(this);
  }
}

abstract class _Wallet implements Wallet {
  factory _Wallet(
      {@HiveField(0) required String address,
      @HiveField(1) required String privateKey,
      @HiveField(2) bool isImportedWallet,
      @HiveField(3) double balance,
      @HiveField(4) int index}) = _$_Wallet;

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$_Wallet.fromJson;

  @override
  @HiveField(0)
  String get address;
  @override
  @HiveField(1)
  String get privateKey;
  @override
  @HiveField(2)
  bool get isImportedWallet;
  @override
  @HiveField(3)
  double get balance;
  @override
  @HiveField(4)
  int get index;
  @override
  @JsonKey(ignore: true)
  _$WalletCopyWith<_Wallet> get copyWith => throw _privateConstructorUsedError;
}
