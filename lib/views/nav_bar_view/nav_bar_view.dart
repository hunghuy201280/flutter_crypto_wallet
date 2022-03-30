import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:flutter_ntf_marketplace/views/login/login_screen.dart';
import 'package:flutter_ntf_marketplace/views/settings_screen/settings_screen.dart';
import 'package:flutter_ntf_marketplace/views/statistic_screen/statistic_screen.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/wallet_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../generated/l10n.dart';
import '../../routes/app_route.dart';
import '../../utils/utils.dart';
import '../home_screen/home_screen.dart';
import '../passcode/passcode_screen.dart';

class NavBarView extends StatefulWidget {
  static const id = "NavBarView";
  static final height = Platform.isAndroid ? 80 : 72;
  const NavBarView({Key? key}) : super(key: key);

  @override
  _NavBarViewState createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int selectedIndex = 0;
  late S s;
  @override
  Widget build(BuildContext context) {
    s = S.of(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          unauthenticated: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamedAndRemoveUntil(LoginScreen.id, (route) => false);
          },
          authenticatedNoPassword: (walletAddress) {
            Navigator.of(context, rootNavigator: true)
                .pushNamedAndRemoveUntil(PasscodeScreen.id, (route) => false);
          },
          authenticated: (wallet) {},
        );
      },
      child: Scaffold(
        appBar: _buildMainAppBar(),
        resizeToAvoidBottomInset: false,
        body: PersistentTabView(
          context,
          screens: screens,
          items: navBarItem,
          backgroundColor: AppColors.kColor2,
          navBarStyle: NavBarStyle.style6,
          onItemSelected: (index) {
            selectedIndex = index;
            setState(() {});
          },
          navBarHeight: NavBarView.height.w,
          // decoration: const NavBarDecoration(
          //   borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          //   colorBehindNavBar: Colors.transparent,
          // ),
          hideNavigationBarWhenKeyboardShows: true,
          hideNavigationBar:
              MediaQuery.of(context).viewInsets.bottom > 0 ? true : false,
          bottomScreenMargin: NavBarView.height.w,
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
          ),
        ),
      ),
    );
  }

  final screens = [
    HomeScreen.instance,
    WalletScreen.instance,
    StatisticScreen.instance,
    SettingsScreen.instance,
  ];
  List<PersistentBottomNavBarItem> get navBarItem =>
      <PersistentBottomNavBarItem>[
        _buildNavItem(index: 0, icon: "home", initialRoute: HomeScreen.id),
        _buildNavItem(index: 1, icon: "wallet", initialRoute: WalletScreen.id),
        _buildNavItem(
            index: 2, icon: "activity", initialRoute: StatisticScreen.id),
        _buildNavItem(
            index: 3, icon: "setting", initialRoute: SettingsScreen.id),
      ];
  PersistentBottomNavBarItem _buildNavItem(
      {required int index,
      required String icon,
      required String initialRoute}) {
    final icName = selectedIndex == index ? "${icon}_bold" : icon;
    return PersistentBottomNavBarItem(
      icon: icName.getIcon(
          // color:
          //     selectedIndex == index ? AppColors.kColor9 : AppColors.kColor6
          //
          ),
      //title: s.home,
      //activeColorPrimary: AppColors.kColor9,
      //inactiveColorPrimary: AppColors.kColor6,
      // textStyle: TextConfigs.kTextH7Bold,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: initialRoute,
        onGenerateRoute: AppRoute.onGenerateRoute,
      ),
    );
  }

  _buildMainAppBar() => AppBar(
        leading: Utils.empty,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.fromSize(
              child: const Material(
                color: AppColors.kColor7,
                shape: CircleBorder(),
              ),
              size: Size(12.w, 12.w),
            ),
            8.horizontalSpace,
            Text(
              "Main Network",
              style: TextConfigs.kBody2_9,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: "scan".getIcon(),
            onPressed: () {},
            splashRadius: 20.w,
          ),
          8.horizontalSpace,
        ],
        centerTitle: true,
        backgroundColor: AppColors.kColor1,
        elevation: 0,
      );
}
