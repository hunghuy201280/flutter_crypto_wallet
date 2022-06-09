import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/utils/helpers/status.dart';
import 'package:flutter_ntf_marketplace/utils/shared_widgets/loading/global_loading.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_ntf_marketplace/view_models/withdraw_bloc/withdraw_bloc.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/dropdown_icon_widget.dart';
import 'package:flutter_ntf_marketplace/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

import '../../generated/l10n.dart';
import '../../models/token/token.dart';

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
  late FocusNode _focusNode;
  @override
  void initState() {
    _bloc = context.read<WithdrawBloc>();
    _focusNode = FocusNode();
    super.initState();
    _bloc.add(const WithdrawEvent.initialData());

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _focusNode.addListener(() {
        if (!_focusNode.hasFocus) {
          _bloc.add(const WithdrawEvent.validAddress());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<WithdrawBloc, WithdrawState>(
      listener: (context, state) {
        switch (state.status.runtimeType) {
          case Success:
            hideLoadingDialog();
            break;
          case Loading:
            showLoadingDialog();
            break;
          case Error:
            hideLoadingDialog();
            break;
          case Idle:
            hideLoadingDialog();
            break;
        }
      },
      child: Container(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryTextField(
              focusNode: _focusNode,
              controller: _bloc.state.controllerAddress,
              hint: s.address,
              onChanged: (value) {
                _bloc.add(WithdrawEvent.onAddressChanged(value));
              },
            ),
            BlocSelector<WithdrawBloc, WithdrawState,
                Tuple2<bool, List<Token>>>(
              selector: (state) => Tuple2(state.isValidAddress, state.tokens),
              builder: (context, state) {
                return state.item1
                    ? DropdownIconWidget<Token>(
                        items: state.item2
                            .map(
                              (e) => DropdownIconMenuItem<Token>(
                                title: e.symbol,
                                value: e,
                                image: Image.network(e.imageUrl ?? ''),
                              ),
                            )
                            .toList(),
                      )
                    : Container();
              },
            )
          ],
        ),
      ),
    );
  }
}
