class AppEndpoint {
  static const test = "/test";
  static const verifyWalletPrivateKey = "/wallet/verify_private";
  static const verifyWalletMnemonic = "/wallet/verify_mnemonic";
  static const createWallet = '/wallet/create';
  static String getTokens(String address) => '/token/?address=$address';
  static String getInfoOfToken(String address) => '/token/$address';
}
