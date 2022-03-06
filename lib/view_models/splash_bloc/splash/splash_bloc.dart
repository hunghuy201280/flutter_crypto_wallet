import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../constants/app_prefs.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final _localProvider = Get.find<LocalProvider>();
  final AuthBloc _authBloc;
  SplashBloc(this._authBloc) : super(const SplashState.initial()) {
    on<_Init>((event, emit) async {
      final passCode = _localProvider.getPasscode();

      if (passCode.isEmpty) {
        emit(await _appStart());
      } else {
        _authBloc.add(const AuthEvent.initial());
      }
    });
  }
  Future<SplashState> _appStart() async {
    return SplashState.firstRun(value: _localProvider.isFirstRunApp());
  }
}
