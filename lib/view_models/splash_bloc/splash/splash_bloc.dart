import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/constants/app_boxs.dart';
import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'splash_state.dart';
part 'splash_event.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<_Init>((event, emit) async {
      emit(await _appStart());
    });
  }

  Future<SplashState> _appStart() async {
    var boxConfig = await Hive.openBox(AppHiveBoxs.config);
    return SplashState.firstRun(
        value: boxConfig.get(AppPref.config.firstRun) ?? true);
  }
}
