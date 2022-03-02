import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../models/wallet/wallet.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _appPref = Get.find<AppPref>();
  AuthBloc() : super(const AuthState.unauthenticated()) {
    on<_AuthInitial>((event, emit) async {
      emit(await _authStart());
    });
    on<_AuthLoggedIn>((event, emit) => {});
    on<_AuthLoggedOut>((event, emit) => {});
  }

  Future<AuthState> _authStart() async {
    await _clearIfFirstRunAfterUninstall();

    final wallet = _appPref.wallet;
    String walletSelected = wallet.selectedWallet;
    List<String> wallets = wallet.wallets;
    if (wallets.isNotEmpty) {
      if (walletSelected.isEmpty) {
        await wallet.setSelectedWallet(wallets.first);
      }
      return AuthenticatedNoPassword(wallet: walletSelected);
    } else {
      return const UnAuthenticated();
    }
  }

  Future<void> _clearIfFirstRunAfterUninstall() async {
    final config = _appPref.config;
    final wallet = _appPref.wallet;
    if (config.firstRun) {
      await Future.wait([
        wallet.setSelectedWallet(""),
        wallet.setImportedWallets([]),
        wallet.setMnemonicPhrase(""),
        wallet.setWallets([]),
        config.setFirstRun(false),
      ]);
    }
  }
}
