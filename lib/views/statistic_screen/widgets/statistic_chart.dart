import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/views/statistic_screen/widgets/statistic_unit_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/color_config.dart';
import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';

class StatisticChart extends StatelessWidget {
  const StatisticChart(
      {Key? key, required this.previousData, required this.presentData})
      : super(key: key);

  final List<double> previousData;
  final List<double> presentData;
  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: AppColors.kColor3,
          getTooltipItems: (spots) {
            return spots
                .map(
                  (e) => LineTooltipItem("\$ ${e.y}", TextConfigs.kCaption_9),
                )
                .toList();
          },
        ),
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    late String text;
    final intVal = value.floor();
    switch (intVal) {
      case 1:
        text = "Mon";
        break;
      case 2:
        text = "Tue";

        break;
      case 3:
        text = "Wed";

        break;
      case 4:
        text = "Thu";

        break;
      case 5:
        text = "Fri";

        break;
      case 6:
        text = "Sat";

        break;
      case 7:
        text = "Sun";
        break;
      default:
        text = "";
        break;
    }

    return Text(
      text,
      style: TextConfigs.kCaption_9,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 30.w,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                s.statistic,
                style: TextConfigs.kSubtitle_9,
              ),
              const StatisticUnitDropdown(),
            ],
          ),
          16.verticalSpace,
          Container(
            height: 200.w,
            decoration: BoxDecoration(
              color: AppColors.kColor2,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                borderData: FlBorderData(
                  show: false,
                ),
                lineTouchData: lineTouchData1,
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: bottomTitles,
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                clipData: FlClipData.all(),
                lineBarsData: [
                  _getLineData(
                    presentData,
                  ),
                  _getLineData(
                    previousData,
                    AppColors.kColor4.withOpacity(0.2),
                  ),
                ],
                maxX: 7,
                minX: 1,
                maxY: 10,
                minY: 0,
              ),
            ),
          ),
          24.verticalSpace,
        ],
      ),
    );
  }

  LineChartBarData _getLineData(List<double> data,
      [Color color = AppColors.kColor4]) {
    return LineChartBarData(
      isCurved: true,
      color: color,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      spots: [
        for (int i = 0; i < data.length; i++) FlSpot(i + 1, data[i]),
      ],
    );
  }
}
