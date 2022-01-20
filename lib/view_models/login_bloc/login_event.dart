part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.importWaller() = _ImportWallet;
  const factory LoginEvent.createWallet() = _CreateWallet;
}
