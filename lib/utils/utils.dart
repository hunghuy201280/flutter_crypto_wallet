import 'package:flutter/material.dart';

import '../configs/text_config.dart';

class Utils {
  static AppBar buildAppBar({required String title}) {
    return AppBar(
      title: Text(
        title,
        style: TextConfigs.kHeader4_9,
      ),
    );
  }
}
