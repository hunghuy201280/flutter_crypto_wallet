import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../constants/app_prefs.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<_Init>((event, emit) async {
      emit(await _appStart());
    });
  }

  final _appPref = Get.find<AppPref>();
  Future<SplashState> _appStart() async {
    final config = _appPref.config;
    return SplashState.firstRun(value: config.firstRun);
  }
}
