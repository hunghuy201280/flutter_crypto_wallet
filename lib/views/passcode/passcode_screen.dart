import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/view_models/passcode_bloc/passcode_bloc.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
