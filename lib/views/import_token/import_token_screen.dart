import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/shared_widgets/loading/global_loading.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button_medium.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../../view_models/import_token_bloc/import_token_bloc.dart';

class ImportTokenScreen extends StatefulWidget {
  static const id = "ImportTokenScreen";
  const ImportTokenScreen({Key? key}) : super(key: key);

  @override
  State<ImportTokenScreen> createState() => _ImportTokenScreenState();
}

class _ImportTokenScreenState extends State<ImportTokenScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.kColor1,
      appBar:
          Utils.buildAppBar(context, title: s.importTokens, centerTitle: true),
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
  late ImportTokenBloc _bloc;
  late FocusNode _focusNode;
  @override
  void initState() {
    _bloc = context.read<ImportTokenBloc>();
    _focusNode = FocusNode();
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _focusNode.addListener(_onFocusChange);
    });
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      _bloc.add(const ImportTokenEvent.loadInfo());
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<ImportTokenBloc, ImportTokenState>(
      listener: (context, state) {
        switch (state.status.runtimeType) {
          case Idle:
            hideLoadingDialog();
            break;
          case Loading:
            showLoadingDialog();
            break;
          case Error:
            hideLoadingDialog();
            break;
          case Success:
            Navigator.pop(context, true);
            break;
          default:
            hideLoadingDialog();
        }
      },
      child: Container(
        constraints: const BoxConstraints.expand(),
        margin: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryTextField(
              focusNode: _focusNode,
              title: s.tokenContractAddress,
              hint: '0x...',
              onChanged: (value) {
                _bloc.add(ImportTokenEvent.addressChanged(value));
              },
            ),
            16.verticalSpace,
            PrimaryTextField(
              controller: _bloc.state.controllerSymbol,
              title: s.tokenSymbol,
              hint: 'GNO',
              onChanged: (value) {
                _bloc.add(ImportTokenEvent.symbolChanged(value));
              },
            ),
            16.verticalSpace,
            PrimaryTextField(
              controller: _bloc.state.controllerDecimal,
              title: s.tokenOfPrecision,
              hint: '12',
              onChanged: (value) {
                _bloc.add(ImportTokenEvent.decimalChanged(value));
              },
            ),
            Expanded(child: Container()),
            PrimaryButtonMedium(
              title: s.addCustomToken,
              onTap: () {
                _bloc.add(const ImportTokenEvent.add());
              },
            ),
          ],
        ),
      ),
    );
  }
}
