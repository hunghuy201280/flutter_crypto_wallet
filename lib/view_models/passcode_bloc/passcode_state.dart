part of 'passcode_bloc.dart';

@freezed
class PasscodeState with _$PasscodeState {
  const factory PasscodeState({
    ImageProvider? avatar,
    required String password,
    @Default(PasscodeSignInStatus.pure) PasscodeSignInStatus status,
    @Default(false) bool isShowPassword,
    @Default(false) bool isSignInBiometric,
  }) = _PasscodeState;
  factory PasscodeState.initial() => const PasscodeState(password: "");
}
