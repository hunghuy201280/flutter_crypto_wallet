import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/text_config.dart';

class NStepper extends StatelessWidget {
  const NStepper({Key? key, required this.currentStep}) : super(key: key);

  final int currentStep;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NStep(
          step: 1,
          isActive: currentStep >= 1,
        ),
        SizedBox.fromSize(
          child: Stack(
            children: [
              Container(
                color: AppColors.kColor2,
                height: 3.h,
                width: 112.w,
                margin: EdgeInsets.symmetric(horizontal: 8.w),
              ),
              AnimatedContainer(
                color: AppColors.kColor6,
                height: 3.h,
                width: currentStep == 1 ? 0 : 112.w,
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOutQuad,
              ),
            ],
          ),
          size: Size(112.w + 8.w + 8.w, 3.h),
        ),
        NStep(
          step: 2,
          isActive: currentStep >= 2,
        ),
      ],
    );
  }
}

class NStep extends StatelessWidget {
  const NStep({
    Key? key,
    required this.step,
    required this.isActive,
  }) : super(key: key);

  final int step;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: isActive ? AppColors.kColor6 : AppColors.kColor2,
        shape: BoxShape.circle,
      ),
      width: 24.w,
      height: 24.w,
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOutQuad,
      child: Text(
        step.toString(),
        style: TextConfigs.kCaption_9,
      ),
    );
  }
}
