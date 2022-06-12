class AppEndpoint {
  static const test = "/test";
  static const verifyWalletPrivateKey = "/wallet/verify_private";
  static const verifyWalletMnemonic = "/wallet/verify_mnemonic";
  static const createWallet = '/wallet/create';
  static String getBalanceTokensOfAddress(
          String address, List<String> tokens) =>
      '/token/?address=$address&tokenArray=${tokens.join(',')}';
  static String getInfoOfToken(String address) => '/token/$address';
  static String getValidWalletAddress(String address) =>
      '/wallet/valid/$address';
  static String getWalletInfo(String address) => '/wallet/info/$address';
  static String tokenSend = '/token/send';
  static String balanceSend = '/wallet/send';
  static String getTransactionHistory(String address) =>
      '/transaction/history?address=$address';
  static String transactionHistory = '/transaction/history';
  static String addAccount = '/wallet/add_account';
  static String collectionOwner = '/collection/owner';
  static String getValidCollectionAddress(String address) =>
      '/collection/valid/$address';
  static String getInfoOfCollection(String address) =>
      '/collection/info/$address';
}
