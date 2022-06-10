import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/token/token.dart';

part 'withdraw_bloc.freezed.dart';
part 'withdraw_event.dart';
part 'withdraw_state.dart';

@injectable
class WithdrawBloc extends Bloc<WithdrawEvent, WithdrawState> {
  final LocalProvider _localProvider;
  final RemoteProvider _remoteProvider;
  final AuthBloc _authBloc;

  String get address {
    final _st = _authBloc.state;
    if (_st is Authenticated) {
      return _st.wallet.address;
    }
    throw "Unauthenticated";
  }

  WithdrawBloc(
      this._localProvider, this._remoteProvider, @factoryParam this._authBloc)
      : super(WithdrawState.initial()) {
    on<_WithdrawEventInitData>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        final result = await _remoteProvider.getBalanceTokensOfAddress(
            address, state.tokens);
        if (result.error) throw result.message;
        if (result.result != null) {
          final tokenClone = List<Token>.from(state.tokens);
          for (var element in result.result!) {
            int index =
                tokenClone.indexWhere((i) => i.address == element.address);
            if (index >= 0) {
              tokenClone[index] =
                  tokenClone[index].copyWith(address: element.address ?? '');
            }
          }
          await _localProvider.setSaveTokens(tokens: tokenClone);
          emit(state.copyWith(tokens: tokenClone));
        }
      } catch (e) {
        printLog(this, message: 'Error Wtihdraw Load Data', error: e);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<_WithdrawEventValidAddress>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        if (state.address?.isEmpty ?? true) {
          throw 'Wallet Address Is Not Empty';
        }
        final result =
            await _remoteProvider.getValidWalletAddress(state.address ?? "");
        if (result.error) throw result.message;
        emit(state.copyWith(isValidAddress: result.result ?? false));
      } catch (e) {
        printLog(this, message: 'Error Withdraw Valid Address', error: e);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<_WithdrawEventAddressChanged>((event, emit) {
      emit(state.copyWith(address: event.address));
    });
  }
}
