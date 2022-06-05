import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/utils/enums.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/wallet/wallet.dart';
import '../../utils/helpers/status.dart';
import '../auth_bloc/auth_bloc.dart';

part 'create_wallet_bloc.freezed.dart';
part 'create_wallet_event.dart';
part 'create_wallet_state.dart';

@injectable
class CreateWalletBloc extends Bloc<CreateWalletEvent, CreateWalletState> {
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  final AuthBloc _authBloc;
  CreateWalletBloc(
      this._remoteProvider, this._localProvider, @factoryParam this._authBloc)
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
        if (state.password.trim().isEmpty &&
            state.repeatPassword.trim().isEmpty) {
          throw CreateWalletErrorState.passwordEmpty;
        }
        if (state.password != state.repeatPassword) {
          throw CreateWalletErrorState.passwordNotMatch;
        }
        if (state.password.trim().length < 8) {
          throw CreateWalletErrorState.passwordNotMeetCondition;
        }
        if (!state.checkBox) throw CreateWalletErrorState.policyAccept;
        final result = await _remoteProvider.createWallet();
        if (result.error) throw result.message;
        final walletDetail = result.result!;
        emit(
          state.copyWith(
            mnemonic: walletDetail.mnemonic,
            wallet: walletDetail.wallet,
            currentPage: 2,
            status: const Success(),
          ),
        );
        _authBloc.add(AuthLoggedIn(_localProvider.getSelectedWallet()!));
      } catch (e, trace) {
        printLog(this, message: e, error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<_CreateWalletEventStart>((event, emit) async {
      await _localProvider.savePasscode(passCode: state.password);
      await _localProvider.saveMnemonicPhrase(mnemonicPhrase: state.mnemonic!);
      await _localProvider.addWallet(wallet: state.wallet!);
      emit(state.copyWith(status: const Success()));
    });
  }
}
