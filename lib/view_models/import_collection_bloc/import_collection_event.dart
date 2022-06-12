part of 'import_collection_bloc.dart';

@freezed
class ImportCollectionEvent with _$ImportCollectionEvent {
  const factory ImportCollectionEvent.validAddress() =
      _ImportCollectionEventValidAddress;
  const factory ImportCollectionEvent.import() = _ImportCollectionEventImport;
  const factory ImportCollectionEvent.onAddressChanged(String address) =
      _ImportCollectionEventAddressChanged;
}
