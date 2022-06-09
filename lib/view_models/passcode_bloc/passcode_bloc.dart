import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/utils/helpers/status.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:injectable/injectable.dart';

part 'passcode_bloc.freezed.dart';
part 'passcode_event.dart';
part 'passcode_state.dart';

class SignedInSuccess extends Success {
  const SignedInSuccess();
}

class SignedInFailed extends Error {
  final String error;
  const SignedInFailed(this.error);
}

@injectable
class PasscodeBloc extends Bloc<PasscodeEvent, PasscodeState> {
  final LocalProvider _localProvider;
  final AuthBloc _authBloc;
  PasscodeBloc(
    this._localProvider,
    @factoryParam this._authBloc,
  ) : super(PasscodeState.initial()) {
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
    on<_PasscodeEventSignInWithBiometrics>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      final auth = LocalAuthentication();
      final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
      final bool canAuthenticate =
          canAuthenticateWithBiometrics || await auth.isDeviceSupported();
      if (canAuthenticate) {
        final List<BiometricType> availableBiometrics =
            await auth.getAvailableBiometrics();

        if (availableBiometrics.contains(BiometricType.strong) ||
            availableBiometrics.contains(BiometricType.face)) {
          // Specific types of biometrics are available.
          // Use checks like this with caution!
          try {
            final bool didAuthenticate = await auth.authenticate(
                localizedReason: 'Please authenticate to login app',
                options: const AuthenticationOptions(useErrorDialogs: false));
            // ···
            if (didAuthenticate) {
              _authBloc.add(AuthLoggedIn(_localProvider.getSelectedWallet()!));
              emit(state.copyWith(status: const SignedInSuccess()));
            }
          } on PlatformException catch (e) {
            if (e.code == auth_error.notAvailable) {
              // Add handling of no hardware here.
            } else if (e.code == auth_error.notEnrolled) {
              // ...
            } else {
              // ...
            }
          } finally {}
        }
      }
      emit(state.copyWith(status: const Idle()));
    });
    on<_PasscodeEventSignInWithPasscode>((event, emit) {
      final passcodeSave = _localProvider.getPasscode();
      if (state.password == passcodeSave) {
        _authBloc.add(AuthLoggedIn(_localProvider.getSelectedWallet()!));
        emit(state.copyWith(status: const SignedInSuccess()));
      } else {
        emit(state.copyWith(status: const SignedInFailed("Wrong password")));
      }
      emit(state.copyWith(status: const Idle()));
    });
  }
}
