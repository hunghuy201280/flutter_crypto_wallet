// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateWalletDto _$$_CreateWalletDtoFromJson(Map<String, dynamic> json) =>
    _$_CreateWalletDto(
      mnemonic: json['mnemonic'] as String,
      wallet: Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateWalletDtoToJson(_$_CreateWalletDto instance) =>
    <String, dynamic>{
      'mnemonic': instance.mnemonic,
      'wallet': instance.wallet,
    };
