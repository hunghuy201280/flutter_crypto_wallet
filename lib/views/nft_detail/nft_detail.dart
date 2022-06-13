import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/configs/text_config.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/withdraw_nft_bloc/withdraw_nft_bloc.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button_medium.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../../models/nft/nft.dart';
import '../../utils/helpers/status.dart';
import '../../utils/shared_widgets/loading/global_loading.dart';

class NftDetail extends StatefulWidget {
  static const String id = '/wallet/nft';
  final String contractAddress;
  final Nft? nft;
  const NftDetail({Key? key, this.nft, required this.contractAddress})
      : super(key: key);

  @override
  State<NftDetail> createState() => _NftDetailState();
}

class _NftDetailState extends State<NftDetail> {
  late WithdrawNftBloc _bloc;
  late FocusNode _focusNode;
  @override
  void initState() {
    _bloc = context.read<WithdrawNftBloc>();
    _focusNode = FocusNode();
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _focusNode.addListener(_onUnfocusToAddress);
      _bloc.add(WithdrawNftEvent.initData(widget.contractAddress, widget.nft));
    });
  }

  void _onUnfocusToAddress() {
    if (!_focusNode.hasFocus) {
      _bloc.add(const WithdrawNftEvent.validAddress());
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onUnfocusToAddress);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<WithdrawNftBloc, WithdrawNftState>(
      listener: (context, state) {
        switch (state.status.runtimeType) {
          case Loading:
            showLoadingDialog();
            break;
          case Success:
            hideLoadingDialog();
            Navigator.pop(context);
            break;
          case Error:
            hideLoadingDialog();
            showErrorDialog(context, message: s.somethingHappenedWrong);
            break;
          case Idle:
            hideLoadingDialog();
            break;
          default:
            hideLoadingDialog();
        }
      },
      child: BlocSelector<WithdrawNftBloc, WithdrawNftState, String?>(
        selector: (state) => _bloc.state.nft?.tokenId,
        builder: (context, value) => Scaffold(
          backgroundColor: AppColors.kColor1,
          appBar:
              Utils.buildAppBar(context, title: "#$value", centerTitle: true),
          body: Container(
            padding: EdgeInsets.all(24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BlocBuilder<WithdrawNftBloc, WithdrawNftState>(
                            builder: (context, state) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 32.h),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.w),
                                  child: Container(
                                    constraints:
                                        BoxConstraints(maxHeight: 272.h),
                                    color: AppColors.kColor4,
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: state.nft?.image ?? '',
                                      errorWidget: (context, url, error) =>
                                          Center(
                                        child: Text(
                                          "#${_bloc.state.nft?.tokenId}",
                                          style: TextConfigs.kHeader4_9,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "${_bloc.state.nft?.name}",
                                style: TextConfigs.kHeader4_9,
                              )
                            ],
                          );
                        }),
                        24.verticalSpace,
                        PrimaryTextField(
                          controller: _bloc.state.controllerFromAddress,
                          enable: false,
                          title: s.fromAddress,
                        ),
                        24.verticalSpace,
                        PrimaryTextField(
                          focusNode: _focusNode,
                          hint: '0x....',
                          controller: _bloc.state.controllerToAddress,
                          title: s.toAddress,
                          onChanged: (value) {
                            _bloc.add(
                                WithdrawNftEvent.onToAddressChanged(value));
                          },
                        )
                      ],
                    ),
                  ),
                ),
                BlocSelector<WithdrawNftBloc, WithdrawNftState, bool>(
                    selector: (state) => state.isValidToAddress,
                    builder: (context, value) {
                      return value
                          ? PrimaryButtonMedium(
                              title: s.sendNft,
                              onTap: () {
                                _bloc.add(const WithdrawNftEvent.send());
                              },
                            )
                          : Container();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
