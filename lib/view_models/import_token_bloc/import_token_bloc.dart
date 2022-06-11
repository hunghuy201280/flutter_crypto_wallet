import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crypto_wallet/models/token/token.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../utils/helpers/status.dart';

part 'import_token_bloc.freezed.dart';
part 'import_token_event.dart';
part 'import_token_state.dart';

@injectable
class ImportTokenBloc extends Bloc<ImportTokenEvent, ImportTokenState> {
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  ImportTokenBloc(this._remoteProvider, this._localProvider)
      : super(ImportTokenState.initial()) {
    on<_ImportTokenEventAdd>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        if ((state.tokenAddress?.trim().length ?? 0) < 12 ||
            state.tokenAddress?.trim().isEmpty == true ||
            state.tokenDecimal?.trim().isEmpty == true ||
            state.tokenSymbol?.trim().isEmpty == true) {
          throw 'Please enter all information';
        }
        await _localProvider.addSaveToken(
            token: Token(
                address: state.tokenAddress!,
                symbol: state.tokenSymbol!,
                decimal: int.parse(state.tokenDecimal!)));
        emit(state.copyWith(status: const Success()));
      } catch (e, trace) {
        printLog(this, message: e, error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<_ImportTokenEventLoad>((event, emit) async {
      if (state.tokenAddress?.isEmpty == true) {
        return;
      }
      emit(state.copyWith(status: const Loading()));

      try {
        final result =
            await _remoteProvider.getInfoOfToken(state.tokenAddress!);
        if (result.error) throw result.message;
        state.controllerDecimal.text = result.result?.decimal.toString() ?? '';
        state.controllerSymbol.text = result.result?.symbol ?? '';
        emit(state.copyWith(
            tokenAddress: result.result?.address,
            tokenDecimal: result.result?.decimal.toString(),
            tokenSymbol: result.result?.symbol));
      } catch (e) {
        printLog(this, message: 'Error', error: e);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<_ImportTokenEventAddressChanged>(
      (event, emit) => emit(state.copyWith(tokenAddress: event.tokenAddress)),
    );
    on<_ImportTokenEventDecimalChanged>(
      (event, emit) => emit(state.copyWith(tokenDecimal: event.tokenDecimal)),
    );
    on<_ImportTokenEventSymbolChanged>(
      (event, emit) => emit(state.copyWith(tokenSymbol: event.tokenSymbol)),
    );
  }
}
