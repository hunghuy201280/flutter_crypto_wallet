import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'passcode_bloc.freezed.dart';
part 'passcode_event.dart';
part 'passcode_state.dart';

@injectable
class PasscodeBloc extends Bloc<PasscodeEvent, PasscodeState> {
  final LocalProvider _localProvider;

  PasscodeBloc(this._localProvider) : super(PasscodeState.initial()) {
    on<_PasscodeStateSignInWithBiometricsChanged>((event, emit) async {
      await _localProvider.setLoginWithBiometrics(
          isBiometrics: event.isBiometrics);
      emit(state.copyWith(isSignInBiometric: event.isBiometrics));
    });
    on<_PasscodeInitialLoaded>((event, emit) {
      emit(
        state.copyWith(
            isSignInBiometric: _localProvider.isLoginWithBiometrics()),
      );
    });
    on<_PasscodeChanged>(
      (event, emit) => emit(state.copyWith(password: event.passCode)),
    );
    on<_PasscodeEventSignInWithBiometrics>((event, emit) {});
    on<_PasscodeEventSignInWithPasscode>((event, emit) {
      final passcodeSave = _localProvider.getPasscode();
      if (state.password == passcodeSave) {
        emit(state.copyWith(status: PasscodeSignInStatus.signInSuccess));
      } else {
        emit(state.copyWith(status: PasscodeSignInStatus.signInFailure));
      }
    });
  }
}
