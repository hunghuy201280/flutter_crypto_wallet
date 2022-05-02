import 'package:freezed_annotation/freezed_annotation.dart';

import 'wallet.dart';

part 'create_wallet_model.freezed.dart';
part 'create_wallet_model.g.dart';

@freezed
class CreateWalletModel with _$CreateWalletModel {
  factory CreateWalletModel({
    String? mnemonic,
    Wallet? wallet,
  }) = _CreateWalletModel;

  factory CreateWalletModel.fromJson(Map<String, dynamic> json) =>
      _$CreateWalletModelFromJson(json);
}
