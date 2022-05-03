import 'package:flutter_ntf_marketplace/services/models/base_response.dart';
import 'package:flutter_ntf_marketplace/services/models/create_wallet_model/create_wallet_model.dart';
import 'package:injectable/injectable.dart';

import '../../entities/token/token.dart';
import '../../entities/wallet/wallet.dart';
import 'remote_repository.dart';

@singleton
class RemoteProvider {
  const RemoteProvider({
    required RemoteRepository repo,
  }) : _repo = repo;
  final RemoteRepository _repo;

  Future<Wallet> verifyWallet({required String privateKey}) async {
    final response = await _repo.verifyWallet(privateKey: privateKey);
    final data = BaseResponse<String>.fromJson(
        response.data, (data) => data["wallets"][0]);
    return Wallet(address: data.result, privateKey: privateKey);
  }

  Future<CreateWalletModel> createWallet() async {
    final response = await _repo.createWallet();
    final data = BaseResponse<CreateWalletModel>.fromJson(
      response.data,
      (data) => CreateWalletModel.fromJson(data),
    );
    return data.result;
  }

  Future<List<Token>> getTokens(String address) async {
    final response = await _repo.getTokens(address);
    final data = BaseResponse<List<Token>>.fromJson(
      response.data,
      (data) => (data as List).map((e) => Token.fromJson(e)).toList(),
    );
    return data.result;
  }
}
