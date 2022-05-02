// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateWalletModel _$$_CreateWalletModelFromJson(Map<String, dynamic> json) =>
    _$_CreateWalletModel(
      mnemonic: json['mnemonic'] as String?,
      wallet: json['wallet'] == null
          ? null
          : Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateWalletModelToJson(
        _$_CreateWalletModel instance) =>
    <String, dynamic>{
      'mnemonic': instance.mnemonic,
      'wallet': instance.wallet,
    };
