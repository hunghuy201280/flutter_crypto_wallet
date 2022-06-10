import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_crypto_wallet/models/wallet/wallet.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
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
      final walletsUpdate = await Future.wait(wallets.map((wallet) async {
        try {
          final req = await remoteProvider.getWalletInfo(wallet.address);
          if (!req.error) {
            wallet = wallet.copyWith(balanceToken: req.result!);
          }
          return wallet;
        } catch (e) {
          printLog(this, message: 'Get Wallet Infor Error', error: e);
          return wallet;
        }
      }));
      await localProvider.setSavedWallets(walletsUpdate);
      emit(
        state.copyWith(
          wallets: walletsUpdate,
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
