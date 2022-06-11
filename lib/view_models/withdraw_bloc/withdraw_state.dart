part of 'withdraw_bloc.dart';

@freezed
class WithdrawState with _$WithdrawState {
  const factory WithdrawState({
    required TextEditingController controllerAddress,
    required TextEditingController controllerAmount,
    String? address,
    @Default(false) bool isValidAddress,
    Token? tokenSelected,
    @Default([]) List<Token> tokens,
    @Default(Idle()) Status status,
    @Default(0.0) double amount,
  }) = _WithdrawState;

  factory WithdrawState.initial() => WithdrawState(
      controllerAddress: TextEditingController(),
      controllerAmount: TextEditingController());
}
