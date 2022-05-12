import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_ntf_marketplace/views/onboarding_screen.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/about_screen.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/networks/networks_screen.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/security/security_privacy_screen.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/widgets/setting_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import 'general/general_screen.dart';

class SettingsScreen extends StatefulWidget {
  static const id = "SettingsScreen";
  const SettingsScreen({Key? key}) : super(key: key);

  static SettingsScreen get instance {
    return const SettingsScreen();
  }

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late AuthBloc authBloc;

  @override
  void initState() {
    super.initState();
    authBloc = context.read<AuthBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: _bodyScreen(),
    );
  }

  Divider get divider => Divider(
        height: 0.3.w,
        color: AppColors.kColor2,
        thickness: 0.3.w,
      );

  Widget _bodyScreen() {
    final s = S.of(context);
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        divider,
        SettingItem(
          title: s.general,
          description: s.generalDescription,
          action: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamed(GeneralScreen.id);
          },
        ),
        divider,
        SettingItem(
          title: s.securityAndPrivacy,
          description: s.securityAndPrivacyDescription,
          action: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamed(SecurityPrivacyScreen.id);
          },
        ),
        divider,
        SettingItem(
          title: s.networks,
          description: s.networksDescription,
          action: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamed(NetworksScreen.id);
          },
        ),
        divider,
        SettingItem(
          title: s.aboutAppName,
          description: '',
          action: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamed(AboutAppScreen.id);
          },
        ),
        divider,
        SettingItem(
          title: s.logout,
          description: '',
          action: () {
            authBloc.add(const AuthLoggedOut());
            Navigator.of(context, rootNavigator: true)
                .pushNamed(OnboardingScreen.id);
          },
        ),
      ],
    );
  }
}
