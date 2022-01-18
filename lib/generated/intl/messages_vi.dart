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

  static String m0(count, thing) =>
      "{count,plural, =0{Không có ${thing}} other{${count} ${thing}}";

  static String m1(today, tomorrow) =>
      "Hôm nay là ${today}, ngày mai là ${tomorrow}";

  static String m2(username, number) =>
      "Số mà ${username} đã nhập là: ${number}";

  static String m3(userName) => "Tên của bạn là ${userName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "changeLanguage": MessageLookupByLibrary.simpleMessage("Đổi ngôn ngữ"),
        "chicken": MessageLookupByLibrary.simpleMessage("con gà"),
        "enterAnyNumberHere":
            MessageLookupByLibrary.simpleMessage("Nhập một số bất kì"),
        "enterYourNameHere":
            MessageLookupByLibrary.simpleMessage("Nhập tên của bạn"),
        "helloWorld":
            MessageLookupByLibrary.simpleMessage("Xin chào thế giới!"),
        "nThings": m0,
        "notificationScreen":
            MessageLookupByLibrary.simpleMessage("Màn hình thông báo"),
        "todayTomorrow": m1,
        "userNumberIs": m2,
        "yourNameIs": m3
      };
}
