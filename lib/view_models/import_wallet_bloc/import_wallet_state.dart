part of 'import_wallet_bloc.dart';

@freezed
class ImportWalletState with _$ImportWalletState {
  const ImportWalletState._();
  const factory ImportWalletState({
    required String mnemonic,
    required String password,
    required String repeatPassword,
    @Default(false) bool boxChecked,
    @Default(Idle()) Status status,
  }) = _ImportWalletState;

  factory ImportWalletState.initial() => const ImportWalletState(
        mnemonic: "",
        password: "",
        repeatPassword: "",
      );
}
