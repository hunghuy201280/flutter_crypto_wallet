import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetupWalletScreen extends StatefulWidget {
  const SetupWalletScreen({Key? key}) : super(key: key);

  @override
  _SetupWalletScreenState createState() => _SetupWalletScreenState();
}

class _SetupWalletScreenState extends State<SetupWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextField(),
            SizedBox(
              height: 20.h,
            ),
            const TextField(),
          ],
        ),
      ),
    );
  }
}
