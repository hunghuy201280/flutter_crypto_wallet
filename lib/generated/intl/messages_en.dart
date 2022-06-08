// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(appName) =>
      "I understand that ${appName} cannot recover this password for me.";

  static String m1(appName) =>
      "Imported accounts will not be associated with your originally created ${appName} account Secret Recovery Phrase";

  static String m2(num) => "Must be at least ${num} characters";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("About"),
        "aboutAppName": MessageLookupByLibrary.simpleMessage("About App Name"),
        "addCustomToken":
            MessageLookupByLibrary.simpleMessage("Add Custom Token"),
        "appName": MessageLookupByLibrary.simpleMessage("App Name"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Change password"),
        "changePasswordSentence1": MessageLookupByLibrary.simpleMessage(
            "Before continuing we need you to confirm your password"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "confirmYourPassword":
            MessageLookupByLibrary.simpleMessage("Confirm your password"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("Create New Account"),
        "createPassword":
            MessageLookupByLibrary.simpleMessage("Create password"),
        "createWallet": MessageLookupByLibrary.simpleMessage("Create Wallet"),
        "currencyConversion":
            MessageLookupByLibrary.simpleMessage("Currency Conversion"),
        "currentLanguage":
            MessageLookupByLibrary.simpleMessage("Current Language"),
        "depositCrypto": MessageLookupByLibrary.simpleMessage("Deposit Crypto"),
        "dontGiveThisPrivateKeyToAnyone": MessageLookupByLibrary.simpleMessage(
            "Don’t give this privatekey to anyone!"),
        "dontSeeYourNFT":
            MessageLookupByLibrary.simpleMessage("Don\'t see your nft?"),
        "dontSeeYourToken":
            MessageLookupByLibrary.simpleMessage("Don\'t see your token?"),
        "easyWayToManageYourEWallet": MessageLookupByLibrary.simpleMessage(
            "Easy way to manage your e-wallet"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "enterToYourWallet":
            MessageLookupByLibrary.simpleMessage("Enter to your wallet"),
        "exchangeCrypto":
            MessageLookupByLibrary.simpleMessage("Exchange Crypto"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "generalDescription": MessageLookupByLibrary.simpleMessage(
            "Currency conversion, language"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Get started"),
        "hide": MessageLookupByLibrary.simpleMessage("Hide"),
        "iUnderstandThatAppNameCannotRecoverThisPasswordForMe": m0,
        "importAccountText1": m1,
        "importAnAccount":
            MessageLookupByLibrary.simpleMessage("Import an Account"),
        "importNFTs": MessageLookupByLibrary.simpleMessage("Import nfts"),
        "importTokens": MessageLookupByLibrary.simpleMessage("Import tokens"),
        "importWallet": MessageLookupByLibrary.simpleMessage("Import Wallet"),
        "invalidPrivateKey":
            MessageLookupByLibrary.simpleMessage("Invalid private key"),
        "logInWithBiometrics":
            MessageLookupByLibrary.simpleMessage("Log In With Biometrics"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "manageYourEveryPennyAndTransactionWithEase":
            MessageLookupByLibrary.simpleMessage(
                "Manage your every penny and transaction with ease"),
        "mustBeAtLeastCharacters": m2,
        "networks": MessageLookupByLibrary.simpleMessage("Networks"),
        "networksDescription": MessageLookupByLibrary.simpleMessage(
            "Add and edit custom RPC networks"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
        "nfts": MessageLookupByLibrary.simpleMessage("NFTs"),
        "otherNetworks": MessageLookupByLibrary.simpleMessage("Other Networks"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Password changed successfully"),
        "passwordDescription": MessageLookupByLibrary.simpleMessage(
            "Choose a strong password to unclock Metamask app on your device. If you lose this password, you will need your Secret Recovery Phrase to re-import your wallet."),
        "passwordIsNotEmpty":
            MessageLookupByLibrary.simpleMessage("Password is not empty"),
        "passwordNotMatch":
            MessageLookupByLibrary.simpleMessage("Password not match"),
        "passwordNotMeetCondition": MessageLookupByLibrary.simpleMessage(
            "Password does not meet the conditions, character string is greater than 8"),
        "pleaseAcceptPolicy":
            MessageLookupByLibrary.simpleMessage("Please accept policy"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Private key"),
        "privateKeyHint": MessageLookupByLibrary.simpleMessage(
            "e.g. 570b05a4bcdbg97afdb8ae9cd1ad8cc55dfa7x1e5d25e4dse8b8c9379f5cgfe9"),
        "protectYourWallet":
            MessageLookupByLibrary.simpleMessage("Protect your wallet"),
        "protectYourWalletDesription": MessageLookupByLibrary.simpleMessage(
            "Protect your wallet by saving your Secret Recovery Phrase in various places like on a piece of paper, password manager and/or the cloud"),
        "recoverySecretRecoveryPhrase": MessageLookupByLibrary.simpleMessage(
            "Recovery Secret Recovery Phrase"),
        "secretRecoveryPhrase":
            MessageLookupByLibrary.simpleMessage("Secret Recovery Phrase"),
        "securityAndPrivacy":
            MessageLookupByLibrary.simpleMessage("Security & Privacy"),
        "securityAndPrivacyDescription": MessageLookupByLibrary.simpleMessage(
            "Privacy settings, private key and wallet Secret Recovery Phrase"),
        "seeAll": MessageLookupByLibrary.simpleMessage("See all"),
        "show": MessageLookupByLibrary.simpleMessage("Show"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign In"),
        "signInWithBiometrics":
            MessageLookupByLibrary.simpleMessage("Sign in with Biometrics ?"),
        "somethingHappenedWrong":
            MessageLookupByLibrary.simpleMessage("Something happened wrong"),
        "statistic": MessageLookupByLibrary.simpleMessage("Statistic"),
        "thisMonth": MessageLookupByLibrary.simpleMessage("This Month"),
        "thisPasswordWillUnlockYourWalletOnlyOnThisDevice":
            MessageLookupByLibrary.simpleMessage(
                "This password will unlock your wallet only on this device."),
        "thisWeek": MessageLookupByLibrary.simpleMessage("This Week"),
        "thisYear": MessageLookupByLibrary.simpleMessage("This Year"),
        "tokenContractAddress":
            MessageLookupByLibrary.simpleMessage("Token Contract Address"),
        "tokenOfPrecision":
            MessageLookupByLibrary.simpleMessage("Token of Precision"),
        "tokenSymbol": MessageLookupByLibrary.simpleMessage("Token Symbol"),
        "tokens": MessageLookupByLibrary.simpleMessage("TOKENS"),
        "transactionHistory":
            MessageLookupByLibrary.simpleMessage("Transaction History"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamese"),
        "walletAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Wallet added successfully"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome Back!"),
        "withdraw": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "withdrawCrypto":
            MessageLookupByLibrary.simpleMessage("Withdraw Crypto"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("Wrong Password")
      };
}
