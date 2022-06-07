import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/enums.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/utils/helpers/status.dart';
import 'package:flutter_ntf_marketplace/utils/shared_widgets/loading/global_loading.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/view_models/import_wallet_bloc/import_wallet_bloc.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_button.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/text_config.dart';
import '../create_wallet/widgets/checkbox_row.dart';
import '../nav_bar_view/nav_bar_view.dart';

class ImportWalletScreen extends StatefulWidget {
  const ImportWalletScreen({Key? key}) : super(key: key);
  static const id = "ImportWalletScreen";

  @override
  State<ImportWalletScreen> createState() => _ImportWalletScreenState();
}

class _ImportWalletScreenState extends State<ImportWalletScreen> {
  int currentStep = 1;
  final pageController = PageController();
  late ImportWalletBloc _bloc;
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ImportWalletBloc>();
    controller.text =
        "sing omit organ aunt sing guess include just wealth extend govern apart";
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<ImportWalletBloc, ImportWalletState>(
      listener: (context, state) {
        final status = state.status;
        switch (status.runtimeType) {
          case Error:
            hideLoadingDialog();
            switch (state.status.data.runtimeType) {
              case String:
                showInfoDialog(context, message: state.status.data);
                break;
              case ImportWalletErrorState:
                switch (state.status.data as ImportWalletErrorState) {
                  case ImportWalletErrorState.passwordNotMatch:
                    showInfoDialog(context, message: s.passwordNotMatch);
                    break;
                  case ImportWalletErrorState.passwordEmpty:
                    showInfoDialog(context, message: s.passwordIsNotEmpty);
                    break;
                  case ImportWalletErrorState.networkError:
                    break;
                  case ImportWalletErrorState.policyAccept:
                    showInfoDialog(context, message: s.pleaseAcceptPolicy);
                    break;
                  case ImportWalletErrorState.passwordNotMeetCondition:
                    showInfoDialog(context,
                        message: s.passwordNotMeetCondition);
                    break;
                }
            }
            break;
          case Loading:
            showLoadingDialog();
            break;
          case Success:
            Navigator.pushNamed(context, NavBarView.id);
            hideLoadingDialog();
            break;
          case Idle:
            hideLoadingDialog();
            break;
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.kColor1,
        appBar: Utils.buildAppBar(
          context,
          title: s.importWallet,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                16.verticalSpace,
                PrimaryTextField(
                  title: s.secretRecoveryPhrase,
                  hint: s.secretRecoveryPhrase,
                  controller: controller,
                  maxLines: 5,
                  onChanged: (value) {
                    _bloc.add(ImportWalletMnemonicChanged(value));
                  },
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: "show".getIcon(height: 24.w, width: 24.w),
                  ),
                ),
                24.verticalSpace,
                PrimaryTextField(
                  title: s.newPassword,
                  obscureText: true,
                  onChanged: (value) {
                    _bloc.add(ImportWalletPasswordChanged(value));
                  },
                  hint: s.password,
                ),
                24.verticalSpace,
                PrimaryTextField(
                  title: s.confirmPassword,
                  obscureText: true,
                  hint: s.password,
                  onChanged: (value) {
                    _bloc.add(ImportWalletRePasswordChanged(value));
                  },
                ),
                8.verticalSpace,
                Container(
                  child: Text(
                    s.mustBeAtLeastCharacters(8),
                    style: TextConfigs.kBody2_2,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                24.verticalSpace,
                CheckBoxRow(
                  onChanged: (bool value) {
                    _bloc.add(ImportWalletCheckBoxChanged(value));
                  },
                ),
                48.verticalSpace,
                PrimaryButton(
                  title: s.importWallet,
                  onTap: () {
                    _bloc.add(const ImportWalletImported());
                    // Navigator.pushNamed(context, ImportWalletSuccessScreen.id);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
