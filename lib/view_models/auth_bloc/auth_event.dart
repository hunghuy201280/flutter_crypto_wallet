part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = _AppStarted;
  const factory AuthEvent.loggedIn() = _LoggedIn;
  const factory AuthEvent.loggedOut() = _LoggedOut;
}
