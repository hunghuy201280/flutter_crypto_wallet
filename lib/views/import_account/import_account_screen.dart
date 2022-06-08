import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/helpers/status.dart';
import 'package:flutter_ntf_marketplace/utils/shared_widgets/loading/global_loading.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_button.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          case Loading:
            showLoadingDialog();
            break;
          case Success:
            hideLoadingDialog();

            Navigator.pop(context);
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
                  title: s.privateKey,
                  hint: s.privateKeyHint,
                  controller: _bloc.state.privateKey,
                  maxLines: 5,
                  onChanged: (value) {},
                ),
                24.verticalSpace,
                PrimaryButton(
                  title: s.importWallet,
                  onTap: () {
                    _bloc.add(const ImportAccountImported());
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
