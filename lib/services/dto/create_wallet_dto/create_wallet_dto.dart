import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/wallet/wallet.dart';

part 'create_wallet_dto.freezed.dart';
part 'create_wallet_dto.g.dart';

@freezed
class CreateWalletDto with _$CreateWalletDto {
  factory CreateWalletDto({
    required String mnemonic,
    required Wallet wallet,
  }) = _CreateWalletDto;

  factory CreateWalletDto.fromJson(Map<String, dynamic> json) =>
      _$CreateWalletDtoFromJson(json);
}
