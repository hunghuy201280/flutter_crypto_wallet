part of 'import_wallet_bloc.dart';

@freezed
class ImportWalletEvent with _$ImportWalletEvent {
  const factory ImportWalletEvent.imported() = ImportWalletImported;

  const factory ImportWalletEvent.privateKeyChanged(String privateKey) =
      ImportWalletPrivateKeyChanged;
  const factory ImportWalletEvent.passwordChanged(String password) =
      ImportWalletPasswordChanged;
  const factory ImportWalletEvent.rePasswordChanged(String password) =
      ImportWalletRePasswordChanged;
  const factory ImportWalletEvent.checkBoxChanged(bool value) =
      ImportWalletCheckBoxChanged;
}
