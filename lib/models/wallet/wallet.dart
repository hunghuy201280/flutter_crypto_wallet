import 'package:flutter_crypto_wallet/constants/hive_configs.dart';
import 'package:flutter_crypto_wallet/utils/jazzicon/jazziconshape.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../token/token.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@freezed
class Wallet with _$Wallet {
  @HiveType(typeId: HiveConfigs.kWalletTypeId, adapterName: "WalletAdapter")
  factory Wallet({
    @HiveField(0) required String address,
    @HiveField(1) required String privateKey,
    @HiveField(2) @Default(false) bool isImportedWallet,
    @HiveField(3) Token? balanceToken,
    @HiveField(4) @Default(1) int index,
    @HiveField(5) JazziconData? avatar,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
