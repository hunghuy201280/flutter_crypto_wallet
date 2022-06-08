part of 'import_account_bloc.dart';

@freezed
class ImportAccountEvent with _$ImportAccountEvent {
  const factory ImportAccountEvent.imported() = ImportAccountImported;
}
