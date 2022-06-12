import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/views/recover_mnenomic_phrase/recover_mnemonic_screen.dart';
import 'package:flutter_crypto_wallet/views/settings_screen/security/widgets/security_privacy_item.dart';
import 'package:flutter_crypto_wallet/views/show_private_key_screen/show_private_key_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';
import '../../../view_models/auth_bloc/auth_bloc.dart';
import '../../forgot_password/change_password_screen.dart';

class SecurityPrivacyScreen extends StatefulWidget {
  static const String id = 'setting/security';
  const SecurityPrivacyScreen({Key? key}) : super(key: key);

  @override
  State<SecurityPrivacyScreen> createState() => _SecurityPrivacyScreenState();
}

class _SecurityPrivacyScreenState extends State<SecurityPrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      appBar: Utils.buildAppBar(
        context,
        title: s.securityAndPrivacy,
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SecurityPrivacyItem(
            title: s.protectYourWallet,
            description: s.protectYourWalletDescription,
            btnTitle: s.recoverySecretRecoveryPhrase,
            onClick: () {
              Navigator.pushNamed(context, RecoverMnemonicScreen.id);
            },
          ),
          16.verticalSpace,
          SecurityPrivacyItem(
            title: s.password,
            description: s.passwordDescription,
            btnTitle: s.changePassword,
            onClick: () {
              Navigator.pushNamed(context, ChangePasswordScreen.id);
            },
          ),
          16.verticalSpace,
          SecurityPrivacyItem(
            title: s.showPrivateKeyFor(
                "Account ${(context.read<AuthBloc>().state as Authenticated).wallet.index}"),
            description: s.showPrivateKeyDescription,
            btnTitle: s.showPrivateKey,
            onClick: () {
              Navigator.pushNamed(context, ShowPrivateKeyScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
