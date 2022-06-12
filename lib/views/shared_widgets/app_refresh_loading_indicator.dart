import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/color_config.dart';

class AppRefreshLoadingIndicator extends StatelessWidget {
  const AppRefreshLoadingIndicator({
    Key? key,
    required this.controller,
    required this.child,
  }) : super(key: key);
  final IndicatorController controller;
  static final _indicatorSize = 80.h;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget? _) {
            final containerHeight = controller.value * _indicatorSize;
            return Container(
              alignment: Alignment.center,
              height: containerHeight,
              child: OverflowBox(
                maxHeight: 40,
                minHeight: 40,
                maxWidth: 40,
                minWidth: 40,
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 150),
                  opacity: controller.value.clamp(0.5, 1.0),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: CircularProgressIndicator(
                      strokeWidth: 4,
                      color: AppColors.kColor5,
                      value: controller.isDragging || controller.isArmed
                          ? controller.value.clamp(0.0, 1.0)
                          : null,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        AnimatedBuilder(
          builder: (context, _) {
            return Transform.translate(
              offset: Offset(0.0, controller.value * _indicatorSize),
              child: child,
            );
          },
          animation: controller,
        ),
      ],
    );
  }
}
