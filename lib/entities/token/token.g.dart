// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => _$_Token(
      id: json['id'] as int,
      address: json['address'] as String,
      symbol: json['symbol'] as String,
      imageUrl: json['imageUrl'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'symbol': instance.symbol,
      'imageUrl': instance.imageUrl,
      'balance': instance.balance,
    };
