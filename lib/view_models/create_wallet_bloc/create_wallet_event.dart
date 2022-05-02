part of 'create_wallet_bloc.dart';

@freezed
class CreateWalletEvent with _$CreateWalletEvent {
  const factory CreateWalletEvent.passwordChanged({required String password}) =
      _CreateWalletEventPasswordChanged;
  const factory CreateWalletEvent.rePasswordChanged(
      {required String rePassword}) = _CreateWalletEventRePasswordChanged;
  const factory CreateWalletEvent.checkBox({required bool isCheck}) =
      _CreateWalletEventCheckBox;

  const factory CreateWalletEvent.requestCreateWallet() =
      _CreateWalletEventRequest;
}
