// export interface IJazziconProps {
// size?: number;
// address?: string;
// seed?: number;
// containerStyle?: StyleProp<ViewStyle>;
// }
//
// export interface IJazziconState {
// generator: MersenneTwister.IMersenneTwister;
// colors: string[];
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/hive_configs.dart';

part 'jazziconshape.freezed.dart';
part 'jazziconshape.g.dart';

@freezed
class JazziconShape with _$JazziconShape {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  @HiveType(
      typeId: HiveConfigs.kJazziconShapeId, adapterName: "JazziconShapeAdapter")
  const factory JazziconShape({
    @HiveField(0) required double center,
    @HiveField(1) required double tx,
    @HiveField(2) required double ty,
    @HiveField(3) required double rotate,
    @HiveField(4) required int fill,
  }) = _JazziconShape;

  factory JazziconShape.fromJson(Map<String, dynamic> json) =>
      _$JazziconShapeFromJson(json);
}

@freezed
class JazziconData with _$JazziconData {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  @HiveType(
      typeId: HiveConfigs.kJazziconDataId, adapterName: "JazziconDataAdapter")
  const factory JazziconData({
    @HiveField(0) required double size,
    @HiveField(1) required int background,
    @HiveField(2) required List<JazziconShape> shapelist,
  }) = _JazziconData;

  factory JazziconData.fromJson(Map<String, dynamic> json) =>
      _$JazziconDataFromJson(json);
}
