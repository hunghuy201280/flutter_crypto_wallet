import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/change_password_bloc/change_password_bloc.dart';
import 'package:flutter_crypto_wallet/view_models/confirm_password_bloc/confirm_password_bloc.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button_medium.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/text_config.dart';
import '../../generated/l10n.dart';
import '../../view_models/auth_bloc/auth_bloc.dart';
import '../confirm_password/confirm_password_body.dart';
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
    return MultiBlocListener(
      listeners: [
        BlocListener<ChangePasswordBloc, ChangePasswordState>(
          listener: (_, state) {
            final status = state.status;
            if (status is Error<ChangePasswordEventType>) {
              if (status.data ==
                  ChangePasswordEventType.reNewPasswordIsNotIdentical) {
                Utils.showCompleteSnackBar(context,
                    message: s.passwordNotMatch, isError: true);
              } else if (status.data == ChangePasswordEventType.notChecked) {
                Utils.showCompleteSnackBar(context,
                    message: s.pleaseAcceptPolicy, isError: true);
              }
            } else if (status is Success<ChangePasswordEventType>) {
              if (status.data ==
                  ChangePasswordEventType.passwordChangedSuccessfully) {
                final authBloc = context.read<AuthBloc>();
                Utils.showCompleteSnackBar(context,
                        message: s.passwordChangedSuccessfully)
                    .then((value) {
                  authBloc.add(const AuthInitial());
                });
              }
            }
          },
        ),
        BlocListener<ConfirmPasswordBloc, ConfirmPasswordState>(
          listener: (context, state) {
            final status = state.status;
            if (status is Error<ConfirmPasswordEventType>) {
              if (status.data == ConfirmPasswordEventType.wrongPassword) {
                Utils.showCompleteSnackBar(context,
                    message: s.wrongPassword, isError: true);
              }
            } else if (status is Success<ConfirmPasswordEventType>) {
              if (status.data == ConfirmPasswordEventType.correctPassword) {
                tabController.animateTo(1);
              }
            }
          },
        ),
      ],
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
            ConfirmPasswordBody(),
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
