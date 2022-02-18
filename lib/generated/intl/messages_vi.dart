// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static String m0(appName) =>
      "Tôi hiểu rằng ${appName} không thể khôi phục mật khẩu này cho tôi.";

  static String m1(num) => "Phải chứa ít nhất ${num} kí tự";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("App Name"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Xác nhận mật khẩu"),
        "createPassword": MessageLookupByLibrary.simpleMessage("Tạo mật khẩu"),
        "createWallet": MessageLookupByLibrary.simpleMessage("Tạo ví"),
        "dontGiveThisPrivateKeyToAnyone": MessageLookupByLibrary.simpleMessage(
            "Không tiết lộ private key này cho bất cứ ai!"),
        "easyWayToManageYourEWallet": MessageLookupByLibrary.simpleMessage(
            "Dễ dàng để quản lý ví điện tử của bạn"),
        "enterToYourWallet":
            MessageLookupByLibrary.simpleMessage("Truy cập vào ví"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Bắt đầu"),
        "hide": MessageLookupByLibrary.simpleMessage("Ẩn"),
        "iUnderstandThatAppNameCannotRecoverThisPasswordForMe": m0,
        "importWallet": MessageLookupByLibrary.simpleMessage("Nhập ví"),
        "manageYourEveryPennyAndTransactionWithEase":
            MessageLookupByLibrary.simpleMessage(
                "Quản lý từng xu và giao dịch của bạn một cách dễ dàng"),
        "mustBeAtLeastCharacters": m1,
        "newPassword": MessageLookupByLibrary.simpleMessage("Mật khẩu mới"),
        "password": MessageLookupByLibrary.simpleMessage("Mật khẩu"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Private key"),
        "show": MessageLookupByLibrary.simpleMessage("Hiện"),
        "thisPasswordWillUnlockYourWalletOnlyOnThisDevice":
            MessageLookupByLibrary.simpleMessage(
                "Mật khẩu này chỉ mở khóa ví của bạn trên thiết bị này."),
        "walletAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Thêm ví thành công")
      };
}
