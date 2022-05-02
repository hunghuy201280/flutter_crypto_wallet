import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/utils/enums.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_wallet_state.dart';
part 'create_wallet_event.dart';
part 'create_wallet_bloc.freezed.dart';

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
      emit(state.copyWith(status: CreateWalletStatus.submissionInProgress));
      if (state.password.trim().length > 6 &&
          state.password != state.repeatPassword) {
        return emit(
          state.copyWith(
            status: CreateWalletStatus.passwordError,
          ),
        );
      }
      try {
        final walletDetail = await _remoteProvider.createWallet();
        await _localProvider.savePasscode(passCode: state.password);
        await _localProvider.saveMnemonicPhrase(
            mnemonicPhrase: walletDetail.mnemonic ?? '');
        await _localProvider.savePrivateKey(
            privateKey: walletDetail.wallet?.privateKey ?? '');
        return emit(state.copyWith(
            mnemonic: walletDetail.mnemonic ?? '',
            currentPage: 2,
            status: CreateWalletStatus.pure));
      } catch (e, trace) {
        printLog(this, message: e.toString(), error: e, trace: trace);
        emit(state.copyWith(status: CreateWalletStatus.apiError));
      }
    });
  }
}
