import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../entities/token/token.dart';
import '../../utils/helpers/status.dart';

part 'wallet_detail_bloc.freezed.dart';
part 'wallet_detail_event.dart';
part 'wallet_detail_state.dart';

@injectable
class WalletDetailBloc extends Bloc<WalletDetailEvent, WalletDetailState> {
  WalletDetailBloc(this._remoteProvider, @factoryParam this._authBloc)
      : super(WalletDetailState.initial()) {
    _mapEventToState();
    add(const WalletDetailTokensLoaded());
  }
  final RemoteProvider _remoteProvider;
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
        emit(state.copyWith(status: const Loading()));
        final tokens = await _remoteProvider.getTokens(address);
        emit(state.copyWith(tokens: tokens));
      } on DioError catch (e, trace) {
        printLog(this, message: "Error", error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
  }
}
