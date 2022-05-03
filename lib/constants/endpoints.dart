class AppEndpoint {
  static const test = "/test";
  static const verifyWallet = "/wallet/verify";
  static const createWallet = '/wallet/create';
  static String getTokens(String address) => '/token/?address=$address';
}
