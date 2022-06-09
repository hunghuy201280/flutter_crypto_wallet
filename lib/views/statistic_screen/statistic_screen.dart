import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/generated/l10n.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/views/statistic_screen/widgets/statistic_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../configs/color_config.dart';

class StatisticScreen extends StatelessWidget {
  static const id = "StatisticScreen";
  const StatisticScreen({Key? key}) : super(key: key);
  static StatisticScreen get instance {
    return const StatisticScreen();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const StatisticChart(
            previousData: [2, 5.5, 1.5, 2, 6.2, 5, 8],
            presentData: [2, 4, 1, 2, 8, 5, 6],
          ).toSliver,
        ],
        physics: const BouncingScrollPhysics(),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPinnedHeader(
              child: Material(
                color: AppColors.kColor1,
                child: Row(
                  children: [
                    24.horizontalSpace,
                    Text(
                      s.transactionHistory,
                      style: TextConfigs.kSubtitle_9,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: AppColors.kColor6,
                      ),
                      child: Text(
                        s.seeAll,
                        style: TextConfigs.kBody2_4,
                      ),
                    ),
                    24.horizontalSpace,
                  ],
                ),
              ),
            ),
            4.verticalSpace.toSliver,
            const TransactionHistory(),
          ],
        ),
      ),
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Transaction(
            index: index,
          );
        },
        childCount: 10,
      ),
    );
  }
}

class Transaction extends StatelessWidget {
  const Transaction({Key? key, required this.index}) : super(key: key);

  final int index;

  int get transactionType => index % 3;
  Color get color {
    switch (transactionType) {
      case 1:
        return AppColors.kColor6;
      case 2:
        return AppColors.kColor5;
      case 0:
      default:
        return AppColors.kColor3;
    }
  }

  String get icon {
    switch (transactionType) {
      case 1:
        return "withdraw";
      case 2:
        return "exchange";
      case 0:
      default:
        return "deposit";
    }
  }

  String get prefix {
    switch (transactionType) {
      case 1:
        return "To: ";
      case 2:
        return "Exchange: ";
      case 0:
      default:
        return "From: ";
    }
  }

  String get sign {
    switch (transactionType) {
      case 1:
        return "-";
      case 2:
        return "";
      case 0:
      default:
        return "+";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
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
                    "Coin name $index",
                    style: TextConfigs.kLabel_9,
                  ),
                  Text(
                    "$prefix ${"0x1161642e402d07D13B243d678d6d08f476c08c0e".shortFor()}",
                    style: TextConfigs.kCaption_9,
                  )
                ],
              ),
              const Spacer(),
              if (transactionType != 2)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "$sign$index ETH",
                      style: TextConfigs.kBody2_9,
                    ),
                    Text(
                      "$sign\$$index",
                      style: TextConfigs.kBody2_9,
                    ),
                  ],
                ),
              24.horizontalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
