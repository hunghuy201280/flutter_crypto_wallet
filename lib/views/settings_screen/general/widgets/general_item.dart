import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../general_item_dropdown.dart';

class GeneralItem<T> extends StatefulWidget {
  final String title;
  final String description;
  final List<GeneralItemDropdown<T>> items;
  final void Function(T value)? onSelected;
  GeneralItem({
    Key? key,
    required this.title,
    required this.description,
    required this.items,
    this.onSelected,
  }) : super(key: key);

  @override
  State<GeneralItem<T>> createState() => _GeneralItemState<T>();
}

class _GeneralItemState<T> extends State<GeneralItem<T>> {
  late T itemSelected = widget.items.first.value;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextConfigs.kLabel_9,
          ),
          2.verticalSpace,
          Text(
            widget.description,
            style: TextConfigs.kCaption_2,
          ),
          12.verticalSpace,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 13.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                border: Border.all(color: AppColors.kColor5)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                  borderRadius: BorderRadius.circular(10.w),
                  isDense: true,
                  dropdownColor: AppColors.kColor1,
                  isExpanded: true,
                  iconSize: 24.w,
                  icon: 'arrow_down_ios'.getIcon(),
                  value: itemSelected,
                  items: widget.items
                      .map(
                        (e) => DropdownMenuItem<T>(
                          child: Text(
                            e.title,
                            style: TextConfigs.kBody2_9,
                          ),
                          value: e.value,
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value != null) {
                        itemSelected = value;
                        if (widget.onSelected != null) {
                          widget.onSelected!(value);
                        }
                      }
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
