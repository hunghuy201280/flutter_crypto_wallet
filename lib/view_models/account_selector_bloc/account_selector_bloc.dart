import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_crypto_wallet/models/wallet/wallet.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
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
    this.remoteProvider,
  ) : super(AccountSelectorState.initial(selectedWallet)) {
    on<AccountSelectorInitialized>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      final wallets = localProvider.getSavedWallets();
      final balances = await Future.wait(
          wallets.map((e) => remoteProvider.getWalletInfo(e.address)));
      for (int i = 0; i < wallets.length; i++) {
        wallets[i] = wallets[i].copyWith(balance: balances[i].result!.balance);
      }
      localProvider.setSavedWallets(wallets);
      emit(
        state.copyWith(
          wallets: wallets,
          status: const Idle(),
        ),
      );
    });
    on<AccountSelectorSelected>((event, emit) async {
      emit(state.copyWith(selectedWallet: event.wallet));
      authBloc.add(AuthEvent.loggedIn(event.wallet));
    });
    add(const AccountSelectorEvent.initialized());
  }

  final Wallet selectedWallet;
  final LocalProvider localProvider;
  final RemoteProvider remoteProvider;
  final AuthBloc authBloc;

  //#region helper
  _emitStatus(Status status, Emitter emit) {
    emit(
      state.copyWith(
        status: status,
      ),
    );
    emit(
      state.copyWith(
        status: const Idle(),
      ),
    );
  }
//#endregion
}
