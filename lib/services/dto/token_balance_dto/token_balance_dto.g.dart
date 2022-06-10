// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_balance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenBalanceDto _$$_TokenBalanceDtoFromJson(Map<String, dynamic> json) =>
    _$_TokenBalanceDto(
      address: json['address'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TokenBalanceDtoToJson(_$_TokenBalanceDto instance) =>
    <String, dynamic>{
      'address': instance.address,
      'balance': instance.balance,
    };
