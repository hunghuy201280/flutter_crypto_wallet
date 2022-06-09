import 'package:flutter_crypto_wallet/constants/hive_configs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@freezed
class Wallet with _$Wallet {
  @HiveType(typeId: HiveConfigs.kWalletTypeId, adapterName: "WalletAdapter")
  factory Wallet({
    @HiveField(0) required String address,
    @HiveField(1) required String privateKey,
    @HiveField(2) @Default(false) bool isImportedWallet,
    @HiveField(3) @Default(0) double balance,
    @HiveField(4) @Default(1) int index,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
