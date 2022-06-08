// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `App Name`
  String get appName {
    return Intl.message(
      'App Name',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Easy way to manage your e-wallet`
  String get easyWayToManageYourEWallet {
    return Intl.message(
      'Easy way to manage your e-wallet',
      name: 'easyWayToManageYourEWallet',
      desc: '',
      args: [],
    );
  }

  /// `Manage your every penny and transaction with ease`
  String get manageYourEveryPennyAndTransactionWithEase {
    return Intl.message(
      'Manage your every penny and transaction with ease',
      name: 'manageYourEveryPennyAndTransactionWithEase',
      desc: '',
      args: [],
    );
  }

  /// `Enter to your wallet`
  String get enterToYourWallet {
    return Intl.message(
      'Enter to your wallet',
      name: 'enterToYourWallet',
      desc: '',
      args: [],
    );
  }

  /// `Import Wallet`
  String get importWallet {
    return Intl.message(
      'Import Wallet',
      name: 'importWallet',
      desc: '',
      args: [],
    );
  }

  /// `Create Wallet`
  String get createWallet {
    return Intl.message(
      'Create Wallet',
      name: 'createWallet',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Hide`
  String get hide {
    return Intl.message(
      'Hide',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Must be at least {num} characters`
  String mustBeAtLeastCharacters(int num) {
    return Intl.message(
      'Must be at least $num characters',
      name: 'mustBeAtLeastCharacters',
      desc: '',
      args: [num],
    );
  }

  /// `I understand that {appName} cannot recover this password for me.`
  String iUnderstandThatAppNameCannotRecoverThisPasswordForMe(String appName) {
    return Intl.message(
      'I understand that $appName cannot recover this password for me.',
      name: 'iUnderstandThatAppNameCannotRecoverThisPasswordForMe',
      desc: '',
      args: [appName],
    );
  }

  /// `Create password`
  String get createPassword {
    return Intl.message(
      'Create password',
      name: 'createPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don’t give this privatekey to anyone!`
  String get dontGiveThisPrivateKeyToAnyone {
    return Intl.message(
      'Don’t give this privatekey to anyone!',
      name: 'dontGiveThisPrivateKeyToAnyone',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get getStarted {
    return Intl.message(
      'Get started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Private key`
  String get privateKey {
    return Intl.message(
      'Private key',
      name: 'privateKey',
      desc: '',
      args: [],
    );
  }

  /// `Wallet added successfully`
  String get walletAddedSuccessfully {
    return Intl.message(
      'Wallet added successfully',
      name: 'walletAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `This password will unlock your wallet only on this device.`
  String get thisPasswordWillUnlockYourWalletOnlyOnThisDevice {
    return Intl.message(
      'This password will unlock your wallet only on this device.',
      name: 'thisPasswordWillUnlockYourWalletOnlyOnThisDevice',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Log In With Biometrics`
  String get logInWithBiometrics {
    return Intl.message(
      'Log In With Biometrics',
      name: 'logInWithBiometrics',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Deposit Crypto`
  String get depositCrypto {
    return Intl.message(
      'Deposit Crypto',
      name: 'depositCrypto',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw Crypto`
  String get withdrawCrypto {
    return Intl.message(
      'Withdraw Crypto',
      name: 'withdrawCrypto',
      desc: '',
      args: [],
    );
  }

  /// `Exchange Crypto`
  String get exchangeCrypto {
    return Intl.message(
      'Exchange Crypto',
      name: 'exchangeCrypto',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Import an Account`
  String get importAnAccount {
    return Intl.message(
      'Import an Account',
      name: 'importAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Biometrics ?`
  String get signInWithBiometrics {
    return Intl.message(
      'Sign in with Biometrics ?',
      name: 'signInWithBiometrics',
      desc: '',
      args: [],
    );
  }

  /// `TOKENS`
  String get tokens {
    return Intl.message(
      'TOKENS',
      name: 'tokens',
      desc: '',
      args: [],
    );
  }

  /// `NFTs`
  String get nfts {
    return Intl.message(
      'NFTs',
      name: 'nfts',
      desc: '',
      args: [],
    );
  }

  /// `Don't see your token?`
  String get dontSeeYourToken {
    return Intl.message(
      'Don\'t see your token?',
      name: 'dontSeeYourToken',
      desc: '',
      args: [],
    );
  }

  /// `Import tokens`
  String get importTokens {
    return Intl.message(
      'Import tokens',
      name: 'importTokens',
      desc: '',
      args: [],
    );
  }

  /// `Don't see your nft?`
  String get dontSeeYourNFT {
    return Intl.message(
      'Don\'t see your nft?',
      name: 'dontSeeYourNFT',
      desc: '',
      args: [],
    );
  }

  /// `Import nfts`
  String get importNFTs {
    return Intl.message(
      'Import nfts',
      name: 'importNFTs',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Currency conversion, language`
  String get generalDescription {
    return Intl.message(
      'Currency conversion, language',
      name: 'generalDescription',
      desc: '',
      args: [],
    );
  }

  /// `Currency Conversion`
  String get currencyConversion {
    return Intl.message(
      'Currency Conversion',
      name: 'currencyConversion',
      desc: '',
      args: [],
    );
  }

  /// `Current Language`
  String get currentLanguage {
    return Intl.message(
      'Current Language',
      name: 'currentLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Protect your wallet`
  String get protectYourWallet {
    return Intl.message(
      'Protect your wallet',
      name: 'protectYourWallet',
      desc: '',
      args: [],
    );
  }

  /// `Protect your wallet by saving your Secret Recovery Phrase in various places like on a piece of paper, password manager and/or the cloud`
  String get protectYourWalletDesription {
    return Intl.message(
      'Protect your wallet by saving your Secret Recovery Phrase in various places like on a piece of paper, password manager and/or the cloud',
      name: 'protectYourWalletDesription',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Secret Recovery Phrase`
  String get recoverySecretRecoveryPhrase {
    return Intl.message(
      'Recovery Secret Recovery Phrase',
      name: 'recoverySecretRecoveryPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Choose a strong password to unclock Metamask app on your device. If you lose this password, you will need your Secret Recovery Phrase to re-import your wallet.`
  String get passwordDescription {
    return Intl.message(
      'Choose a strong password to unclock Metamask app on your device. If you lose this password, you will need your Secret Recovery Phrase to re-import your wallet.',
      name: 'passwordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get changePassword {
    return Intl.message(
      'Change password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Security & Privacy`
  String get securityAndPrivacy {
    return Intl.message(
      'Security & Privacy',
      name: 'securityAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Privacy settings, private key and wallet Secret Recovery Phrase`
  String get securityAndPrivacyDescription {
    return Intl.message(
      'Privacy settings, private key and wallet Secret Recovery Phrase',
      name: 'securityAndPrivacyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Networks`
  String get networks {
    return Intl.message(
      'Networks',
      name: 'networks',
      desc: '',
      args: [],
    );
  }

  /// `Add and edit custom RPC networks`
  String get networksDescription {
    return Intl.message(
      'Add and edit custom RPC networks',
      name: 'networksDescription',
      desc: '',
      args: [],
    );
  }

  /// `Other Networks`
  String get otherNetworks {
    return Intl.message(
      'Other Networks',
      name: 'otherNetworks',
      desc: '',
      args: [],
    );
  }

  /// `Statistic`
  String get statistic {
    return Intl.message(
      'Statistic',
      name: 'statistic',
      desc: '',
      args: [],
    );
  }

  /// `Transaction History`
  String get transactionHistory {
    return Intl.message(
      'Transaction History',
      name: 'transactionHistory',
      desc: '',
      args: [],
    );
  }

  /// `This Week`
  String get thisWeek {
    return Intl.message(
      'This Week',
      name: 'thisWeek',
      desc: '',
      args: [],
    );
  }

  /// `This Month`
  String get thisMonth {
    return Intl.message(
      'This Month',
      name: 'thisMonth',
      desc: '',
      args: [],
    );
  }

  /// `This Year`
  String get thisYear {
    return Intl.message(
      'This Year',
      name: 'thisYear',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get seeAll {
    return Intl.message(
      'See all',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `About App Name`
  String get aboutAppName {
    return Intl.message(
      'About App Name',
      name: 'aboutAppName',
      desc: '',
      args: [],
    );
  }

  /// `Password not match`
  String get passwordNotMatch {
    return Intl.message(
      'Password not match',
      name: 'passwordNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Password is not empty`
  String get passwordIsNotEmpty {
    return Intl.message(
      'Password is not empty',
      name: 'passwordIsNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Secret Recovery Phrase`
  String get secretRecoveryPhrase {
    return Intl.message(
      'Secret Recovery Phrase',
      name: 'secretRecoveryPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese`
  String get vietnamese {
    return Intl.message(
      'Vietnamese',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `Please accept policy`
  String get pleaseAcceptPolicy {
    return Intl.message(
      'Please accept policy',
      name: 'pleaseAcceptPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Something happened wrong`
  String get somethingHappenedWrong {
    return Intl.message(
      'Something happened wrong',
      name: 'somethingHappenedWrong',
      desc: '',
      args: [],
    );
  }

  /// `Password does not meet the conditions, character string is greater than 8`
  String get passwordNotMeetCondition {
    return Intl.message(
      'Password does not meet the conditions, character string is greater than 8',
      name: 'passwordNotMeetCondition',
      desc: '',
      args: [],
    );
  }

  /// `Token Contract Address`
  String get tokenContractAddress {
    return Intl.message(
      'Token Contract Address',
      name: 'tokenContractAddress',
      desc: '',
      args: [],
    );
  }

  /// `Token Symbol`
  String get tokenSymbol {
    return Intl.message(
      'Token Symbol',
      name: 'tokenSymbol',
      desc: '',
      args: [],
    );
  }

  /// `Token of Precision`
  String get tokenOfPrecision {
    return Intl.message(
      'Token of Precision',
      name: 'tokenOfPrecision',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirmYourPassword {
    return Intl.message(
      'Confirm your password',
      name: 'confirmYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Before continuing we need you to confirm your password`
  String get changePasswordSentence1 {
    return Intl.message(
      'Before continuing we need you to confirm your password',
      name: 'changePasswordSentence1',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Wrong Password`
  String get wrongPassword {
    return Intl.message(
      'Wrong Password',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get passwordChangedSuccessfully {
    return Intl.message(
      'Password changed successfully',
      name: 'passwordChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `e.g. 570b05a4bcdbg97afdb8ae9cd1ad8cc55dfa7x1e5d25e4dse8b8c9379f5cgfe9`
  String get privateKeyHint {
    return Intl.message(
      'e.g. 570b05a4bcdbg97afdb8ae9cd1ad8cc55dfa7x1e5d25e4dse8b8c9379f5cgfe9',
      name: 'privateKeyHint',
      desc: '',
      args: [],
    );
  }

  /// `Invalid private key`
  String get invalidPrivateKey {
    return Intl.message(
      'Invalid private key',
      name: 'invalidPrivateKey',
      desc: '',
      args: [],
    );
  }

  /// `Imported accounts will not be associated with your originally created {appName} account Secret Recovery Phrase`
  String importAccountText1(String appName) {
    return Intl.message(
      'Imported accounts will not be associated with your originally created $appName account Secret Recovery Phrase',
      name: 'importAccountText1',
      desc: '',
      args: [appName],
    );
  }

  /// `Add Custom Token`
  String get addCustomToken {
    return Intl.message(
      'Add Custom Token',
      name: 'addCustomToken',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get withdraw {
    return Intl.message(
      'Withdraw',
      name: 'withdraw',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
