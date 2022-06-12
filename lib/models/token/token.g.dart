// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TokenAdapter extends TypeAdapter<_$_Token> {
  @override
  final int typeId = 2;

  @override
  _$_Token read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Token(
      address: fields[0] as String,
      symbol: fields[1] as String,
      decimal: fields[2] as int,
      imageUrl: fields[3] as String?,
      balance: fields[4] as double,
      avatar: fields[5] as JazziconData?,
      amount: fields[6] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Token obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.address)
      ..writeByte(1)
      ..write(obj.symbol)
      ..writeByte(2)
      ..write(obj.decimal)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.balance)
      ..writeByte(5)
      ..write(obj.avatar)
      ..writeByte(6)
      ..write(obj.amount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => _$_Token(
      address: json['address'] as String,
      symbol: json['symbol'] as String,
      decimal: json['decimal'] as int,
      imageUrl: json['imageUrl'] as String?,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      avatar: json['avatar'] == null
          ? null
          : JazziconData.fromJson(json['avatar'] as Map<String, dynamic>),
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'address': instance.address,
      'symbol': instance.symbol,
      'decimal': instance.decimal,
      'imageUrl': instance.imageUrl,
      'balance': instance.balance,
      'avatar': instance.avatar?.toJson(),
      'amount': instance.amount,
    };
