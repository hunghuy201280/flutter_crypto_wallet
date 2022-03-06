import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/configs/text_config.dart';
import 'package:flutter_ntf_marketplace/utils/extensions.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/view_models/passcode_bloc/passcode_bloc.dart';
import 'package:flutter_ntf_marketplace/views/passcode/widgets/passcode_bottom.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_avatar.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_button.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';
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
    _bloc.add(const PasscodeInitialLoaded());
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
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
    );
  }
}
