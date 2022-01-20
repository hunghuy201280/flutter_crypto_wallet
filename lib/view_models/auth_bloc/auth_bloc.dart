import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/constants/app_boxs.dart';
import 'package:flutter_ntf_marketplace/constants/app_prefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unauthenticated()) {
    on<_AuthInitial>((event, emit) async {
      emit(await _appStart());
    });
    on<_AuthLoggedIn>((event, emit) => {

    });
    on<_AuthLoggedOut>((event, emit) => {
      
    });
  }

  Future<AuthState> _appStart() async {
    await _clearIfFirstRunAfterUninstall();

    var box = await Hive.openBox(AppHiveBoxs.config);

    var privateKey = await box.get(AppPref.config.privateKey);
    if (privateKey != null) {
      return Authenticated(privateKey: privateKey!.toString());
    } else {
      return const UnAuthenticated();
    }
  }

  Future<void> _clearIfFirstRunAfterUninstall() async {
    var box = await Hive.openBox(AppHiveBoxs.config);

    if (box.get(AppPref.config.firstRun) ?? true) {
      await box.delete(AppPref.config.privateKey);
      await box.put(AppPref.config.firstRun, false);
    }
  }
}
