import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/color_config.dart';
import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../../models/transaction/transaction.dart';
import '../../../utils/enums.dart';
import '../../webview/webview_screen.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key? key, required this.transaction})
      : super(key: key);

  final Transaction transaction;

  Color get color {
    switch (transaction.type) {
      case TransactionType.deposit:
        return AppColors.kColor6;
      case TransactionType.swap:
        return AppColors.kColor5;
      case TransactionType.withdraw:
        return AppColors.kColor3;
      default:
        return AppColors.kColor3;
    }
  }

  String get icon {
    switch (transaction.type) {
      case TransactionType.deposit:
        return "deposit";
      case TransactionType.swap:
        return "exchange";
      case TransactionType.withdraw:
        return "withdraw";
      default:
        return "withdraw";
    }
  }

  String getSubtitle(S s) {
    switch (transaction.type) {
      case TransactionType.deposit:
        return "${s.from}: ${transaction.from.shortFor()}";
      case TransactionType.swap:
        return "${s.exchange}: ";
      case TransactionType.withdraw:
        return "${s.to}: ${transaction.to!.shortFor()}";
      default:
        return "withdraw";
    }
  }

  String get sign {
    switch (transaction.type) {
      case TransactionType.deposit:
        return "+";
      case TransactionType.swap:
        return "";
      case TransactionType.withdraw:
        return "-";
      default:
        return "withdraw";
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context, rootNavigator: true).pushNamed(
            WebViewScreen.id,
            arguments: {
              "url": "https://testnet.bscscan.com/tx/${transaction.hash}",
              "title": s.transactionDetail,
            },
          );
        },
        child: Padding(
          padding: EdgeInsets.only(top: 12.w, bottom: 12.w),
          child: Row(
            children: [
              24.horizontalSpace,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: color.withOpacity(0.65),
                ),
                width: 48.w,
                height: 48.w,
                child: Center(
                  child: icon.getIcon(
                    color: color,
                    width: 16.w,
                    height: 16.w,
                  ),
                ),
              ),
              16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.hash.shortFor(shortForLength: 27),
                    style: TextConfigs.kLabel_9,
                  ),
                  Text(
                    getSubtitle(s),
                    style: TextConfigs.kCaption_9,
                  )
                ],
              ),
              const Spacer(),
              // if (transactionType != 2)
              //   Column(
              //     crossAxisAlignment: CrossAxisAlignment.end,
              //     children: [
              //       Text(
              //         "$sign$index ETH",
              //         style: TextConfigs.kBody2_9,
              //       ),
              //       Text(
              //         "$sign\$$index",
              //         style: TextConfigs.kBody2_9,
              //       ),
              //     ],
              //   ),
              24.horizontalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
