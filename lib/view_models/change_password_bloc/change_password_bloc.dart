import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

enum ChangePasswordEventType {
  reNewPasswordIsNotIdentical,
  passwordChangedSuccessfully,
  notChecked,
}

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc(this.localProvider)
      : super(ChangePasswordState.initial()) {
    _mapEventToState();
  }

  final LocalProvider localProvider;

  //#region mapEventToState
  void _mapEventToState() {
    on<ChangePasswordSubmitted>((event, emit) async {
      if (!state.isChecked) {
        _emitStatus(
          const Error<ChangePasswordEventType>(
              ChangePasswordEventType.notChecked),
          emit,
        );
      }
      final newPassword = state.newPassword.trimmed;
      final reNewPassword = state.reNewPassword.trimmed;
      if (newPassword != reNewPassword) {
        _emitStatus(
          const Error<ChangePasswordEventType>(
              ChangePasswordEventType.reNewPasswordIsNotIdentical),
          emit,
        );
        return;
      }
      await localProvider.savePasscode(passCode: newPassword);
      _emitStatus(
        const Success<ChangePasswordEventType>(
            ChangePasswordEventType.passwordChangedSuccessfully),
        emit,
      );
    });
    on<ChangePasswordCheckboxTapped>((event, emit) {
      emit(
        state.copyWith(isChecked: !state.isChecked),
      );
    });
  }

  //#endregion

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
