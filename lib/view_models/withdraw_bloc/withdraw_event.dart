part of 'withdraw_bloc.dart';

@freezed
class WithdrawEvent with _$WithdrawEvent {
  const factory WithdrawEvent.onAddressChanged(String address) = _WithdrawEventAddressChanged;
  const factory WithdrawEvent.initialData() = _WithdrawEventInitData;
  const factory WithdrawEvent.validAddress() =
      _WithdrawEventValidAddress;
}
