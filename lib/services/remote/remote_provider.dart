import 'package:dio/dio.dart';
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

  Future<BaseDto<Wallet>> verifyWalletPrivateKey(
      {required String privateKey}) async {
    try {
      final response =
          await _repo.verifyWalletPrivateKey(privateKey: privateKey);
      final data = BaseDto<Wallet>.fromJson(response.data,
          create: (data) => Wallet.fromJson(data));
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<ImportWalletMnemonicDto>> verifyWalletMnemonic(
      {required String mnemonic}) async {
    try {
      final response = await _repo.verifyWalletMnemonic(mnemonic: mnemonic);
      final data = BaseDto<ImportWalletMnemonicDto>.fromJson(response.data,
          create: (data) => ImportWalletMnemonicDto.fromJson(data));
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<CreateWalletDto>> createWallet() async {
    try {
      final response = await _repo.createWallet();
      final data = BaseDto<CreateWalletDto>.fromJson(
        response.data,
        create: (data) => CreateWalletDto.fromJson(data),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<List<Token>>> getTokens(String address) async {
    try {
      final response = await _repo.getTokens(address);
      final data = BaseDto<List<Token>>.fromJson(
        response.data,
        create: (data) => (data as List).map((e) => Token.fromJson(e)).toList(),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }
}
