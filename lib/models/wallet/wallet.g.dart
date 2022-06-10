// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WalletAdapter extends TypeAdapter<_$_Wallet> {
  @override
  final int typeId = 1;

  @override
  _$_Wallet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Wallet(
      address: fields[0] as String,
      privateKey: fields[1] as String,
      isImportedWallet: fields[2] as bool,
      balanceToken: fields[3] as Token?,
      index: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Wallet obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.address)
      ..writeByte(1)
      ..write(obj.privateKey)
      ..writeByte(2)
      ..write(obj.isImportedWallet)
      ..writeByte(3)
      ..write(obj.balanceToken)
      ..writeByte(4)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WalletAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      address: json['address'] as String,
      privateKey: json['privateKey'] as String,
      isImportedWallet: json['isImportedWallet'] as bool? ?? false,
      balanceToken: json['balanceToken'] == null
          ? null
          : Token.fromJson(json['balanceToken'] as Map<String, dynamic>),
      index: json['index'] as int? ?? 1,
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'address': instance.address,
      'privateKey': instance.privateKey,
      'isImportedWallet': instance.isImportedWallet,
      'balanceToken': instance.balanceToken,
      'index': instance.index,
    };
