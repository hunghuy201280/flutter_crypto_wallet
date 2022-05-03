part of 'wallet_detail_bloc.dart';

@freezed
class WalletDetailState with _$WalletDetailState {
  const WalletDetailState._();
  const factory WalletDetailState({
    required List<Token> tokens,
    required Status status,
  }) = _WalletDetailState;

  factory WalletDetailState.initial() => const WalletDetailState(
        tokens: [],
        status: Idle(),
      );
}
