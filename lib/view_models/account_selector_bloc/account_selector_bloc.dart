import 'dart:async';

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
    this._localProvider,
    @factoryParam this._authBloc,
    this._remoteProvider,
  ) : super(AccountSelectorState.initial(_localProvider.getSelectedWallet())) {
    _mapEventToState();

    add(const AccountSelectorEvent.initialized());
  }

  final LocalProvider _localProvider;
  final RemoteProvider _remoteProvider;
  final AuthBloc _authBloc;

  void _mapEventToState() {
    on<AccountSelectorInitialized>(_initializedToState);
    on<AccountSelectorSelected>(_selectedToState);
    on<AccountSelectorAdded>(_addedToState);
    on<AccountSelectorDeleted>(_deletedToState);
  }

  //#region mapEventToState

  FutureOr<void> _initializedToState(AccountSelectorInitialized event,
      Emitter<AccountSelectorState> emit) async {
    emit(state.copyWith(status: const Loading()));
    final wallets = _localProvider.getSavedWallets();
    final walletsUpdate = await Future.wait(
      wallets.map(
        (wallet) async {
          try {
            final req = await _remoteProvider.getWalletInfo(wallet.address);
            if (!req.error) {
              wallet = wallet.copyWith(balanceToken: req.result!);
            }
            return wallet;
          } catch (e) {
            printLog(this, message: 'Get Wallet Infor Error', error: e);
            return wallet;
          }
        },
      ),
    );
    await _localProvider.setSavedWallets(walletsUpdate);
    _authBloc.add(const AuthEvent.reloadSelectedWallet());
    emit(
      state.copyWith(
        wallets: walletsUpdate,
        status: const Idle(),
        selectedWallet: _localProvider.getSelectedWallet(),
      ),
    );
  }

  FutureOr<void> _selectedToState(
      AccountSelectorSelected event, Emitter<AccountSelectorState> emit) async {
    await _localProvider.saveSelectedWallet(
        selectedWallet: event.wallet.address);
    _authBloc.add(const AuthEvent.reloadSelectedWallet());
    emit(state.copyWith(selectedWallet: event.wallet));
  }

  FutureOr<void> _addedToState(
      AccountSelectorAdded event, Emitter<AccountSelectorState> emit) async {
    emit(state.copyWith(status: const Loading()));

    final mnemonic = _localProvider.getMnemonicPhrase();
    final wallets = _localProvider.getSavedWallets();
    final normalAccountCount =
        wallets.where((element) => !element.isImportedWallet).length;
    try {
      final response = await _remoteProvider.addAccount(
        mnemonic: mnemonic,
        walletNumber: event.walletNumber ?? normalAccountCount + 1,
      );
      if (response.error) {
        throw response.message;
      }
      await _localProvider.addWallet(
        wallet: response.result!,
      );
      add(const AccountSelectorInitialized());
    } catch (e, trace) {
      printLog(this, message: "Error", error: e, trace: trace);
      emit(state.copyWith(status: const Idle()));
      add(
        AccountSelectorAdded(
          walletNumber: event.walletNumber != null
              ? event.walletNumber! + 1
              : normalAccountCount + 1,
        ),
      );
    }
  }

  FutureOr<void> _deletedToState(
      AccountSelectorDeleted event, Emitter<AccountSelectorState> emit) async {
    try {
      emit(state.copyWith(status: const Loading()));

      await _localProvider.deleteAccount(event.wallet);
      add(const AccountSelectorInitialized());
    } catch (e, trace) {
      printLog(this, message: "Error", error: e, trace: trace);
      emit(state.copyWith(status: const Idle()));
    }
  }
  //#endregion

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
