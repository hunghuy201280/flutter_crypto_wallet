import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/app_config.dart';
import '../../../configs/color_config.dart';
import '../../../configs/text_config.dart';
import '../../../utils/utils.dart';
import '../../../view_models/auth_bloc/auth_bloc.dart';
import '../../shared_widgets/primary_avatar.dart';
import 'account_selector.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is! Authenticated) {
          return Utils.empty;
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: GestureDetector(
            onTap: () => _onTap(context),
            child: Material(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.kColor2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryAvatar(
                      size: 64.w,
                      imageUrl: AppConfigs.tempImage,
                      borderColor: AppColors.kColor9,
                    ),
                    Column(
                      children: [
                        Text(
                          "Account 1",
                          style: TextConfigs.kBody2_9,
                        ),
                        8.verticalSpace,
                        Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: AppColors.kColor5,
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            onTap: () {
                              FlutterClipboard.controlC("text");
                              Utils.showToast(context, message: "Copied");
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 4.w),
                              child: Text(
                                state.wallet.address
                                    .shortFor(shortForLength: 15),
                                style: TextConfigs.kCaption_9,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 64.w,
                      child: Material(
                        color: Colors.transparent,
                        child: Center(
                          child: IconButton(
                            onPressed: () => _onTap(context),
                            splashRadius: 16.w,
                            icon: "dropdown".getIcon(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _onTap(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
      useRootNavigator: true,
      builder: (context) => const AccountSelector(),
    );
  }
}
