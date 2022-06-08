import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/utils/helpers/status.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'import_account_bloc.freezed.dart';
part 'import_account_event.dart';
part 'import_account_state.dart';

@injectable
class ImportAccountBloc extends Bloc<ImportAccountEvent, ImportAccountState> {
  ImportAccountBloc(this._remoteProvider, this._localProvider)
      : super(ImportAccountState.initial()) {
    _mapEventToState();
  }
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  void _mapEventToState() {
    on<ImportAccountImported>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        final response = await _remoteProvider.verifyWalletPrivateKey(
            privateKey: state.privateKey.trimmed);
        if (response.result == null) {
          _emitStatus(const InvalidPrivateKeyError(), emit);
          return;
        }
        final wallet = response.result!;
        await _localProvider.addWallet(
            wallet: wallet.copyWith(isImportedWallet: true));

        _emitStatus(const Success(), emit);
      } catch (e, trace) {
        printLog(this, message: "Error", error: e, trace: trace);
        emit(state.copyWith(status: Error(e)));
      } finally {
        emit(
          state.copyWith(status: const Idle()),
        );
      }
    });
  }

  //#region helper
  _emitStatus(Status status, Emitter emit) {
    emit(
      state.copyWith(
        status: status,
      ),
    );
    emit(
      state.copyWith(
        status: const Idle(),
      ),
    );
  }
//#endregion
}
