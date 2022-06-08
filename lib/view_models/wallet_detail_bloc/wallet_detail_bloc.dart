import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/token/token.dart';
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
    add(const WalletDetailTokensLoaded());
  }
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  final AuthBloc _authBloc;

  String get address {
    final _st = _authBloc.state;
    if (_st is Authenticated) {
      return _st.wallet.address;
    }
    throw "Unauthenticated";
  }

  void _mapEventToState() {
    on<WalletDetailTokensLoaded>((event, emit) async {
      try {
        final tokens = _localProvider.getSaveTokens();
        emit(state.copyWith(tokens: tokens));
      } on DioError catch (e, trace) {
        printLog(this, message: "Error", error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<WalletDetailBalanceTokensLoaded>((event, emit) async {
      try {
        final tokens = _localProvider.getSaveTokens();
        emit(state.copyWith(tokens: tokens));
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
      } on DioError catch (e, trace) {
        printLog(this, message: "Error", error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
  }
}
