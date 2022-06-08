import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ntf_marketplace/models/wallet/wallet.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../utils/helpers/status.dart';

part 'account_selector_bloc.freezed.dart';
part 'account_selector_event.dart';
part 'account_selector_state.dart';

@injectable
class AccountSelectorBloc
    extends Bloc<AccountSelectorEvent, AccountSelectorState> {
  AccountSelectorBloc(
    @factoryParam this.selectedWallet,
    this.localProvider,
    @factoryParam this.authBloc,
  ) : super(AccountSelectorState.initial(selectedWallet)) {
    on<AccountSelectorInitialized>((event, emit) async {
      final wallets = localProvider.getSavedWallets();
      emit(state.copyWith(wallets: wallets));
    });
    on<AccountSelectorSelected>((event, emit) async {
      emit(state.copyWith(selectedWallet: event.wallet));
      authBloc.add(AuthEvent.loggedIn(event.wallet));
    });
    add(const AccountSelectorEvent.initialized());
  }

  final Wallet selectedWallet;
  final LocalProvider localProvider;
  final AuthBloc authBloc;
}
