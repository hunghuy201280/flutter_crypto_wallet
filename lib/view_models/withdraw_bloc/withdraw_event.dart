part of 'withdraw_bloc.dart';

@freezed
class WithdrawEvent with _$WithdrawEvent {
  const factory WithdrawEvent.onAddressChanged(String address) =
      _WithdrawEventAddressChanged;
  const factory WithdrawEvent.initialData() = _WithdrawEventInitData;
  const factory WithdrawEvent.validAddress() = _WithdrawEventValidAddress;
  const factory WithdrawEvent.onTokenChanged(Token token) =
      _WithdrawEventTokenChanged;
      const factory WithdrawEvent.onAmountChanged(double amount) =
      _WithdrawEventAmountChanged;
  const factory WithdrawEvent.maxAmount() = _WithdrawEventMaxAmount;
  const factory WithdrawEvent.send() = _WithdrawEventSend;
}
