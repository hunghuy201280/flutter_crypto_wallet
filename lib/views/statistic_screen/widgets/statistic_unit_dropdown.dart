import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../generated/l10n.dart';
import '../../shared_widgets/common_dropdown.dart';

class StatisticUnitDropdown extends StatefulWidget {
  const StatisticUnitDropdown({
    Key? key,
  }) : super(key: key);

  @override
  State<StatisticUnitDropdown> createState() => _StatisticUnitDropdownState();
}

class _StatisticUnitDropdownState extends State<StatisticUnitDropdown> {
  Units mode = Units.WEEK;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return CustomDropDown<Units>(
      selectedItem: mode,
      getName: (mode) {
        switch (mode) {
          case Units.MONTH:
            return s.thisMonth;

          case Units.YEAR:
            return s.thisYear;
          case Units.WEEK:
          default:
            return s.thisWeek;
        }
      },
      items: const [Units.WEEK, Units.MONTH, Units.YEAR],
      onChanged: (selectedItem) {
        if (selectedItem == null) return;
        setState(() {
          mode = selectedItem;
        });
      },
    );
  }
}
