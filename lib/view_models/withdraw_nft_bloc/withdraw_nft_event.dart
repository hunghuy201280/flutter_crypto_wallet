part of 'withdraw_nft_bloc.dart';

@freezed
class WithdrawNftEvent with _$WithdrawNftEvent {
  const factory WithdrawNftEvent.initData(String contractAddress,Nft? nft) = _WithdrawNftEventInitalData;
  const factory WithdrawNftEvent.onToAddressChanged(String address) = _WithdrawNftEventToAddressChanged;
  const factory WithdrawNftEvent.validAddress() = _WithdrawNftEventValidAddress;
  const factory WithdrawNftEvent.send() = _WithdrawNftEventSend;
}
