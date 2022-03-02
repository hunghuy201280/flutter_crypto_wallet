import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/constants/app_boxs.dart';
import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:web3dart/web3dart.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unauthenticated()) {
    on<_AuthInitial>((event, emit) async {
      emit(await _authStart());
    });
    on<_AuthLoggedIn>((event, emit) => {});
    on<_AuthLoggedOut>((event, emit) => {});
  }

  Future<AuthState> _authStart() async {
    await _clearIfFirstRunAfterUninstall();

    var box = await Hive.openBox(AppHiveBoxes.wallet);

    String? walletSelected = await box.get(AppPref.wallet.walletSelect);
    List<String>? wallets = await box.get(AppPref.wallet.walletImport);
    if ((walletSelected != null && walletSelected.isNotEmpty)) {
      return AuthenticatedNoPassword(wallet: walletSelected);
    } else if (wallets != null && wallets.isNotEmpty) {
      await box.put(AppPref.wallet.walletImport, wallets.first);
      return AuthenticatedNoPassword(wallet: wallets.first);
    } else {
      return const UnAuthenticated();
    }
  }

  Future<void> _clearIfFirstRunAfterUninstall() async {
    var boxConfig = await Hive.openBox(AppHiveBoxes.config);
    var boxWallet = await Hive.openBox(AppHiveBoxes.wallet);
    if (boxConfig.get(AppPref.config.firstRun) ?? true) {
      await boxWallet.deleteAll([
        AppPref.wallet.mnemonicsPharse,
        AppPref.wallet.walletImport,
        AppPref.wallet.walletSelect
      ]);
      await boxConfig.put(AppPref.config.firstRun, false);
    }
  }
}
