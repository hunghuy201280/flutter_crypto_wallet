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
}
