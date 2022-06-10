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
    on<AuthEventReloadSelectedWallet>(_reloadSelectedWallet);
  }

  //#region mapEventToState

  FutureOr<void> _initialToState(
      AuthInitial event, Emitter<AuthState> emit) async {
    if (_localProvider.isFirstRunApp()) {
      await clearLocalDB();
    }

    final selectedWallet = _localProvider.getSelectedWallet();
    emit(AuthenticatedNoPassword(walletAddress: selectedWallet));
  }

  FutureOr<void> _loggedOutToState(
      AuthLoggedOut event, Emitter<AuthState> emit) async {
    await clearLocalDB();
    emit(const UnAuthenticated());
  }

  FutureOr<void> _loggedInToState(
      AuthLoggedIn event, Emitter<AuthState> emit) async {
    await _localProvider.saveSelectedWallet(
        selectedWallet: event.selectedWallet.address);
    emit(Authenticated(wallet: event.selectedWallet));
  }

  FutureOr<void> _reloadSelectedWallet(
      AuthEventReloadSelectedWallet event, Emitter<AuthState> emit) async {
    final wallet = _localProvider.getSelectedWallet();
    emit(AuthState.authenticated(wallet: wallet));
  }

  //#endregion mapEventToState

  Future<void> clearLocalDB() async {
    await Future.wait([
      _localProvider.clearSelectedWallet(),
      _localProvider.removeAllWallets(),
      _localProvider.deleteAllSaveToken(),
      _localProvider.saveMnemonicPhrase(mnemonicPhrase: ""),
      _localProvider.saveStateFirstRunApp(isFirstRun: false),
      _localProvider.deletePasscode(),
    ]);
  }
}
