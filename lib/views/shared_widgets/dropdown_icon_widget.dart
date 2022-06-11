import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/color_config.dart';
import '../../configs/text_config.dart';

class DropdownIconMenuItem<T> {
  final String title;
  final T value;
  final Image image;
  DropdownIconMenuItem(
      {required this.title, required this.value, required this.image});
}

class DropdownIconWidget<T> extends StatefulWidget {
  final T? itemSelected;
  final List<DropdownIconMenuItem<T>> items;
  final void Function(T value)? onSelected;
  const DropdownIconWidget(
      {Key? key, required this.items, this.onSelected, this.itemSelected})
      : super(key: key);

  @override
  State<DropdownIconWidget<T>> createState() => _DropdownIconWidgetState<T>();
}

class _DropdownIconWidgetState<T> extends State<DropdownIconWidget<T>> {
  late T? itemSelected;
  @override
  void initState() {
    itemSelected = widget.itemSelected ??
        (widget.items.isEmpty ? null : widget.items.first.value);
    widget.onSelected?.call(itemSelected!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
            borderRadius: BorderRadius.circular(10.w),
            isDense: true,
            dropdownColor: AppColors.kColor1,
            isExpanded: false,
            iconSize: 24.w,
            icon: 'arrow_down_ios'.getIcon(),
            value: itemSelected,
            items: widget.items
                .map(
                  (e) => DropdownMenuItem<T>(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      PrimaryAvatar(
                        size: 28.w,
                        image: e.image.image,
                      ),
                      14.horizontalSpace,
                      Text(
                        e.title,
                        style: TextConfigs.kBody2_9,
                      ),
                      14.horizontalSpace,
                    ]),
                    value: e.value,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  itemSelected = value;
                  widget.onSelected?.call(value);
                }
              });
            }),
      ),
    );
  }
}
