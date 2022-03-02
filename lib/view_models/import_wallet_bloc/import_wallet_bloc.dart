import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'import_wallet_bloc.freezed.dart';
part 'import_wallet_event.dart';
part 'import_wallet_state.dart';

class ImportWalletBloc extends Bloc<ImportWalletEvent, ImportWalletState> {
  ImportWalletBloc() : super(ImportWalletState.initial()) {
    _mapEventToState();
  }
  final _remoteProvider = Get.find<RemoteProvider>();
  final _localProvider = Get.find<LocalProvider>();
  void _mapEventToState() {
    on<ImportWalletImported>((event, emit) async {
      try {
        final privateKey = state.privateKey;
        final result =
            await _remoteProvider.verifyWallet(privateKey: privateKey);
        await _localProvider.savePrivateKey(privateKey: privateKey);
        printInfo(info: "successfully saved $privateKey with address $result");
      } on DioError catch (e) {
        printError(info: "error ${e.errorDetail}");
      }
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
