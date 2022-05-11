import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory Token({
    required int id,
    required String address,
    required String symbol,
    required String imageUrl,
    required double balance,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
