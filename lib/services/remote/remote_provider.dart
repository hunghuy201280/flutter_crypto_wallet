import 'package:flutter_ntf_marketplace/services/dto//import_wallet_mnemonic_dto/import_wallet_mnemonic_dto.dart';
import 'package:flutter_ntf_marketplace/view_models/import_wallet_bloc/import_wallet_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../models/token/token.dart';
import '../../models/wallet/wallet.dart';
import '../dto/base_dto.dart';
import '../dto/create_wallet_dto/create_wallet_dto.dart';
import 'remote_repository.dart';

@singleton
class RemoteProvider {
  const RemoteProvider({
    required RemoteRepository repo,
  }) : _repo = repo;
  final RemoteRepository _repo;

  Future<Wallet> verifyWalletPrivateKey({required String privateKey}) async {
    final response = await _repo.verifyWalletPrivateKey(privateKey: privateKey);
    final data = BaseDto<Wallet>.fromJson(
        response.data, (data) => Wallet.fromJson(data));
    return data.result;
  }

  Future<ImportWalletMnemonicDto> verifyWalletMnemonic(
      {required String mnemonic}) async {
    final response = await _repo.verifyWalletMnemonic(mnemonic: mnemonic);
    final data = BaseDto<ImportWalletMnemonicDto>.fromJson(
        response.data, (data) => ImportWalletMnemonicDto.fromJson(data));
    return data.result;
  }

  Future<CreateWalletDto> createWallet() async {
    final response = await _repo.createWallet();
    final data = BaseDto<CreateWalletDto>.fromJson(
      response.data,
      (data) => CreateWalletDto.fromJson(data),
    );
    return data.result;
  }

  Future<List<Token>> getTokens(String address) async {
    final response = await _repo.getTokens(address);
    final data = BaseDto<List<Token>>.fromJson(
      response.data,
      (data) => (data as List).map((e) => Token.fromJson(e)).toList(),
    );
    return data.result;
  }
}
