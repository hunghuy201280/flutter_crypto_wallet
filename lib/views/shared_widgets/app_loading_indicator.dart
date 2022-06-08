import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

import '../../configs/color_config.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.square(
        dimension: 120.w,
        child: Material(
          color: AppColors.kColor1,
          borderRadius: BorderRadius.circular(20),
          child: Center(
            child: Stack(
              children: [
                Positioned.fill(
                  child: SpinKitFadingCircle(
                    itemBuilder: (context, index) {
                      return Center(
                        child: Container(
                          width: 4.w,
                          height: 4.w,
                          decoration: const BoxDecoration(
                            color: AppColors.kColor9,
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    },
                    size: 120.w,
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/icon_app.svg',
                      width: 48.w,
                      height: 48.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
