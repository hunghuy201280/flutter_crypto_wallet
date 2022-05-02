part of 'passcode_bloc.dart';

@freezed
class PasscodeEvent with _$PasscodeEvent {
  const factory PasscodeEvent.stateSignInWithBiometricsChanged(
      bool isBiometrics) = _PasscodeStateSignInWithBiometricsChanged;
  const factory PasscodeEvent.passCodeChanged({required String passCode}) =
      _PasscodeChanged;
  const factory PasscodeEvent.initialLoaded() = _PasscodeInitialLoaded;
  const factory PasscodeEvent.signInWithBiometrics() =
      _PasscodeEventSignInWithBiometrics;
  const factory PasscodeEvent.signInWithPasscode() =
      _PasscodeEventSignInWithPasscode;
}
