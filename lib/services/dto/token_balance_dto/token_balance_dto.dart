import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_balance_dto.freezed.dart';
part 'token_balance_dto.g.dart';

@freezed
class TokenBalanceDto with _$TokenBalanceDto {
  factory TokenBalanceDto({
    String? address,
    int? balance,
  }) = _TokenBalanceDto;

  factory TokenBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$TokenBalanceDtoFromJson(json);
}
