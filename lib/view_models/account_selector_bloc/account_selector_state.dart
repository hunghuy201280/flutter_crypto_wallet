part of 'account_selector_bloc.dart';

@freezed
class AccountSelectorState with _$AccountSelectorState {
  const AccountSelectorState._();
  const factory AccountSelectorState({
    required List<Wallet> wallets,
    required Wallet selectedWallet,
    required Status status,
  }) = _AccountSelectorState;

  factory AccountSelectorState.initial(Wallet selectedWallet) =>
      AccountSelectorState(
          selectedWallet: selectedWallet, wallets: [], status: const Idle());
}
