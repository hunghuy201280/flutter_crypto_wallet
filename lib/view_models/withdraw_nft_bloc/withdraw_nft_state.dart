part of 'withdraw_nft_bloc.dart';

@freezed
class WithdrawNftState with _$WithdrawNftState {
  const factory WithdrawNftState({
    required TextEditingController controllerFromAddress,
    required TextEditingController controllerToAddress,
    String? contractAddress,
    Nft? nft,
    String? fromAddress,
    String? toAddress,
    @Default(false) bool isValidToAddress,
    @Default(Idle()) Status status,
  }) = _WithdrawNftState;
  factory WithdrawNftState.initial() => WithdrawNftState(controllerFromAddress: TextEditingController(), controllerToAddress: TextEditingController());
}
