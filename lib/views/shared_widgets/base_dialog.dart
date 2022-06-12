import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class BaseDialog extends StatefulWidget {
  final Color? priamry;
  final String title;
  final String content;
  final String? positiveText;
  final String? negativeText;
  final VoidCallback? onPositive;
  final VoidCallback? onNegative;
  const BaseDialog({
    Key? key,
    required this.title,
    required this.content,
    this.positiveText,
    this.negativeText,
    this.onPositive,
    this.onNegative,
    this.priamry,
  }) : super(key: key);

  @override
  State<BaseDialog> createState() => _BaseDialogState();
}

class _BaseDialogState extends State<BaseDialog> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Material(
      color: Colors.transparent,
      child: Center(
        child: IntrinsicHeight(
          child: Container(
            constraints: BoxConstraints(maxWidth: 342.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              color: AppColors.kColor9,
            ),
            padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    'info_circle'
                        .getIcon(color: widget.priamry ?? AppColors.kColor1),
                    8.horizontalSpace,
                    Text(
                      widget.title,
                      style: TextConfigs.kLabel_1,
                    )
                  ],
                ),
                8.verticalSpace,
                Text(
                  widget.content,
                  style: TextConfigs.kBody2_1,
                ),
                26.verticalSpace,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (widget.negativeText != null ||
                        widget.onNegative != null)
                      Container(
                        constraints: BoxConstraints(minWidth: 80.w),
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              primary: widget.priamry ?? AppColors.kColor1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.w),
                              ),
                              side: BorderSide(
                                color: widget.priamry ?? AppColors.kColor1,
                              ),
                            ),
                            onPressed: () async {
                              widget.onNegative?.call();
                              await Future.delayed(
                                  const Duration(milliseconds: 200));
                              Navigator.of(context, rootNavigator: true)
                                  .pop(true);
                            },
                            child: Text(
                              widget.negativeText ?? s.cancel,
                              style: TextConfigs.kBody2_1.copyWith(
                                  color: widget.priamry ?? AppColors.kColor1),
                            )),
                      ),
                    24.horizontalSpace,
                    Container(
                      constraints: BoxConstraints(minWidth: 80.w),
                      child: TextButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            overlayColor: MaterialStateProperty.all(
                                AppColors.kColor9.withOpacity(0.2)),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                            backgroundColor: MaterialStateProperty.all(
                                widget.priamry ?? AppColors.kColor1),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.w),
                            )),
                          ),
                          onPressed: () async {
                            widget.onPositive?.call();
                            await Future.delayed(
                                const Duration(milliseconds: 200));
                            Navigator.of(context, rootNavigator: true)
                                .pop(true);
                          },
                          child: Text(
                            widget.positiveText ?? s.ok,
                            style: TextConfigs.kBody2_9,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
