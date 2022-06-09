import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/wallet/wallet.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LocalProvider _localProvider;
  AuthBloc(this._localProvider) : super(const AuthState.unauthenticated()) {
    on<AuthInitial>(_initialToState);
    on<AuthLoggedIn>(_loggedInToState);
    on<AuthLoggedOut>(_loggedOutToState);
  }

  //#region mapEventToState

  FutureOr<void> _initialToState(
      AuthInitial event, Emitter<AuthState> emit) async {
    if (_localProvider.isFirstRunApp()) {
      await clearLocalDB();
    }

    var selectedWallet = _localProvider.getSelectedWallet();
    List<Wallet> wallets = _localProvider.getSavedWallets();
    // return AuthenticatedNoPassword(walletAddress: walletSelected);
    if (wallets.isNotEmpty) {
      if (selectedWallet == null) {
        await _localProvider.saveSelectedWallet(selectedWallet: wallets.first);
        emit(AuthenticatedNoPassword(
            walletAddress: _localProvider.getSelectedWallet()!));
      } else {
        emit(AuthenticatedNoPassword(walletAddress: selectedWallet));
      }
    } else {
      emit(const UnAuthenticated());
    }
  }

  FutureOr<void> _loggedOutToState(
      AuthLoggedOut event, Emitter<AuthState> emit) async {
    await clearLocalDB();
    emit(const UnAuthenticated());
  }

  FutureOr<void> _loggedInToState(AuthLoggedIn event, Emitter<AuthState> emit) {
    emit(Authenticated(wallet: event.selectedWallet));
    _localProvider.saveSelectedWallet(selectedWallet: event.selectedWallet);
  }

  //#endregion mapEventToState

  Future<void> clearLocalDB() async {
    await Future.wait([
      _localProvider.clearSelectedWallet(),
      _localProvider.removeAllWallets(),
      _localProvider.saveMnemonicPhrase(mnemonicPhrase: ""),
      _localProvider.saveStateFirstRunApp(isFirstRun: false),
      _localProvider.deletePasscode(),
    ]);
  }
}
