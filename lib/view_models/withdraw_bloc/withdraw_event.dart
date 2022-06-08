part of 'withdraw_bloc.dart';

@freezed
class WithdrawEvent with _$WithdrawEvent {
  const factory WithdrawEvent.validAddress(String address) = _WithdrawEventValidAddress;
}