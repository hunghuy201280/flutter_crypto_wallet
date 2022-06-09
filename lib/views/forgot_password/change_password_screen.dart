import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/utils/helpers/status.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/view_models/change_password_bloc/change_password_bloc.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_button_medium.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/text_config.dart';
import '../../generated/l10n.dart';
import '../../view_models/auth_bloc/auth_bloc.dart';
import '../shared_widgets/custom_checkbox.dart';
import '../shared_widgets/primary_text_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const id = "ChangePasswordScreen";

  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
      listener: (_, state) {
        final status = state.status;

        if (status is Error<ChangePasswordEventType>) {
          if (status.data == ChangePasswordEventType.wrongPassword) {
            Utils.showCompleteSnackBar(context,
                message: s.wrongPassword, isError: true);
          } else if (status.data ==
              ChangePasswordEventType.reNewPasswordIsNotIdentical) {
            Utils.showCompleteSnackBar(context,
                message: s.passwordNotMatch, isError: true);
          } else if (status.data == ChangePasswordEventType.notChecked) {
            Utils.showCompleteSnackBar(context,
                message: s.pleaseAcceptPolicy, isError: true);
          }
        } else if (status is Success<ChangePasswordEventType>) {
          if (status.data == ChangePasswordEventType.correctPassword) {
            tabController.animateTo(1);
          }
          if (status.data ==
              ChangePasswordEventType.passwordChangedSuccessfully) {
            final authBloc = context.read<AuthBloc>();
            Utils.showCompleteSnackBar(context,
                    message: s.walletAddedSuccessfully)
                .then((value) {
              authBloc.add(const AuthInitial());
            });
          }
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.kColor1,
        appBar: Utils.buildAppBar(
          context,
          title: s.changePassword,
          centerTitle: true,
          onTap: () {
            if (tabController.index == 0) {
              Navigator.pop(context);
            } else {
              tabController.animateTo(0);
            }
          },
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            ChangePasswordConfirmBody(),
            ChangePasswordBody(),
          ],
          physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}

class ChangePasswordBody extends StatelessWidget {
  const ChangePasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ChangePasswordBloc>();
    final s = S.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryTextField(
            title: s.newPassword,
            controller: bloc.state.newPassword,
            hint: s.password,
            onChanged: (value) {},
            obscureText: true,
          ),
          PrimaryTextField(
            title: s.confirmPassword,
            controller: bloc.state.reNewPassword,
            hint: s.password,
            onChanged: (value) {},
            obscureText: true,
          ),
          8.verticalSpace,
          Text(
            s.mustBeAtLeastCharacters(8),
            style: TextConfigs.kBody2_2,
          ),
          8.verticalSpace,
          BlocSelector<ChangePasswordBloc, ChangePasswordState, bool>(
            selector: (state) => state.isChecked,
            builder: (context, isChecked) {
              return GestureDetector(
                onTap: () {
                  bloc.add(const ChangePasswordEvent.checkboxTapped());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCheckBox(
                      value: isChecked,
                      onChanged: () {
                        bloc.add(const ChangePasswordEvent.checkboxTapped());
                      },
                      checkBoxSize: 24.w,
                      checkedFillColor: AppColors.kColor6,
                      borderColor: AppColors.kColor9,
                      uncheckedFillColor: Colors.transparent,
                      shouldShowBorder: true,
                      checkedIcon: const SizedBox.shrink(),
                    ),
                    8.horizontalSpace,
                    Flexible(
                      child: Text(
                        s.iUnderstandThatAppNameCannotRecoverThisPasswordForMe(
                            s.appName),
                        style: TextConfigs.kBody2_9,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          24.verticalSpace,
          PrimaryButtonMedium(
            title: s.changePassword,
            onTap: () {
              bloc.add(const ChangePasswordEvent.submitted());
            },
          ),
        ],
      ),
    );
  }
}

class ChangePasswordConfirmBody extends StatelessWidget {
  const ChangePasswordConfirmBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final bloc = context.read<ChangePasswordBloc>();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 200.w,
            child: Text(
              s.confirmYourPassword,
              style: TextConfigs.kHeader3_9,
            ),
          ),
          8.verticalSpace,
          Text(
            s.changePasswordSentence1,
            style: TextConfigs.kBody2_9,
          ),
          16.verticalSpace,
          PrimaryTextField(
            hint: s.password,
            controller: bloc.state.currentPassword,
            onChanged: (value) {},
          ),
          24.verticalSpace,
          PrimaryButtonMedium(
            title: s.confirm,
            onTap: () {
              bloc.add(const ChangePasswordEvent.confirmed());
            },
          ),
        ],
      ),
    );
  }
}
