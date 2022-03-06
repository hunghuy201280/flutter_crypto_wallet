import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ntf_marketplace/configs/app_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../constants/app_prefs.dart';

part 'passcode_state.dart';
part 'passcode_event.dart';
part 'passcode_bloc.freezed.dart';

class PasscodeBloc extends Bloc<PasscodeEvent, PasscodeState> {
  final _appPref = Get.find<AppPref>();
  PasscodeBloc() : super(PasscodeState.initial()) {
    on<PasscodeStateSignInWithBiometricsChanged>((event, emit) async {
      await _appPref.wallet.setIsLoginWithBiometrics(event.isBiometrics);
      emit(state.copyWith(isSignInBiotremics: event.isBiometrics));
    });
    on<PasscodeInitialLoaded>((event, emit) {
      emit(
        state.copyWith(
            isSignInBiotremics: _appPref.wallet.isLoginWithBiometrics),
      );
    });
    on<PasscodeChanged>(
      (event, emit) => emit(state.copyWith(password: event.passCode)),
    );
  }
}
