import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/wallet/wallet.dart';


part 'import_wallet_mnemonic_dto.freezed.dart';
part 'import_wallet_mnemonic_dto.g.dart';

@freezed
class ImportWalletMnemonicDto with _$ImportWalletMnemonicDto {
  factory ImportWalletMnemonicDto({
    String? mnemonic,
    Wallet? wallet,
  }) = _ImportWalletMnemonicDto;

  factory ImportWalletMnemonicDto.fromJson(Map<String, dynamic> json) =>
      _$ImportWalletMnemonicDtoFromJson(json);
}
