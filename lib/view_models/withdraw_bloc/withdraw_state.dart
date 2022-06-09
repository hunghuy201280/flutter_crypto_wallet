part of 'withdraw_bloc.dart';

@freezed
class WithdrawState with _$WithdrawState {
  const factory WithdrawState({
    required TextEditingController controllerAddress,
    String? address,
    @Default(false) bool isValidAddress,
    @Default([]) List<Token> tokens,
    @Default(Idle()) Status status,
  }) = _WithdrawState;

  factory WithdrawState.initial() =>
      WithdrawState(controllerAddress: TextEditingController());
}
