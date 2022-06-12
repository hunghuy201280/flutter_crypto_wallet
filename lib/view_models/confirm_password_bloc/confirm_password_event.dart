part of 'confirm_password_bloc.dart';

@freezed
class ConfirmPasswordEvent with _$ConfirmPasswordEvent {
  const factory ConfirmPasswordEvent.confirmed() = ConfirmPasswordConfirmed;
}
