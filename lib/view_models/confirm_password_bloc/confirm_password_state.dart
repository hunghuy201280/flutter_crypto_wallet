part of 'confirm_password_bloc.dart';

@freezed
class ConfirmPasswordState with _$ConfirmPasswordState {
  const ConfirmPasswordState._();

  const factory ConfirmPasswordState({
    required TextEditingController password,
    required Status status,
  }) = _ConfirmPasswordState;

  factory ConfirmPasswordState.initial() => ConfirmPasswordState(
        password: TextEditingController(),
        status: const Idle(),
      );
}
