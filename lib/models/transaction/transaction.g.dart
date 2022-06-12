// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      hash: json['hash'] as String,
      from: json['from'] as String,
      to: json['to'] as String?,
      timestamp: json['timestamp'] as int,
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'from': instance.from,
      'to': instance.to,
      'timestamp': instance.timestamp,
      'type': _$TransactionTypeEnumMap[instance.type],
    };

const _$TransactionTypeEnumMap = {
  TransactionType.withdraw: 0,
  TransactionType.deposit: 1,
  TransactionType.swap: 2,
  TransactionType.undefined: 3,
};
