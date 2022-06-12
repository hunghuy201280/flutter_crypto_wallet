import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/models/token/token.dart';
import 'package:flutter_crypto_wallet/utils/helpers/status.dart';
import 'package:flutter_crypto_wallet/utils/shared_widgets/loading/global_loading.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/withdraw_bloc/withdraw_bloc.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/dropdown_icon_widget.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button_medium.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

import '../../di/dependency_injection.dart';
import '../../generated/l10n.dart';
import '../../services/local/local_provider.dart';

class WithdrawScreen extends StatefulWidget {
  static const id = '/withdraw';
  const WithdrawScreen({Key? key, this.initialAddress}) : super(key: key);
  final String? initialAddress;
  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.kColor1,
      appBar: Utils.buildAppBar(context, title: s.withdraw, centerTitle: true),
      body: _BodyScreen(
        initialAddress: widget.initialAddress,
      ),
    );
  }
}

class _BodyScreen extends StatefulWidget {
  const _BodyScreen({Key? key, this.initialAddress}) : super(key: key);
  final String? initialAddress;

  @override
  State<_BodyScreen> createState() => __BodyScreenState();
}

class __BodyScreenState extends State<_BodyScreen> {
  late WithdrawBloc _bloc;
  late FocusNode _focusNode;
  bool isInitialLoaded = false;
  @override
  void initState() {
    _bloc = context.read<WithdrawBloc>();
    _focusNode = FocusNode();
    super.initState();
    _bloc.add(const WithdrawEvent.initialData());

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _focusNode.addListener(checkFocusAddress);
    });
  }

  void checkFocusAddress() {
    if (!_focusNode.hasFocus) {
      _bloc.add(const WithdrawEvent.validAddress());
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(checkFocusAddress);
    _focusNode.dispose();
    super.dispose();
  }

  final _localProvider = getIt<LocalProvider>();
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<WithdrawBloc, WithdrawState>(
      listener: (context, state) {
        switch (state.status.runtimeType) {
          case Loading:
            showLoadingDialog();
            break;
          case Success:
            hideLoadingDialog();
            Navigator.pop(context);
            showAlertDialog(context, message: s.withdrawSuccess);
            break;
          case Error:
            hideLoadingDialog();
            if (state.status is AmountError) {
              showErrorDialog(context, message: s.pleaseInputCorrectAmount);
            } else {
              showErrorDialog(context, message: s.somethingHappenedWrong);
            }
            break;
          case Idle:
            hideLoadingDialog();

            if (widget.initialAddress != null && !isInitialLoaded) {
              isInitialLoaded = true;
              _bloc.state.controllerAddress.text = widget.initialAddress!;
              _bloc.add(WithdrawEvent.onAddressChanged(widget.initialAddress!));
              _bloc.add(const WithdrawEvent.validAddress());
            }
            break;
          default:
            hideLoadingDialog();
        }
      },
      child: Container(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryTextField(
              controller: _bloc.state.controllerAddress,
              focusNode: _focusNode,
              hint: s.address,
              onChanged: (value) {
                _bloc.add(WithdrawEvent.onAddressChanged(value));
              },
            ),
            24.verticalSpace,
            BlocSelector<WithdrawBloc, WithdrawState,
                Tuple3<bool, Token?, List<Token>>>(
              selector: (state) => Tuple3(
                  state.isValidAddress, state.tokenSelected, state.tokens),
              builder: (context, item) {
                if (item.item1) {
                  return Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownIconWidget<Token>(
                              itemSelected: item.item2,
                              items: item.item3
                                  .map(
                                    (e) => DropdownIconMenuItem(
                                      title: e.symbol,
                                      value: e,
                                      image: e.avatar ??
                                          _localProvider.getDefaultJazzicon(),
                                    ),
                                  )
                                  .toList(),
                              onSelected: (token) {
                                _bloc.add(WithdrawEvent.onTokenChanged(token));
                              },
                            ),
                            Expanded(child: Container()),
                            TextButton(
                              onPressed: () {
                                _bloc.add(const WithdrawEvent.maxAmount());
                              },
                              style: TextButton.styleFrom(
                                primary: AppColors.kColor4,
                              ),
                              child: Text(
                                s.max,
                                style: TextConfigs.kBody2_4,
                              ),
                            ),
                          ],
                        ),
                        PrimaryTextField(
                          inputType: TextInputType.number,
                          controller: _bloc.state.controllerAmount,
                          hint: item.item2?.balance.toString(),
                          onChanged: (value) {
                            _bloc.add(WithdrawEvent.onAmountChanged(
                                double.parse(value)));
                          },
                        ),
                        Expanded(child: Container()),
                        PrimaryButtonMedium(
                          title: s.send,
                          onTap: () {
                            _bloc.add(const WithdrawEvent.send());
                          },
                        )
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
