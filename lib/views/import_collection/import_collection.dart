import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/configs/color_config.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:flutter_crypto_wallet/view_models/import_collection_bloc/import_collection_bloc.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_button_medium.dart';
import 'package:flutter_crypto_wallet/views/shared_widgets/primary_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../../utils/helpers/status.dart';
import '../../utils/shared_widgets/loading/global_loading.dart';

class ImportCollectionScreen extends StatefulWidget {
  static const String id = '/collection/import';
  const ImportCollectionScreen({Key? key}) : super(key: key);

  @override
  State<ImportCollectionScreen> createState() => _ImportCollectionScreenState();
}

class _ImportCollectionScreenState extends State<ImportCollectionScreen> {
  late FocusNode _focusNode;
  late ImportCollectionBloc _bloc;
  @override
  void initState() {
    _focusNode = FocusNode();
    _bloc = context.read<ImportCollectionBloc>();
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _focusNode.addListener(checkFocusAddress);
    });
  }

  void checkFocusAddress() {
    if (!_focusNode.hasFocus) {
      _bloc.add(const ImportCollectionEvent.validAddress());
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(checkFocusAddress);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<ImportCollectionBloc, ImportCollectionState>(
      listener: (context, state) {
        switch (state.status.runtimeType) {
          case Loading:
            showLoadingDialog();
            break;
          case Success:
            hideLoadingDialog();
            Navigator.of(context, rootNavigator: true).pop(true);
            break;
          case Error:
            hideLoadingDialog();
            if (state.status is ValidError) {
              showErrorDialog(context, message: s.validAddressFailure);
            } else {
              showErrorDialog(context, message: s.somethingHappenedWrong);
            }
            break;
          case Idle:
            hideLoadingDialog();
            break;
          default:
            hideLoadingDialog();
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.kColor1,
        appBar: Utils.buildAppBar(context, title: s.importCollection),
        body: Container(
          padding: EdgeInsets.all(24.w),
          child: Column(
            children: [
              PrimaryTextField(
                focusNode: _focusNode,
                hint: '0x...',
                title: s.address,
                onChanged: (value) {
                  _bloc.add(ImportCollectionEvent.onAddressChanged(value));
                },
              ),
              BlocBuilder<ImportCollectionBloc, ImportCollectionState>(
                builder: (context, state) {
                  if (state.isValidAddress) {
                    return Expanded(
                      child: Column(
                        children: [
                          24.verticalSpace,
                          PrimaryTextField(
                            enable: false,
                            controller: _bloc.state.controllerName,
                            title: s.name,
                            onChanged: (value) {},
                          ),
                          Expanded(child: Container()),
                          PrimaryButtonMedium(
                            title: s.addCollection,
                            onTap: () {
                              _bloc.add(const ImportCollectionEvent.import());
                            },
                          ),
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
      ),
    );
  }
}
