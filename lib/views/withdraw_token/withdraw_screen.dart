import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/view_models/withdraw_bloc/withdraw_bloc.dart';

import '../../generated/l10n.dart';

class WithdrawScreen extends StatefulWidget {
  static const id = '/withdraw';
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      appBar: Utils.buildAppBar(context, title: s.withdraw, centerTitle: true),
      body: const _BodyScreen(),
    );
  }
}

class _BodyScreen extends StatefulWidget {
  const _BodyScreen({Key? key}) : super(key: key);

  @override
  State<_BodyScreen> createState() => __BodyScreenState();
}

class __BodyScreenState extends State<_BodyScreen> {
  late WithdrawBloc _bloc;
  @override
  void initState() {
    _bloc = context.read<WithdrawBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
