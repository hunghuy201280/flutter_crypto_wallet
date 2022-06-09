part of 'import_account_bloc.dart';

@freezed
class ImportAccountState with _$ImportAccountState {
  const ImportAccountState._();
  const factory ImportAccountState({
    required TextEditingController privateKey,
    required Status status,
  }) = _ImportAccountState;

  factory ImportAccountState.initial() => ImportAccountState(
        privateKey: TextEditingController(),
        status: const Idle(),
      );
}

class InvalidPrivateKeyError extends Error {
  const InvalidPrivateKeyError();
}

class DuplicateAccountError extends Error {
  const DuplicateAccountError();
}
