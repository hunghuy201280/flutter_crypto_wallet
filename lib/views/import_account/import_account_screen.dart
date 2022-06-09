import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/generated/l10n.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/shared_widgets/loading/global_loading.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button_medium.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/text_config.dart';
import '../../view_models/import_account_bloc/import_account_bloc.dart';

class ImportAccountScreen extends StatefulWidget {
  const ImportAccountScreen({Key? key}) : super(key: key);
  static const id = "ImportAccountScreen";

  @override
  State<ImportAccountScreen> createState() => _ImportAccountScreenState();
}

class _ImportAccountScreenState extends State<ImportAccountScreen> {
  int currentStep = 1;
  final pageController = PageController();
  late ImportAccountBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ImportAccountBloc>();
    _bloc.state.privateKey.text =
        "570b05a4bcdb597a0db8a89cc1ad8cc55dea78155d2564d1e8b8c9379f5c5fe9";
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<ImportAccountBloc, ImportAccountState>(
      listener: (context, state) {
        final status = state.status;
        switch (status.runtimeType) {
          case InvalidPrivateKeyError:
            hideLoadingDialog();
            showInfoDialog(context, message: s.invalidPrivateKey);
            break;
          case DuplicateAccountError:
            hideLoadingDialog();
            showInfoDialog(context, message: s.duplicateAccount);
            break;
          case Loading:
            showLoadingDialog();
            break;
          case Success:
            hideLoadingDialog();

            Navigator.pop(context, true);
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
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              16.verticalSpace,
              PrimaryTextField(
                title: s.privateKey,
                hint: s.privateKeyHint,
                controller: _bloc.state.privateKey,
                maxLines: 5,
                onChanged: (value) {},
              ),
              16.verticalSpace,
              Text(
                s.importAccountText1(s.appName),
                style: TextConfigs.kBody2_2,
              ),
              const Spacer(),
              PrimaryButtonMedium(
                title: s.importWallet,
                onTap: () {
                  _bloc.add(const ImportAccountImported());
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
