part of 'passcode_bloc.dart';

@freezed
class PasscodeState with _$PasscodeState {
  const PasscodeState._();
  const factory PasscodeState({
    ImageProvider? avatar,
    required String password,
    required bool isShowPassword,
    required bool isSignInBiotremics,
  }) = _PasscodeState;
  factory PasscodeState.initial() => const PasscodeState(password: "", isShowPassword: false, isSignInBiotremics: false);
}
