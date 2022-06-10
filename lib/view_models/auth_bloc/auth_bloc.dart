import 'dart:async';
import 'dart:math';

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

    var selectedWallet = _localProvider.getSelectedWallet();
    List<Wallet> wallets = _localProvider.getSavedWallets();
    // return AuthenticatedNoPassword(walletAddress: walletSelected);
    if (wallets.isNotEmpty) {
      if (selectedWallet == null) {
        final wallet = wallets.first;
        await _localProvider.saveSelectedWallet(selectedWallet: wallet.address);
        emit(AuthenticatedNoPassword(walletAddress: wallet));
      } else {
        final wallet = wallets.firstWhere(
          (element) => element.address == selectedWallet,
        );
        emit(AuthenticatedNoPassword(walletAddress: wallet));
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

  FutureOr<void> _loggedInToState(
      AuthLoggedIn event, Emitter<AuthState> emit) async {
    await _localProvider.saveSelectedWallet(
        selectedWallet: event.selectedWallet.address);
    emit(Authenticated(wallet: event.selectedWallet));
  }

  FutureOr<void> _reloadSelectedWallet(
      AuthEventReloadSelectedWallet event, Emitter<AuthState> emit) async {
    final walletAddress = _localProvider.getSelectedWallet();
    final wallets = _localProvider.getSavedWallets();
    final wallet =
        wallets.firstWhere((element) => element.address == walletAddress);
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
