import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/utils/jazzicon/jazziconshape.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/views/import_account/import_account_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../configs/color_config.dart';
import '../../../configs/text_config.dart';
import '../../../generated/l10n.dart';
import '../../../utils/helpers/status.dart';
import '../../../view_models/account_selector_bloc/account_selector_bloc.dart';
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

  late AccountSelectorBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<AccountSelectorBloc>();
  }

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
              child: BlocBuilder<AccountSelectorBloc, AccountSelectorState>(
                builder: (context, state) {
                  if (state.status is Loading) {
                    return const Center(
                      child: SpinKitDancingSquare(
                        color: AppColors.kColor6,
                      ),
                    );
                  }
                  return ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final item = state.wallets[index];
                      return AccountItem(
                        balance: item.balanceToken?.balance ?? 0,
                        name: "Account ${item.index}",
                        imported: item.isImportedWallet,
                        selected: state.selectedWallet.address == item.address,
                        onSelected: () {
                          bloc.add(AccountSelectorEvent.selected(item));
                        },
                        avatarData: item.avatar!,
                        onLongPressed: () {
                          showAlertDialog(context,
                              message: s.deleteAccountAlert,
                              positiveText: s.removeIt,
                              negativeText: s.cancel, onNegative: () {
                            Navigator.pop(context);
                          }, onPositive: () {
                            bloc.add(AccountSelectorDeleted(item));
                          });
                        },
                      );
                    },
                    separatorBuilder: (_, __) => divider,
                    itemCount: state.wallets.length,
                  );
                },
              ),
            ),
            divider,
            24.verticalSpace,
            GestureDetector(
              onTap: () {
                bloc.add(const AccountSelectorAdded());
              },
              child: Text(
                s.createNewAccount,
                style: TextConfigs.kBody2_1,
              ),
            ),
            8.verticalSpace,
            GestureDetector(
              onTap: () async {
                final res = await Navigator.of(context, rootNavigator: true)
                    .pushNamed(ImportAccountScreen.id);
                if (res == true) {
                  bloc.add(const AccountSelectorInitialized());
                }
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
    required this.avatarData,
    required this.onLongPressed,
  }) : super(key: key);

  final String name;
  final double balance;
  final bool imported;
  final bool selected;
  final GestureTapCallback onSelected;
  final GestureTapCallback onLongPressed;
  final JazziconData avatarData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelected,
      onLongPress: onLongPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 24.w),
        child: Row(
          children: [
            PrimaryAvatar(
              size: 64.w,
              data: avatarData,
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
                  "${balance.toStringAsFixed(2)} BNB",
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
