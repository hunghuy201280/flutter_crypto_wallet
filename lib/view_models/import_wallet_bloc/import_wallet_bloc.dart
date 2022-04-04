import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'import_wallet_bloc.freezed.dart';
part 'import_wallet_event.dart';
part 'import_wallet_state.dart';

@injectable
class ImportWalletBloc extends Bloc<ImportWalletEvent, ImportWalletState> {
  ImportWalletBloc(this._remoteProvider, this._localProvider)
      : super(ImportWalletState.initial()) {
    _mapEventToState();
  }
  final RemoteProvider _remoteProvider;
  final LocalProvider _localProvider;
  void _mapEventToState() {
    on<ImportWalletImported>((event, emit) async {
      try {
        final privateKey = state.privateKey;
        final result =
            await _remoteProvider.verifyWallet(privateKey: privateKey);
        await _localProvider.savePrivateKey(privateKey: privateKey);
      } on DioError catch (e) {}
    });
    on<ImportWalletPrivateKeyChanged>((event, emit) {
      emit(state.copyWith(privateKey: event.privateKey));
    });
    on<ImportWalletPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<ImportWalletRePasswordChanged>((event, emit) {
      emit(state.copyWith(repeatPassword: event.password));
    });
    on<ImportWalletCheckBoxChanged>((event, emit) {
      emit(state.copyWith(boxChecked: event.value));
    });
  }
}
