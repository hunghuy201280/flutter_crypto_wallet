import 'dart:async';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/generated/l10n.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/statistic_bloc/statistic_bloc.dart';
import 'package:flutter_crypto_wallet/views/statistic_screen/widgets/transaction_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../configs/color_config.dart';
import '../../utils/helpers/status.dart';
import '../shared_widgets/app_refresh_loading_indicator.dart';

class StatisticScreen extends StatefulWidget {
  static const id = "StatisticScreen";

  const StatisticScreen({Key? key}) : super(key: key);

  static StatisticScreen get instance {
    return const StatisticScreen();
  }

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  Completer? refreshCompleter;

  late StatisticBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<StatisticBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<StatisticBloc, StatisticState>(
      listener: (_, state) {
        final status = state.status;
        if (status is Success) {
          refreshCompleter?.complete();
        }
      },
      child: Scaffold(
          backgroundColor: AppColors.kColor1,
          body: CustomRefreshIndicator(
            builder: (context, child, controller) {
              return AppRefreshLoadingIndicator(
                controller: controller,
                child: child,
              );
            },
            onRefresh: () {
              refreshCompleter = Completer();
              bloc.add(const StatisticEvent.loaded());
              return refreshCompleter!.future;
            },
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                Utils.onScrollNotification(notification, () {
                  bloc.add(const StatisticEvent.moreLoaded());
                });
                return false;
              },
              child: CustomScrollView(
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
                  BlocSelector<StatisticBloc, StatisticState, Status>(
                    selector: (state) => state.status,
                    builder: (context, status) {
                      if (status is! MoreLoading) {
                        return Utils.empty.toSliver;
                      }
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 32.h,
                        ),
                        child: const Center(
                          child: SpinKitDancingSquare(
                            color: AppColors.kColor6,
                          ),
                        ),
                      ).toSliver;
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticBloc, StatisticState>(
      builder: (context, state) {
        if (state.status is Loading) {
          return Padding(
            padding: EdgeInsets.only(
              top: 48.h,
            ),
            child: const Center(
              child: SpinKitDancingSquare(
                color: AppColors.kColor6,
              ),
            ),
          ).toSliver;
        }

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return TransactionItem(
                transaction: state.transactions[index],
              );
            },
            childCount: state.transactions.length,
          ),
        );
      },
    );
  }
}
