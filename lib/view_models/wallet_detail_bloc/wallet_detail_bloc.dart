import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/token/token.dart';
import '../../models/wallet/wallet.dart';
import '../../utils/helpers/status.dart';
import '../../utils/utils.dart';

part 'wallet_detail_bloc.freezed.dart';
part 'wallet_detail_event.dart';
part 'wallet_detail_state.dart';

@injectable
class WalletDetailBloc extends Bloc<WalletDetailEvent, WalletDetailState> {
  WalletDetailBloc(
      this._remoteProvider, @factoryParam this._authBloc, this._localProvider)
      : super(WalletDetailState.initial()) {
    _mapEventToState();
    add(const WalletDetailBalanceTokensLoaded());
  }
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

  void _mapEventToState() {
    on<WalletDetailBalanceTokensLoaded>((event, emit) async {
      try {
        var tokens = _localProvider.getSaveTokens();

        if (wallet.balanceToken != null) tokens.insert(0, wallet.balanceToken!);
        emit(state.copyWith(tokens: tokens));
        var listTokenFetch = <String, double>{};
        // Fetch balance of tokens
        try {
          final result = await _remoteProvider.getBalanceTokensOfAddress(
              wallet.address, state.tokens);
          if (result.error) throw result.message;
          if (result.result != null) {
            var items =
                result.result!.map((e) => MapEntry(e.address, e.balance));
            listTokenFetch.addEntries(items);
          }
        } catch (e) {
          printLog(this, message: 'Fetch Token Balance Faild', error: e);
        }
        // Fetch blance of wallet
        try {
          final result = await _remoteProvider.getWalletInfo(wallet.address);
          if (result.error) throw result.message;
          if (result.result != null) {
            final token = result.result!;
            listTokenFetch.addEntries([MapEntry("", token.balance)]);
            final wallets = _localProvider.getSavedWallets();
            await _localProvider.setSavedWallets(wallets.map((wallet) {
              int index = wallets
                  .indexWhere((element) => element.address == token.address);
              if (index >= 0) {
                wallet = wallet.copyWith(
                    balanceToken:
                        wallet.balanceToken?.copyWith(balance: token.balance));
              }
              return wallet;
            }).toList());
          }
        } catch (e) {
          printLog(this, message: 'Fetch Token Balance Faild', error: e);
        }
        final tokensClone = List<Token>.from(state.tokens);
        listTokenFetch.forEach(((key, value) {
          int index =
              tokensClone.indexWhere((element) => element.address == key);
          if (index >= 0) {
            tokensClone[index] = tokensClone[index].copyWith(balance: value);
          }
        }));

        emit(state.copyWith(tokens: [...tokensClone], status: const Success()));

        tokensClone.removeWhere((element) => element.address.isEmpty);
        await _localProvider.setSaveTokens(tokens: tokensClone);
      } on DioError catch (e, trace) {
        printLog(this, message: "Error", error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
  }
}
