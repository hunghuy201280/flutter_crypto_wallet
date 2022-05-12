import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../utils/helpers/status.dart';

part 'create_wallet_bloc.freezed.dart';
part 'create_wallet_event.dart';
part 'create_wallet_state.dart';

@injectable
class CreateWalletBloc extends Bloc<CreateWalletEvent, CreateWalletState> {
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  CreateWalletBloc(this._remoteProvider, this._localProvider)
      : super(CreateWalletState.initial()) {
    on<_CreateWalletEventPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<_CreateWalletEventRePasswordChanged>((event, emit) {
      emit(state.copyWith(repeatPassword: event.rePassword));
    });
    on<_CreateWalletEventCheckBox>((event, emit) {
      emit(state.copyWith(checkBox: event.isCheck));
    });
    on<_CreateWalletEventRequest>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        if (state.password.trim().length < 8 ||
            state.password != state.repeatPassword) {
          throw "Password not match";
        }
        final result = await _remoteProvider.createWallet();
        if (result.error) throw result.message;
        final walletDetail = result.result!;
        await _localProvider.savePasscode(passCode: state.password);
        await _localProvider.saveMnemonicPhrase(
            mnemonicPhrase: walletDetail.mnemonic);
        await _localProvider.addWallet(wallet: walletDetail.wallet);
        return emit(
          state.copyWith(
            mnemonic: walletDetail.mnemonic,
            currentPage: 2,
            status: const Idle(),
          ),
        );
      } catch (e, trace) {
        printLog(this, message: e, error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
  }
}
