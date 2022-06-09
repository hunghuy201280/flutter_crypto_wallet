import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/color_config.dart';
import '../../configs/text_config.dart';

class CustomDropDown<T> extends StatelessWidget {
  const CustomDropDown({
    Key? key,
    required this.selectedItem,
    required this.items,
    required this.onChanged,
    required this.getName,
  }) : super(key: key);
  final T selectedItem;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final String Function(T item) getName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      child: DropdownButtonFormField<T>(
        items: items
            .map(
              (e) => DropdownMenuItem<T>(
                child: Text(
                  getName(e),
                  style: TextConfigs.kCaption_9,
                ),
                value: e,
              ),
            )
            .toList(),
        value: selectedItem,
        dropdownColor: AppColors.kColor1,
        decoration: InputDecoration(
          isCollapsed: true,
          contentPadding: EdgeInsets.all(8.w),
        ).allBorder(
          const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.kColor2),
          ),
        ),
        icon: "dropdown".getIcon(
          color: AppColors.kColor9,
        ),
        isExpanded: false,
        isDense: true,
        onChanged: onChanged,
      ),
    );
  }
}
