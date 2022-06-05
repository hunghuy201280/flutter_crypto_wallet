part of 'import_token_bloc.dart';

@freezed
class ImportTokenEvent with _$ImportTokenEvent {
  const factory ImportTokenEvent.add() = _ImportTokenEventAdd;
  const factory ImportTokenEvent.loadInfo() = _ImportTokenEventLoad;
  const factory ImportTokenEvent.addressChanged(String tokenAddress) =
      _ImportTokenEventAddressChanged;
  const factory ImportTokenEvent.symbolChanged(String tokenSymbol) =
      _ImportTokenEventSymbolChanged;
  const factory ImportTokenEvent.decimalChanged(String tokenDecimal) =
      _ImportTokenEventDecimalChanged;
}
