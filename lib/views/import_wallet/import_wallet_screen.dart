import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/view_models/import_wallet_bloc/import_wallet_bloc.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_button.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/text_config.dart';
import '../create_wallet/widgets/checkbox_row.dart';

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

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ImportWalletBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      appBar: Utils.buildAppBar(
        context,
        title: s.importWallet,
      ),
      body: Column(
        children: [
          16.verticalSpace,
          PrimaryTextField(
            title: s.privateKey,
            hint: s.privateKey,
            maxLines: 5,
            onChanged: (value) {
              _bloc.add(ImportWalletPrivateKeyChanged(value));
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
            margin: EdgeInsets.symmetric(horizontal: 24.w),
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
    );
  }
}
