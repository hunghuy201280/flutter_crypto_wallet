import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../services/local/local_provider.dart';
import '../../utils/helpers/status.dart';
import '../../utils/utils.dart';
import '../passcode_bloc/passcode_bloc.dart';

part 'confirm_password_bloc.freezed.dart';
part 'confirm_password_event.dart';
part 'confirm_password_state.dart';

enum ConfirmPasswordEventType {
  wrongPassword,
  correctPassword,
}

@injectable
class ConfirmPasswordBloc
    extends Bloc<ConfirmPasswordEvent, ConfirmPasswordState> {
  ConfirmPasswordBloc(this.localProvider)
      : super(ConfirmPasswordState.initial()) {
    on<ConfirmPasswordConfirmed>((event, emit) {
      final password = localProvider.getPasscode();
      if (password != state.password.text.trim()) {
        _emitStatus(
          const Error<ConfirmPasswordEventType>(
              ConfirmPasswordEventType.wrongPassword),
          emit,
        );
        return;
      }
      _emitStatus(
        const Success<ConfirmPasswordEventType>(
            ConfirmPasswordEventType.correctPassword),
        emit,
      );
    });
    on<ConfirmPasswordFingerprintAuthenticated>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        final didAuthenticate = await Utils.authWithFingerprint();
        if (didAuthenticate) {
          _emitStatus(
            const Success<ConfirmPasswordEventType>(
                ConfirmPasswordEventType.correctPassword),
            emit,
          );
        }
      } catch (e, trace) {
        printLog(this, message: "Error", trace: trace, error: e);
        emit(state.copyWith(status: const FingerprintNotSupported()));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
    final isSignInBiometric = localProvider.isLoginWithBiometrics();
    if (isSignInBiometric) {
      add(const ConfirmPasswordFingerprintAuthenticated());
    }
  }
  final LocalProvider localProvider;

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
