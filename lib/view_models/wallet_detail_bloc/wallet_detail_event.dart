part of 'wallet_detail_bloc.dart';

@freezed
class WalletDetailEvent with _$WalletDetailEvent {
  const factory WalletDetailEvent.tokensLoaded() = WalletDetailTokensLoaded;
  const factory WalletDetailEvent.NFTsLoaded() = WalletDetailNFTsLoaded;
}
