import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/generated/l10n.dart';
import 'package:flutter_crypto_wallet/utils/enums.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/shared_widgets/loading/global_loading.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/create_wallet_bloc/create_wallet_bloc.dart';
import 'package:flutter_crypto_wallet/views/create_wallet/widgets/create_wallet_body1.dart';
import 'package:flutter_crypto_wallet/views/create_wallet/widgets/create_wallet_body2.dart';
import 'package:flutter_crypto_wallet/views/create_wallet/widgets/nstepper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../nav_bar_view/nav_bar_view.dart';
import '../shared_widgets/primary_button.dart';

class CreateWalletScreen extends StatefulWidget {
  const CreateWalletScreen({Key? key}) : super(key: key);
  static const id = "CreateWalletScreen";

  @override
  State<CreateWalletScreen> createState() => _CreateWalletScreenState();
}

class _CreateWalletScreenState extends State<CreateWalletScreen> {
  late CreateWalletBloc _bloc;
  final pageController = PageController();
  Future _animateToPage(int index) async {
    await pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutQuad);
  }

  @override
  void initState() {
    _bloc = context.read<CreateWalletBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocConsumer<CreateWalletBloc, CreateWalletState>(
      listener: (context, state) {
        switch (state.status.runtimeType) {
          case Error:
            hideLoadingDialog();
            switch (state.status.data.runtimeType) {
              case String:
                showInfoDialog(context, message: state.status.data);
                break;
              case CreateWalletErrorState:
                switch (state.status.data as CreateWalletErrorState) {
                  case CreateWalletErrorState.passwordNotMatch:
                    showInfoDialog(context, message: s.passwordNotMatch);
                    break;
                  case CreateWalletErrorState.passwordEmpty:
                    showInfoDialog(context, message: s.passwordIsNotEmpty);
                    break;
                  case CreateWalletErrorState.networkError:
                    break;
                  case CreateWalletErrorState.policyAccept:
                    showInfoDialog(context, message: s.pleaseAcceptPolicy);
                    break;
                  case CreateWalletErrorState.passwordNotMeetCondition:
                    showInfoDialog(context,
                        message: s.passwordNotMeetCondition);
                    break;
                }
            }
            break;
          case Loading:
            showLoadingDialog();
            break;
          case Idle:
            hideLoadingDialog();
            _animateToPage(state.currentPage - 1);
            break;
          case Success:
            hideLoadingDialog();
            Navigator.pushNamed(context, NavBarView.id);
            break;
        }
      },
      builder: (context, state) => Scaffold(
        backgroundColor: AppColors.kColor1,
        resizeToAvoidBottomInset: false,
        appBar: Utils.buildAppBar(
          context,
          title: s.createWallet,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              16.verticalSpace,
              NStepper(
                currentStep: state.currentPage,
              ),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: const [
                    CreateWalletBody1(),
                    CreateWalletBody2(),
                  ],
                ),
              ),
              PrimaryButton(
                title: state.currentPage == 1 ? s.createPassword : s.getStarted,
                onTap: () {
                  if (state.currentPage == 1) {
                    _bloc.add(const CreateWalletEvent.requestCreateWallet());
                  } else {
                    _bloc.add(const CreateWalletEvent.startApp());
                  }
                },
              ),
              48.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
