part of 'account_selector_bloc.dart';

@freezed
class AccountSelectorEvent with _$AccountSelectorEvent {
  const factory AccountSelectorEvent.initialized() = AccountSelectorInitialized;
  const factory AccountSelectorEvent.selected(Wallet wallet) =
      AccountSelectorSelected;
}
