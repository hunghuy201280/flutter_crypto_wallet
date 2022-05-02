import 'package:dio/dio.dart';
import 'package:flutter_ntf_marketplace/services/models/base_response.dart';
import 'package:flutter_ntf_marketplace/services/models/create_wallet_model/create_wallet_model.dart';
import 'package:injectable/injectable.dart';

import 'remote_repository.dart';

@singleton
class RemoteProvider {
  const RemoteProvider({
    required RemoteRepository repo,
  }) : _repo = repo;
  final RemoteRepository _repo;

  Future<String> test() async {
    final response = await _repo.test();

    return response.data;
  }

  Future<String> verifyWallet({required String privateKey}) async {
    final response = await _repo.verifyWallet(privateKey: privateKey);
    return response.data["data"].first;
  }

  Future<CreateWalletModel> createWallet() async {
    final response = await _repo.createWallet();
    final data = BaseResponse<CreateWalletModel>.fromJson(
      response.data,
      (data) => CreateWalletModel.fromJson(data),
    );
    return data.result;
  }
}
