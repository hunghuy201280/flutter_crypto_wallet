import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/nft/nft.dart';
import '../../models/wallet/wallet.dart';
import '../../utils/utils.dart';

part 'withdraw_nft_state.dart';
part 'withdraw_nft_event.dart';
part 'withdraw_nft_bloc.freezed.dart';

@injectable
class WithdrawNftBloc extends Bloc<WithdrawNftEvent, WithdrawNftState> {
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  final AuthBloc _authBloc;

  Wallet get wallet {
    final _st = _authBloc.state;
    if (_st is Authenticated) {
      return _st.wallet;
    }
    throw "Unauthenticated";
  }

  WithdrawNftBloc(
      this._remoteProvider, this._localProvider, @factoryParam this._authBloc)
      : super(WithdrawNftState.initial()) {
    on<_WithdrawNftEventInitalData>((event, emit) {
      state.controllerFromAddress.text = wallet.address;
      emit(state.copyWith(
          nft: event.nft,
          fromAddress: wallet.address,
          contractAddress: event.contractAddress));
    });
    on<_WithdrawNftEventValidAddress>((event, emit) async {
      if (state.toAddress?.isEmpty ?? true) {
        return;
      }
      emit(state.copyWith(status: const Loading()));
      try {
        final result =
            await _remoteProvider.getValidWalletAddress(state.toAddress ?? "");
        if (result.error) throw result.message;
        emit(state.copyWith(isValidToAddress: result.result ?? false));
      } catch (e, strace) {
        printLog(this,
            message: 'Error Withdraw Valid Address', error: e, trace: strace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<_WithdrawNftEventToAddressChanged>(
        (event, emit) => emit(state.copyWith(toAddress: event.address)));

    on<_WithdrawNftEventSend>((event, emit) async {
      emit(state.copyWith(status: const Loading()));

      try {
        if (state.toAddress == null || state.toAddress!.isEmpty) {
        } else {
          final transaction = await _remoteProvider.sendNFT(
            fromAddress: state.fromAddress!,
            toAddress: state.toAddress!,
            contractAddress: state.contractAddress!,
            fromPrivateKey: wallet.privateKey,
            tokenId: int.parse(state.nft!.tokenId),
          );
          if (transaction.error) {
            throw transaction.message;
          }
          emit(state.copyWith(status: const Success()));
        }
      } catch (e) {
        printLog(this, message: 'Error Withdraw', error: e);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
  }
}
