part of 'create_wallet_bloc.dart';

@freezed
class CreateWalletState with _$CreateWalletState {
  const factory CreateWalletState({
    required String password,
    required String repeatPassword,
    required bool checkBox,
    @Default(1) int currentPage,
    @Default(Idle()) Status status,
    String? mnemonic,
    Wallet? wallet,
  }) = _CreateWalletState;
  factory CreateWalletState.initial() => const CreateWalletState(
      password: '', repeatPassword: '', checkBox: false);
}
