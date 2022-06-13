import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/services/remote/remote_provider.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/wallet/wallet.dart';
import '../../utils/helpers/status.dart';

part 'import_collection_state.dart';
part 'import_collection_event.dart';
part 'import_collection_bloc.freezed.dart';

class ValidError extends Error {
  const ValidError() : super();
}

@injectable
class ImportCollectionBloc
    extends Bloc<ImportCollectionEvent, ImportCollectionState> {
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

  ImportCollectionBloc(
      this._remoteProvider, this._localProvider, @factoryParam this._authBloc)
      : super(ImportCollectionState.initial()) {
    on<_ImportCollectionEventAddressChanged>(
        (event, emit) => emit(state.copyWith(address: event.address)));
    on<_ImportCollectionEventValidAddress>((event, emit) async {
      if (state.address == null) return;
      emit(state.copyWith(status: const Loading()));
      try {
        final result = await _remoteProvider
            .getValidCollectionAddress(state.address.toString());
        if (result.error) throw result.message;
        if (result.result ?? false) {
          try {
            final info = await _remoteProvider
                .getInfoOfCollection(state.address.toString());
            if (info.error) throw info.message;
            if (info.result != null) {
              state.controllerName.text = info.result!.name.toString();
              emit(state.copyWith(name: state.controllerName.text));
            }
          } catch (e) {}
          emit(state.copyWith(isValidAddress: result.result!));
        } else {
          emit(state.copyWith(status: const ValidError()));
        }
      } catch (e, trace) {
        printLog(this,
            message: 'Valid Collection Address Failure',
            trace: trace,
            error: e);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    on<_ImportCollectionEventImport>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        await _localProvider.addCollection(address: state.address!);
        emit(state.copyWith(status: const Success()));
      } catch (e, trace) {
        printLog(this,
            message: 'Add Collection Failure', error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
  }
}
