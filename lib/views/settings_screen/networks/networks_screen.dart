import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/networks/widgets/network_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class NetworksScreen extends StatefulWidget {
  static const String id = 'setting/networks';
  const NetworksScreen({Key? key}) : super(key: key);

  @override
  State<NetworksScreen> createState() => _NetworksScreenState();
}

class _NetworksScreenState extends State<NetworksScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      appBar: Utils.buildAppBar(context, title: s.networks, centerTitle: true),
      body: _bodyScreen(),
    );
  }

  Widget _bodyScreen() {
    final s = S.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => 18.verticalSpace,
              physics: const NeverScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              shrinkWrap: true,
              itemBuilder: (context, index) => NetworkItem(
                networkName: 'Main Test Network',
                color: AppColors.kColor2,
              ),
              itemCount: 1,
            ),
            26.verticalSpace,
            Text(
              s.otherNetworks,
              style: TextConfigs.kLabel_9,
            ),
            18.verticalSpace,
            ListView.separated(
              separatorBuilder: (context, index) => 18.verticalSpace,
              physics: const NeverScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              shrinkWrap: true,
              itemBuilder: (context, index) => NetworkItem(
                networkName: 'Main Test Network',
                color: AppColors.kColor7,
              ),
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
