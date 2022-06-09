import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../constants/hive_configs.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: HiveConfigs.kTokenTypeId, adapterName: "TokenAdapter")
  const factory Token({
    @HiveField(0) required String address,
    @HiveField(1) required String symbol,
    @HiveField(2) required int decimal,
    @HiveField(3) String? imageUrl,
    @HiveField(4) @Default(0) double balance,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
