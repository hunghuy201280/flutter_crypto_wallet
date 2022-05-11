part of 'import_wallet_bloc.dart';

@freezed
class ImportWalletEvent with _$ImportWalletEvent {
  const factory ImportWalletEvent.imported() = ImportWalletImported;

  const factory ImportWalletEvent.mnemonicChanged(String mnemonic) =
      ImportWalletMnemonicChanged;
  const factory ImportWalletEvent.passwordChanged(String password) =
      ImportWalletPasswordChanged;
  const factory ImportWalletEvent.rePasswordChanged(String password) =
      ImportWalletRePasswordChanged;
  const factory ImportWalletEvent.checkBoxChanged(bool value) =
      ImportWalletCheckBoxChanged;
}
