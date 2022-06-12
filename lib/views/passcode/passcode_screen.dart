import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/shared_widgets/loading/global_loading.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/views/loading_screen.dart';
import 'package:flutter_crypto_wallet/views/passcode/widgets/passcode_bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../../view_models/passcode_bloc/passcode_bloc.dart';
import 'widgets/passcode_body.dart';

class PasscodeScreen extends StatefulWidget {
  static const id = "PasscodeScreen";
  const PasscodeScreen({Key? key}) : super(key: key);

  @override
  State<PasscodeScreen> createState() => _PasscodeScreenState();
}

class _PasscodeScreenState extends State<PasscodeScreen> {
  late PasscodeBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<PasscodeBloc>();
    _bloc.add(const PasscodeEvent.initialLoaded());
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<PasscodeBloc, PasscodeState>(
      listener: (context, state) {
        final status = state.status;
        if (status is SignedInSuccess) {
          hideLoadingDialog();
          Navigator.pushNamedAndRemoveUntil(
              context, LoadingScreen.id, (route) => false);
        } else if (status is WrongPasswordError) {
          hideLoadingDialog();
          showErrorDialog(context, message: s.wrongPassword);
          printLog(this, message: "$state");
        } else if (status is Loading) {
          showLoadingDialog();
        } else {
          hideLoadingDialog();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.kColor1,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Center(
                    child: PasscodeBody(),
                  ),
                ),
                PasscodeBottom()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
