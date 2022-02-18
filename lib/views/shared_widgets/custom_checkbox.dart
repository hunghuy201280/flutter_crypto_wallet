library custom_check_box;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCheckBox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color checkedFillColor;
  final Widget checkedIcon;
  final Color uncheckedIconColor;
  final Color uncheckedFillColor;
  final Widget uncheckedIcon;
  final double? borderWidth;
  final double checkBoxSize;
  final bool shouldShowBorder;
  final Color? borderColor;
  final double? borderRadius;
  final BoxShape shape;
  const CustomCheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.checkedFillColor = Colors.teal,
    this.checkedIcon = const Icon(
      Icons.check,
      size: 20,
      color: Colors.white,
    ),
    this.uncheckedIconColor = Colors.white,
    this.uncheckedFillColor = Colors.white,
    this.uncheckedIcon = const SizedBox.shrink(),
    this.borderWidth,
    this.checkBoxSize = 24,
    this.shouldShowBorder = false,
    this.borderColor,
    this.borderRadius,
    this.shape = BoxShape.rectangle,
  }) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool _checked;
  late CheckStatus _status;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didUpdateWidget(CustomCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _init();
  }

  void _init() {
    _checked = widget.value;
    if (_checked) {
      _status = CheckStatus.checked;
    } else {
      _status = CheckStatus.unchecked;
    }
  }

  Widget _buildIcon() {
    late Color fillColor;
    late Widget icon;

    switch (_status) {
      case CheckStatus.checked:
        fillColor = widget.checkedFillColor;
        icon = widget.checkedIcon;
        break;
      case CheckStatus.unchecked:
        fillColor = widget.uncheckedFillColor;
        icon = widget.uncheckedIcon;
        break;
    }

    return AnimatedContainer(
      padding: EdgeInsets.zero,
      width: widget.checkBoxSize,
      height: widget.checkBoxSize,
      decoration: BoxDecoration(
        shape: widget.shape,
        color: fillColor,
        borderRadius: widget.shape == BoxShape.circle
            ? null
            : BorderRadius.all(Radius.circular(widget.borderRadius ?? 6)),
        border: Border.all(
          color: widget.shouldShowBorder
              ? (widget.borderColor ?? Colors.teal.withOpacity(0.6))
              : (!widget.value
                  ? (widget.borderColor ?? Colors.teal.withOpacity(0.6))
                  : Colors.transparent),
          width: widget.shouldShowBorder ? widget.borderWidth ?? 2.0 : 1.0,
        ),
      ),
      duration: const Duration(milliseconds: 200),
      child: Center(
        child: AnimatedScale(
          duration: const Duration(milliseconds: 200),
          scale: widget.value ? 1 : 0,
          child: icon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: _buildIcon(),
      onTap: () => widget.onChanged(!_checked),
    );
  }
}

enum CheckStatus {
  checked,
  unchecked,
}
