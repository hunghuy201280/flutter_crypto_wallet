part of 'wallet_detail_bloc.dart';

@freezed
class WalletDetailEvent with _$WalletDetailEvent {
  const factory WalletDetailEvent.balanceTokensLoaded() =
      WalletDetailBalanceTokensLoaded;
  const factory WalletDetailEvent.NFTsLoaded() = WalletDetailNFTsLoaded;
}
