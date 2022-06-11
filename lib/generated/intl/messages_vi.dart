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

  static String m1(appName) =>
      "Các tài khoản được thêm vào sẽ không được liên kết với cụm từ bí mật đã được tạo khi bạn dùng ứng dụng này.";

  static String m2(num) => "Phải chứa ít nhất ${num} kí tự";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("Thông tin"),
        "aboutAppName":
            MessageLookupByLibrary.simpleMessage("Thông tin về App Name"),
        "addCustomToken": MessageLookupByLibrary.simpleMessage("Thêm Token"),
        "address": MessageLookupByLibrary.simpleMessage("Địa chỉ"),
        "alert": MessageLookupByLibrary.simpleMessage("Thông báo"),
        "appName": MessageLookupByLibrary.simpleMessage("App Name"),
        "cancel": MessageLookupByLibrary.simpleMessage("Huỷ"),
        "changePassword": MessageLookupByLibrary.simpleMessage("Đổi mật khẩu"),
        "changePasswordSentence1": MessageLookupByLibrary.simpleMessage(
            "Hãy xác nhận mật khẩu hiện tại của bạn để tiếp tục"),
        "confirm": MessageLookupByLibrary.simpleMessage("Xác nhận"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Xác nhận mật khẩu"),
        "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
            "Xác nhận mật khẩu hiện tại của bạn"),
        "copied": MessageLookupByLibrary.simpleMessage("Đã sao chép"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("Tạo tài khoản mới"),
        "createPassword": MessageLookupByLibrary.simpleMessage("Tạo mật khẩu"),
        "createWallet": MessageLookupByLibrary.simpleMessage("Tạo ví"),
        "currencyConversion":
            MessageLookupByLibrary.simpleMessage("Chuyển đổi tiền tệ"),
        "currentLanguage":
            MessageLookupByLibrary.simpleMessage("Ngôn ngữ mặc định"),
        "depositCrypto": MessageLookupByLibrary.simpleMessage("Nạp tiền"),
        "dontGiveThisPrivateKeyToAnyone": MessageLookupByLibrary.simpleMessage(
            "Không tiết lộ private key này cho bất cứ ai!"),
        "dontSeeYourNFT":
            MessageLookupByLibrary.simpleMessage("Không thấy nft của bạn?"),
        "dontSeeYourToken":
            MessageLookupByLibrary.simpleMessage("Không thấy token của bạn?"),
        "duplicateAccount": MessageLookupByLibrary.simpleMessage(
            "Tài khoản này đã được thêm trước đó"),
        "easyWayToManageYourEWallet": MessageLookupByLibrary.simpleMessage(
            "Dễ dàng để quản lý ví điện tử của bạn"),
        "english": MessageLookupByLibrary.simpleMessage("Tiếng Anh"),
        "enterToYourWallet":
            MessageLookupByLibrary.simpleMessage("Truy cập vào ví"),
        "error": MessageLookupByLibrary.simpleMessage("Lỗi"),
        "exchangeCrypto":
            MessageLookupByLibrary.simpleMessage("Chuyển đổi tiền"),
        "general": MessageLookupByLibrary.simpleMessage("Chung"),
        "generalDescription": MessageLookupByLibrary.simpleMessage(
            "Chuyển đổi tiền tệ, ngôn ngữ"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Bắt đầu"),
        "hide": MessageLookupByLibrary.simpleMessage("Ẩn"),
        "iUnderstandThatAppNameCannotRecoverThisPasswordForMe": m0,
        "importAccountText1": m1,
        "importAnAccount":
            MessageLookupByLibrary.simpleMessage("Thêm tài khoản"),
        "importNFTs": MessageLookupByLibrary.simpleMessage("Thêm nfts"),
        "importTokens": MessageLookupByLibrary.simpleMessage("Thêm tokens"),
        "importWallet": MessageLookupByLibrary.simpleMessage("Nhập ví"),
        "invalidPrivateKey":
            MessageLookupByLibrary.simpleMessage("Private key không hợp lệ"),
        "logInWithBiometrics":
            MessageLookupByLibrary.simpleMessage("Đăng nhập bằng vân tay"),
        "logout": MessageLookupByLibrary.simpleMessage("Đăng xuất"),
        "manageYourEveryPennyAndTransactionWithEase":
            MessageLookupByLibrary.simpleMessage(
                "Quản lý từng xu và giao dịch của bạn một cách dễ dàng"),
        "max": MessageLookupByLibrary.simpleMessage("Tối đa"),
        "mustBeAtLeastCharacters": m2,
        "networks": MessageLookupByLibrary.simpleMessage("Mạng lưới"),
        "networksDescription": MessageLookupByLibrary.simpleMessage(
            "Thêm và chỉnh sửa mạng RPC tùy chỉnh"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Mật khẩu mới"),
        "nfts": MessageLookupByLibrary.simpleMessage("NFTs"),
        "offline": MessageLookupByLibrary.simpleMessage(
            "Bạn đang không kết nối internet"),
        "ok": MessageLookupByLibrary.simpleMessage("Đồng ý"),
        "or": MessageLookupByLibrary.simpleMessage("Hoặc"),
        "otherNetworks": MessageLookupByLibrary.simpleMessage("Mạng khác"),
        "password": MessageLookupByLibrary.simpleMessage("Mật khẩu"),
        "passwordChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Mật khẩu đã được thay đổi"),
        "passwordDescription": MessageLookupByLibrary.simpleMessage(
            "Chọn một mật khẩu mạnh để mở khóa ứng dụng Metamask trên thiết bị của bạn. Nếu bạn mất mật khẩu này, bạn sẽ cần Cụm từ khôi phục bí mật để nhập lại ví của mình."),
        "passwordIsNotEmpty":
            MessageLookupByLibrary.simpleMessage("Mật khẩu không được trống"),
        "passwordNotMatch":
            MessageLookupByLibrary.simpleMessage("Mật khẩu không khớp"),
        "passwordNotMeetCondition": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu không thoả điều kiện, chuỗi ký tự lớn hơn 8"),
        "pleaseAcceptPolicy": MessageLookupByLibrary.simpleMessage(
            "Vui lòng chấp nhận chính sách"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Private key"),
        "privateKeyHint": MessageLookupByLibrary.simpleMessage(
            "Ví dụ 570b05a4bcdbg97afdb8ae9cd1ad8cc55dfa7x1e5d25e4dse8b8c9379f5cgfe9"),
        "protectYourWallet":
            MessageLookupByLibrary.simpleMessage("Protect your wallet"),
        "protectYourWalletDesription": MessageLookupByLibrary.simpleMessage(
            "Bảo vệ ví của bạn bằng cách lưu Cụm từ khôi phục bí mật của bạn ở nhiều nơi khác nhau như trên một mảnh giấy, trình quản lý mật khẩu và / hoặc đám mây"),
        "receive": MessageLookupByLibrary.simpleMessage("Nhận"),
        "recoverySecretRecoveryPhrase": MessageLookupByLibrary.simpleMessage(
            "Khôi phục cụm từ khôi phục bí mật"),
        "scanAddressTo": MessageLookupByLibrary.simpleMessage(
            "Quét mã QR để nhận thanh toán"),
        "secretRecoveryPhrase":
            MessageLookupByLibrary.simpleMessage("Cụm từ khôi phục bí mật"),
        "securityAndPrivacy":
            MessageLookupByLibrary.simpleMessage("Chính sách và bảo mật"),
        "securityAndPrivacyDescription": MessageLookupByLibrary.simpleMessage(
            "Cài đặt quyền riêng tư, khóa cá nhân và ví cụm từ khôi phục bí mật"),
        "seeAll": MessageLookupByLibrary.simpleMessage("Xem tất cả"),
        "send": MessageLookupByLibrary.simpleMessage("Gửi"),
        "show": MessageLookupByLibrary.simpleMessage("Hiện"),
        "signIn": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "signInWithBiometrics": MessageLookupByLibrary.simpleMessage(
            "Muốn đăng nhập bằng vân tay ?"),
        "somethingHappenedWrong":
            MessageLookupByLibrary.simpleMessage("Có điều gì đó đã xảy ra sai"),
        "statistic": MessageLookupByLibrary.simpleMessage("Thống kê"),
        "thisMonth": MessageLookupByLibrary.simpleMessage("Tháng này"),
        "thisPasswordWillUnlockYourWalletOnlyOnThisDevice":
            MessageLookupByLibrary.simpleMessage(
                "Mật khẩu này chỉ mở khóa ví của bạn trên thiết bị này."),
        "thisWeek": MessageLookupByLibrary.simpleMessage("Tuần này"),
        "thisYear": MessageLookupByLibrary.simpleMessage("Năm này"),
        "tokenContractAddress":
            MessageLookupByLibrary.simpleMessage("Địa Chỉ Token"),
        "tokenOfPrecision":
            MessageLookupByLibrary.simpleMessage("Số thập phân"),
        "tokenSymbol": MessageLookupByLibrary.simpleMessage("Biểu tượng Token"),
        "tokens": MessageLookupByLibrary.simpleMessage("TOKENS"),
        "transactionHistory":
            MessageLookupByLibrary.simpleMessage("Lịch sử giao dịch"),
        "unableToConnectToTheBlockchainHost":
            MessageLookupByLibrary.simpleMessage(
                "Không thể kết nối đến máy chủ phân tán Blockchain"),
        "vietnamese": MessageLookupByLibrary.simpleMessage("Tiếng Việt"),
        "walletAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Thêm ví thành công"),
        "welcomeBack":
            MessageLookupByLibrary.simpleMessage("Chào mừng trở lại!"),
        "withdraw": MessageLookupByLibrary.simpleMessage("Rút tiền"),
        "withdrawCrypto": MessageLookupByLibrary.simpleMessage("Rút tiền"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("Sai mật khẩu")
      };
}
