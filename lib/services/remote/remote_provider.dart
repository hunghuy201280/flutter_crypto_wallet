import 'package:dio/dio.dart';
import 'package:flutter_crypto_wallet/services/dto//import_wallet_mnemonic_dto/import_wallet_mnemonic_dto.dart';
import 'package:flutter_crypto_wallet/services/dto/token_balance_dto/token_balance_dto.dart';
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

  Future<BaseDto<List<TokenBalanceDto>>> getBalanceTokensOfAddress(
      String address, List<Token> tokens) async {
    try {
      final response = await _repo.getBalanceTokensOfAddress(address, tokens);
      final data = BaseDto<List<TokenBalanceDto>>.fromJson(
        response.data,
        create: (data) =>
            (data as List).map((e) => TokenBalanceDto.fromJson(e)).toList(),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<Token>> getInfoOfToken(String tokenAddress) async {
    try {
      final response = await _repo.getInfoOfToken(tokenAddress);
      final data = BaseDto<Token>.fromJson(
        response.data,
        create: (data) => Token.fromJson(data),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<Token>> getWalletInfo(String walletToken) async {
    try {
      final response = await _repo.getWalletInfo(walletToken);
      final data = BaseDto<Token>.fromJson(
        response.data,
        create: (data) => Token.fromJson(data),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }
}
