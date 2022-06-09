import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/utils/enums.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'import_wallet_bloc.freezed.dart';
part 'import_wallet_event.dart';
part 'import_wallet_state.dart';

@injectable
class ImportWalletBloc extends Bloc<ImportWalletEvent, ImportWalletState> {
  ImportWalletBloc(
      this._remoteProvider, this._localProvider, @factoryParam this._authBloc)
      : super(ImportWalletState.initial()) {
    _mapEventToState();
  }
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  final AuthBloc _authBloc;
  void _mapEventToState() {
    on<ImportWalletImported>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        if (state.password.trim().isEmpty &&
            state.repeatPassword.trim().isEmpty) {
          throw ImportWalletErrorState.passwordEmpty;
        }
        if (state.password != state.repeatPassword) {
          throw ImportWalletErrorState.passwordNotMatch;
        }
        if (state.password.trim().length < 8) {
          throw ImportWalletErrorState.passwordNotMeetCondition;
        }

        if (!state.boxChecked) throw ImportWalletErrorState.policyAccept;

        final mnemonic = state.mnemonic;
        final result =
            await _remoteProvider.verifyWalletMnemonic(mnemonic: mnemonic);
        if (result.error) throw result.message;
        final wallet = result.result!.wallet!;
        await _localProvider.saveMnemonicPhrase(mnemonicPhrase: mnemonic);
        await _localProvider.addWallet(wallet: wallet);
        await _localProvider.savePasscode(passCode: state.password);
        _authBloc.add(AuthLoggedIn(wallet));
        emit(state.copyWith(status: const Success()));
      } catch (e, trace) {
        printLog(this, message: "Error", error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(
          state.copyWith(status: const Idle()),
        );
      }
    });
    on<ImportWalletMnemonicChanged>((event, emit) {
      emit(state.copyWith(mnemonic: event.mnemonic));
    });
    on<ImportWalletPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<ImportWalletRePasswordChanged>((event, emit) {
      emit(state.copyWith(repeatPassword: event.password));
    });
    on<ImportWalletCheckBoxChanged>((event, emit) {
      emit(state.copyWith(boxChecked: event.value));
    });
  }
}
