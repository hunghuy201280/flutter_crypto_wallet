import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/extensions.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/confirm_password_bloc/confirm_password_bloc.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button_medium.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/text_config.dart';
import '../../di/dependency_injection.dart';
import '../../generated/l10n.dart';
import '../../services/local/local_provider.dart';
import '../confirm_password/confirm_password_body.dart';

class ShowPrivateKeyScreen extends StatefulWidget {
  static const id = "ShowPrivateKeyScreen";

  const ShowPrivateKeyScreen({Key? key}) : super(key: key);

  @override
  State<ShowPrivateKeyScreen> createState() => _ShowPrivateKeyScreenState();
}

class _ShowPrivateKeyScreenState extends State<ShowPrivateKeyScreen>
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
          title: s.privateKey,
          centerTitle: true,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            const ConfirmPasswordBody(),
            PrivateKeyBody(),
          ],
          physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}

class PrivateKeyBody extends StatelessWidget {
  PrivateKeyBody({Key? key}) : super(key: key);

  final localProvider = getIt<LocalProvider>();
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final privateKey = localProvider.getSelectedWallet().privateKey;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          48.verticalSpace,
          "password".getIcon(
            width: 72.w,
            height: 72.w,
            color: AppColors.kColor9,
          ),
          48.verticalSpace,
          GestureDetector(
            onTap: () async {
              await FlutterClipboard.copy(privateKey);
              Utils.showToast(context, message: s.copied);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                8.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    privateKey,
                    style: TextConfigs.kSubtitle_9,
                    textAlign: TextAlign.center,
                  ),
                ),
                8.verticalSpace,
                "paper".getIcon(width: 24.w, height: 24.w),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.kColor2,
            ),
            child: Text(
              s.showPrivateKeyDescription,
              style: TextConfigs.kBody2_9,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          PrimaryButtonMedium(
            title: s.done,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          32.verticalSpace,
        ],
      ),
    );
  }
}
