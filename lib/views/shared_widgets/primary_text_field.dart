import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextField extends StatefulWidget {
  const PrimaryTextField({
    Key? key,
    this.controller,
    required this.title,
    this.obscureText = false,
    this.hint,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.validator,
  }) : super(key: key);

  final TextEditingController? controller;
  final String title;
  final String? hint;
  final bool obscureText;
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;
  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  final defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.kColor9,
    ),
  );

  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextConfigs.kLabel_9,
              ),
              if (widget.obscureText)
                TextButton(
                  onPressed: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                  style: TextButton.styleFrom(
                    primary: AppColors.kColor6,
                  ),
                  child: Text(
                    isHidden ? s.show : s.hide,
                    style: TextConfigs.kLabel_9,
                  ),
                )
            ],
          ),
          if (!widget.obscureText) 8.verticalSpace,
          TextFormField(
            style: TextConfigs.kBody2_9,
            obscureText: isHidden,
            validator: widget.validator,
            decoration: InputDecoration(
              enabledBorder: defaultBorder,
              focusedBorder:
                  defaultBorder.withBorder(AppColors.kColor6, width: 2),
              isDense: true,
              isCollapsed: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
              hintStyle: TextConfigs.kBody2_2,
              hintText: widget.hint,
            ),
            cursorColor: AppColors.kColor6,
          ),
        ],
      ),
    );
  }
}
