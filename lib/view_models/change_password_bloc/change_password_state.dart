part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const ChangePasswordState._();
  const factory ChangePasswordState({
    required TextEditingController currentPassword,
    required TextEditingController newPassword,
    required TextEditingController reNewPassword,
    required bool isChecked,
    required Status status,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        isChecked: false,
        currentPassword: TextEditingController(),
        newPassword: TextEditingController(),
        reNewPassword: TextEditingController(),
        status: const Idle(),
      );
}
