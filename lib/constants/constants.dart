import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 100,
    lineLength: 50,
    colors: true,
    printEmojis: true,
    printTime: true,
  ),
);

const kUniLinkScheme = "cryptowallet";
const kActionWithdraw = "withdraw";

const kJazziconSize = 150.0;

const kLazyLoadingPageSize = 15;
const kLazyLoadScrollOffset = 200;
