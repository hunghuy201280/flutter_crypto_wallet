part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = AuthInitial;
  const factory AuthEvent.loggedIn(Wallet selectedWallet) = AuthLoggedIn;
  const factory AuthEvent.loggedOut() = AuthLoggedOut;
  const factory AuthEvent.passcodeChanged() = AuthPasscodeChanged;
}
