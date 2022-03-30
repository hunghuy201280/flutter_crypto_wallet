import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/views/create_wallet/create_wallet_screen.dart';
import 'package:flutter_ntf_marketplace/views/import_wallet/import_wallet_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/app_config.dart';
import '../../../configs/color_config.dart';
import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../../utils/utils.dart';
import '../../shared_widgets/primary_avatar.dart';

class AccountSelector extends StatefulWidget {
  const AccountSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountSelector> createState() => _AccountSelectorState();
}

class _AccountSelectorState extends State<AccountSelector> {
  Divider get divider => Divider(
        thickness: 0.3.w,
        height: 0.3.w,
        color: AppColors.kColor2,
      );
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SafeArea(
      child: SizedBox(
        height: 0.7.sh,
        child: Column(
          children: [
            8.verticalSpace,
            SizedBox.fromSize(
              size: Size(92.w, 8.w),
              child: Material(
                color: AppColors.kColor2,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            24.verticalSpace,
            divider,
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final rnd = Utils.getRandom(100);
                  return AccountItem(
                    balance: rnd.toDouble(),
                    name: "Account ${index + 1}",
                    imported: rnd % 3 == 0,
                    selected: index == selectedIndex,
                    onSelected: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
                separatorBuilder: (_, __) => divider,
                itemCount: 10,
              ),
            ),
            divider,
            24.verticalSpace,
            GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed(
                  CreateWalletScreen.id,
                );
              },
              child: Text(
                s.createNewAccount,
                style: TextConfigs.kBody2_1,
              ),
            ),
            8.verticalSpace,
            GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamed(ImportWalletScreen.id);
              },
              child: Text(
                s.importAnAccount,
                style: TextConfigs.kBody2_1,
              ),
            ),
            if (Platform.isAndroid) 24.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class AccountItem extends StatelessWidget {
  const AccountItem({
    Key? key,
    required this.name,
    required this.balance,
    this.imported = false,
    this.selected = false,
    required this.onSelected,
  }) : super(key: key);

  final String name;
  final double balance;
  final bool imported;
  final bool selected;
  final GestureTapCallback onSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelected,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 24.w),
        child: Row(
          children: [
            PrimaryAvatar(
              size: 64.w,
              imageUrl: AppConfigs.tempImage,
            ),
            16.horizontalSpace,
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextConfigs.kBody2_1,
                    ),
                    8.horizontalSpace,
                    if (imported)
                      Container(
                        child: Text(
                          "Imported",
                          style: TextConfigs.kCaption_9,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kColor5,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                      ),
                  ],
                ),
                Text(
                  "${balance.toStringAsFixed(2)} MATIC",
                  style: TextConfigs.kCaption_1,
                ),
              ],
            ),
            const Spacer(),
            AnimatedScale(
              duration: const Duration(milliseconds: 150),
              scale: selected ? 1 : 0,
              child: "tick_circle".getIcon(
                width: 24.w,
                height: 24.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
