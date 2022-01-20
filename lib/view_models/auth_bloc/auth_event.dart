part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = _AuthInitial;
  const factory AuthEvent.loggedIn() = _AuthLoggedIn;
  const factory AuthEvent.loggedOut() = _AuthLoggedOut;
}
