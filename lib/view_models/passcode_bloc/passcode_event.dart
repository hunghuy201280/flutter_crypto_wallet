part of 'passcode_bloc.dart';

@freezed
class PasscodeEvent with _$PasscodeEvent {
  const factory PasscodeEvent.stateSignInWithBiometricsChanged(
      bool isBiometrics) = PasscodeStateSignInWithBiometricsChanged;
  const factory PasscodeEvent.initialLoaded() = PasscodeInitialLoaded;
}
