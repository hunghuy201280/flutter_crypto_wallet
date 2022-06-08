part of 'withdraw_bloc.dart';

@freezed
class WithdrawState with _$WithdrawState {
  const factory WithdrawState({
    String? address,
    @Default([]) List<Token> tokens,
  }) = _WithdrawState;
}
