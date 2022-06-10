import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/generated/l10n.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextField extends StatefulWidget {
  const PrimaryTextField({
    Key? key,
    this.controller,
    this.title,
    this.obscureText = false,
    this.hint,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.validator,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.done,
    this.maxLines,
    this.suffixIcon,
    this.onChanged,
    this.focusNode,
    this.enable,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? title;
  final String? hint;
  final bool obscureText;
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;
  final int? maxLines;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final bool? enable;
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
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if (mounted) {
        setState(() {
          isHidden = widget.obscureText;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Column(
      children: [
        if (widget.title != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
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
          enabled: widget.enable,
          controller: widget.controller,
          focusNode: widget.focusNode,
          style: TextConfigs.kBody2_9,
          obscureText: isHidden,
          validator: widget.validator,
          maxLines: widget.maxLines ?? 1,
          textInputAction: widget.inputAction,
          onChanged: widget.onChanged,
          keyboardType: widget.maxLines == null
              ? widget.inputType
              : TextInputType.multiline,
          decoration: InputDecoration(
            enabledBorder: defaultBorder,
            focusedBorder:
                defaultBorder.withBorder(AppColors.kColor6, width: 2),
            isDense: true,
            isCollapsed: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            hintStyle: TextConfigs.kBody2_2,
            hintText: widget.hint,
            suffixIcon: widget.suffixIcon,
            suffixIconConstraints: const BoxConstraints.tightFor(),
          ),
          cursorColor: AppColors.kColor6,
        ),
      ],
    );
  }
}
