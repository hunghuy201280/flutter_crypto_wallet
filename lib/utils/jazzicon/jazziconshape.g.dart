// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jazziconshape.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JazziconShapeAdapter extends TypeAdapter<_$_JazziconShape> {
  @override
  final int typeId = 3;

  @override
  _$_JazziconShape read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_JazziconShape(
      center: fields[0] as double,
      tx: fields[1] as double,
      ty: fields[2] as double,
      rotate: fields[3] as double,
      fill: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_JazziconShape obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.center)
      ..writeByte(1)
      ..write(obj.tx)
      ..writeByte(2)
      ..write(obj.ty)
      ..writeByte(3)
      ..write(obj.rotate)
      ..writeByte(4)
      ..write(obj.fill);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JazziconShapeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class JazziconDataAdapter extends TypeAdapter<_$_JazziconData> {
  @override
  final int typeId = 4;

  @override
  _$_JazziconData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_JazziconData(
      size: fields[0] as double,
      background: fields[1] as int,
      shapelist: (fields[2] as List).cast<JazziconShape>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_JazziconData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.size)
      ..writeByte(1)
      ..write(obj.background)
      ..writeByte(2)
      ..write(obj.shapelist);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JazziconDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JazziconShape _$$_JazziconShapeFromJson(Map<String, dynamic> json) =>
    _$_JazziconShape(
      center: (json['center'] as num).toDouble(),
      tx: (json['tx'] as num).toDouble(),
      ty: (json['ty'] as num).toDouble(),
      rotate: (json['rotate'] as num).toDouble(),
      fill: json['fill'] as int,
    );

Map<String, dynamic> _$$_JazziconShapeToJson(_$_JazziconShape instance) =>
    <String, dynamic>{
      'center': instance.center,
      'tx': instance.tx,
      'ty': instance.ty,
      'rotate': instance.rotate,
      'fill': instance.fill,
    };

_$_JazziconData _$$_JazziconDataFromJson(Map<String, dynamic> json) =>
    _$_JazziconData(
      size: (json['size'] as num).toDouble(),
      background: json['background'] as int,
      shapelist: (json['shapelist'] as List<dynamic>)
          .map((e) => JazziconShape.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JazziconDataToJson(_$_JazziconData instance) =>
    <String, dynamic>{
      'size': instance.size,
      'background': instance.background,
      'shapelist': instance.shapelist.map((e) => e.toJson()).toList(),
    };
