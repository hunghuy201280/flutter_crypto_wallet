import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tuple/tuple.dart';

import '../../models/token/token.dart';
import '../../models/wallet/wallet.dart';

part 'withdraw_bloc.freezed.dart';
part 'withdraw_event.dart';
part 'withdraw_state.dart';

class AmountError extends Error {
  const AmountError() : super();
}

@injectable
class WithdrawBloc extends Bloc<WithdrawEvent, WithdrawState> {
  final LocalProvider _localProvider;
  final RemoteProvider _remoteProvider;
  final AuthBloc _authBloc;

  Wallet get wallet {
    final _st = _authBloc.state;
    if (_st is Authenticated) {
      return _st.wallet;
    }
    throw "Unauthenticated";
  }

  WithdrawBloc(
      this._localProvider, this._remoteProvider, @factoryParam this._authBloc)
      : super(WithdrawState.initial()) {
    on<_WithdrawEventInitData>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        // Load Token From Local
        final tokens = _localProvider.getSaveTokens();
        // Load Token From Wallet
        if (wallet.balanceToken != null) tokens.insert(0, wallet.balanceToken!);
        var listTokenFetch = <String, Tuple2<double, double>>{};
        // Fetch balance of tokens
        try {
          final result = await _remoteProvider.getBalanceTokensOfAddress(
              wallet.address, state.tokens);
          if (result.error) throw result.message;
          if (result.result != null) {
            var items = result.result!
                .map((e) => MapEntry(e.address, Tuple2(e.balance, e.amount)));
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
            listTokenFetch.addEntries(
                [MapEntry("", Tuple2(token.balance, token.amount))]);
            final wallets = _localProvider.getSavedWallets();
            await _localProvider.setSavedWallets(wallets.map((walletItem) {
              int index = wallets
                  .indexWhere((element) => element.address == wallet.address);
              if (index >= 0) {
                walletItem = walletItem.copyWith(
                    balanceToken: walletItem.balanceToken?.copyWith(
                        balance: token.balance,
                        amount: token.amount,
                        imageUrl: token.imageUrl));
              }
              return walletItem;
            }).toList());
          }
        } catch (e) {
          printLog(this, message: 'Fetch Token Balance Faild', error: e);
        }
        final tokensClone = List<Token>.from(tokens);
        listTokenFetch.forEach(((key, value) {
          int index =
              tokensClone.indexWhere((element) => element.address == key);
          if (index >= 0) {
            tokensClone[index] = tokensClone[index]
                .copyWith(balance: value.item1, amount: value.item2);
          }
        }));

        emit(state.copyWith(tokens: [...tokensClone]));
        tokensClone.removeWhere((element) => element.address.isEmpty);
        await _localProvider.setSaveTokens(tokens: tokensClone);
      } catch (e) {
        printLog(this, message: 'Error Wtihdraw Load Data', error: e);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<_WithdrawEventValidAddress>((event, emit) async {
      if (state.address?.isEmpty ?? true) {
        return;
      }
      emit(state.copyWith(status: const Loading()));
      try {
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
    on<_WithdrawEventTokenChanged>((event, emit) {
      emit(state.copyWith(tokenSelected: event.token, amount: 0.0));
    });
    on<_WithdrawEventMaxAmount>((event, emit) {
      var amount = state.tokenSelected?.balance ?? 0.0;
      state.controllerAmount.text = amount.toString();
      emit(state.copyWith(amount: amount));
    });
    on<_WithdrawEventSend>((event, emit) async {
      emit(state.copyWith(status: const Loading()));

      try {
        if (state.tokenSelected == null) {
        } else if (state.amount <= 0) {
          emit(state.copyWith(status: const AmountError()));
        } else {
          if (state.tokenSelected!.address.isNotEmpty) {
            final transaction = await _remoteProvider.sendToken(
                wallet.address,
                state.address ?? '',
                state.tokenSelected!.address,
                state.amount,
                wallet.privateKey);
            if (transaction.error) {
              throw transaction.message;
            }
          } else {
            final transaction = await _remoteProvider.sendBalance(
                wallet.address,
                state.address ?? '',
                state.amount,
                wallet.privateKey);
            if (transaction.error) {
              throw transaction.message;
            }
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
    on<_WithdrawEventAmountChanged>(
        (event, emit) => emit(state.copyWith(amount: event.amount)));
  }
}
