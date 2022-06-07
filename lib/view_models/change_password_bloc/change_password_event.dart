part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.confirmed() = ChangePasswordConfirmed;
  const factory ChangePasswordEvent.submitted() = ChangePasswordSubmitted;
  const factory ChangePasswordEvent.checkboxTapped() =
      ChangePasswordCheckboxTapped;
}
