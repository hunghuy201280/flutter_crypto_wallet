part of 'import_token_bloc.dart';

@freezed
class ImportTokenState with _$ImportTokenState {
  const factory ImportTokenState({
    required TextEditingController controllerSymbol,
    required TextEditingController controllerDecimal,
    String? tokenAddress,
    String? tokenSymbol,
    String? tokenDecimal,
    @Default(Idle()) Status status,
  }) = _ImportTokenState;

  factory ImportTokenState.initial() => ImportTokenState(
      controllerDecimal: TextEditingController(),
      controllerSymbol: TextEditingController());
}
