part of 'import_wallet_bloc.dart';

@freezed
class ImportWalletState with _$ImportWalletState {
  const ImportWalletState._();
  const factory ImportWalletState({
    required String privateKey,
    required String password,
    required String repeatPassword,
    required bool boxChecked,
  }) = _ImportWalletState;

  factory ImportWalletState.initial() => const ImportWalletState(
      privateKey: "", password: "", repeatPassword: "", boxChecked: false);
}
