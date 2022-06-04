part of 'import_token_bloc.dart';

@freezed
class ImportTokenState with _$ImportTokenState {
  const factory ImportTokenState({
    String? tokenAddress,
    String? tokenSymbol,
    String? tokenDecimal,
    @Default(Idle()) Status status,
  }) = _ImportTokenState;
}
