part of 'import_collection_bloc.dart';

@freezed
class ImportCollectionState with _$ImportCollectionState {
  const factory ImportCollectionState({
    required TextEditingController controllerName,
    String? address,
    @Default(false) bool isValidAddress,
    String? name,
    @Default(Idle()) Status status,
  }) = _ImportCollectionState;

  factory ImportCollectionState.initial() => ImportCollectionState(controllerName: TextEditingController());
}
