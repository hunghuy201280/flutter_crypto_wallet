import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ntf_marketplace/services/dto/base_dto.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/utils/helpers/status.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'import_wallet_bloc.freezed.dart';
part 'import_wallet_event.dart';
part 'import_wallet_state.dart';

@injectable
class ImportWalletBloc extends Bloc<ImportWalletEvent, ImportWalletState> {
  ImportWalletBloc(this._remoteProvider, this._localProvider)
      : super(ImportWalletState.initial()) {
    _mapEventToState();
  }
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  void _mapEventToState() {
    on<ImportWalletImported>((event, emit) async {
      emit(state.copyWith(status: const Loading()));

      try {
        if (state.password.trim().length < 8 ||
            state.password != state.repeatPassword) {
          throw "Password not match";
        }

        final mnemonic = state.mnemonic;
        final result =
            await _remoteProvider.verifyWalletMnemonic(mnemonic: mnemonic);
        if (result.error) throw result.message;
        final walletDetail = result.result!;
        await _localProvider.saveMnemonicPhrase(mnemonicPhrase: mnemonic);
        await _localProvider.addWallet(wallet: walletDetail.wallet!);
        await _localProvider.savePasscode(passCode: state.password);
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
