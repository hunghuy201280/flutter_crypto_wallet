import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_detail.dart';
import 'package:flutter_ntf_marketplace/views/wallet_screen/widgets/wallet_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletScreen extends StatelessWidget {
  static const id = "WalletScreen";
  const WalletScreen({Key? key}) : super(key: key);
  static WalletScreen get instance {
    return const WalletScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: _bodyScreen(),
    );
  }

  Widget _bodyScreen() {
    return SizedBox(
      width: 1.sw,
      height: 1.sh,
      child: Column(
        children: const [
          Expanded(child: WalletInfo()),
          Expanded(child: WalletDetail()),
        ],
      ),
    );
  }
}
