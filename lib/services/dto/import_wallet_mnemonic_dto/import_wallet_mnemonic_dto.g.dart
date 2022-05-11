// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_wallet_mnemonic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImportWalletMnemonicDto _$$_ImportWalletMnemonicDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ImportWalletMnemonicDto(
      mnemonic: json['mnemonic'] as String?,
      wallet: json['wallet'] == null
          ? null
          : Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImportWalletMnemonicDtoToJson(
        _$_ImportWalletMnemonicDto instance) =>
    <String, dynamic>{
      'mnemonic': instance.mnemonic,
      'wallet': instance.wallet,
    };
