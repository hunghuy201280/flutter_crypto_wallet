import 'package:dio/dio.dart';
import 'package:flutter_crypto_wallet/models/collection/collection.dart';
import 'package:flutter_crypto_wallet/models/transaction/transaction.dart';
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

  Future<BaseDto<bool>> getValidWalletAddress(String walletAddress) async {
    try {
      final response = await _repo.getValidWalletAddress(walletAddress);
      final data = BaseDto<bool>.fromJson(
        response.data,
        create: (data) => data['isValid'],
      );

      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<Token>> getWalletInfo(String walletAddress) async {
    try {
      final response = await _repo.getWalletInfo(walletAddress);
      final data = BaseDto<Token>.fromJson(
        response.data,
        create: (data) => Token.fromJson(data),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<Transaction>> sendToken(String fromAddress, String toAddress,
      String tokenAddress, double value, String fromPrivateKey) async {
    try {
      final response = await _repo.sendToken(
          fromAddress, toAddress, tokenAddress, value, fromPrivateKey);
      final data = BaseDto<Transaction>.fromJson(
        response.data,
        create: (data) => Transaction.fromJson(data),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<Transaction>> sendBalance(String fromAddress, String toAddress,
      double value, String fromPrivateKey) async {
    try {
      final response = await _repo.sendBalance(
          fromAddress, toAddress, value, fromPrivateKey);
      final data = BaseDto<Transaction>.fromJson(
        response.data,
        create: (data) => Transaction.fromJson(data),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<List<Collection>>> getOwnerNft(
      String addressOwner, List<String> collections) async {
    try {
      final response = await _repo.getOwnerNft(addressOwner, collections);
      final data = BaseDto<List<Collection>>.fromJson(
        response.data,
        create: (data) =>
            (data as List).map((e) => Collection.fromJson(e)).toList(),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<bool>> getValidCollectionAddress(String walletAddress) async {
    try {
      final response = await _repo.getValidCollectionAddress(walletAddress);
      final data = BaseDto<bool>.fromJson(
        response.data,
        create: (data) => data['isValid'],
      );

      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<Collection>> getInfoOfCollection(String address) async {
    try {
      final response = await _repo.getInfoOfCollection(address);
      final data = BaseDto<Collection>.fromJson(
        response.data,
        create: (data) => Collection.fromJson(data),
      );

      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<List<Transaction>>> getTransactionHistory({
    required String address,
    required int page,
    required int pageSize,
  }) async {
    try {
      final response = await _repo.getTransactionHistory(
        address: address,
        pageSize: pageSize,
        page: page,
      );
      final data = BaseDto<List<Transaction>>.fromJson(
        response.data,
        create: (data) =>
            (data as List).map((e) => Transaction.fromJson(e)).toList(),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }

  Future<BaseDto<Wallet>> addAccount({
    required String mnemonic,
    required int walletNumber,
  }) async {
    try {
      final response = await _repo.addAccount(
        mnemonic: mnemonic,
        walletNumber: walletNumber,
      );
      final data = BaseDto<Wallet>.fromJson(
        response.data,
        create: (data) => Wallet.fromJson(data),
      );
      return data;
    } on DioError catch (e) {
      return BaseDto.fromJson(e.response?.data);
    }
  }
}
