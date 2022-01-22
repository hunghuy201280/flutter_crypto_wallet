part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = UnAuthenticated;
  const factory AuthState.authenticatedNoPassword({required String wallet}) =
      AuthenticatedNoPassword;
  const factory AuthState.authenticated({required Wallet wallet}) =
      Authenticated;
}
