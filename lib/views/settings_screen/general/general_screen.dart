import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ntf_marketplace/configs/color_config.dart';
import 'package:flutter_ntf_marketplace/generated/l10n.dart';
import 'package:flutter_ntf_marketplace/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../view_models/app_bloc/app_bloc.dart';
import 'general_item_dropdown.dart';
import 'widgets/general_item.dart';

class GeneralScreen extends StatefulWidget {
  static const String id = 'setting/general';
  const GeneralScreen({Key? key}) : super(key: key);

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  late AppBloc appBloc;

  @override
  void initState() {
    super.initState();
    appBloc = context.read<AppBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      backgroundColor: AppColors.kColor1,
      appBar: Utils.buildAppBar(
        context,
        title: s.general,
        centerTitle: true,
      ),
      body: _bodyScreen(),
    );
  }

  Widget _bodyScreen() {
    final s = S.of(context);

    return ListView(
      shrinkWrap: true,
      children: [
        GeneralItem<String>(
          title: s.currencyConversion,
          description:
              'Updated Sun Mar 27 2022 21:18:27 GMT+0700 (Indochina Time)',
          items: [
            GeneralItemDropdown('USD - United States dollar', 'usd'),
            GeneralItemDropdown('VND - Viet Nam Dong', 'vnd')
          ],
          onSelected: (value) {
            print(value);
          },
        ),
        32.verticalSpace,
        GeneralItem<String>(
          title: s.currentLanguage,
          description: 'English',
          items: [
            GeneralItemDropdown('English', 'en'),
            GeneralItemDropdown('Vietnamese', 'vi')
          ],
          onSelected: (value) {
            appBloc.add(AppLocaleChanged(Locale(value)));
          },
        ),
      ],
    );
  }
}
