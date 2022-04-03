import 'package:bloc/bloc.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/view_models/auth_bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final LocalProvider _localProvider;
  final AuthBloc _authBloc;
  SplashBloc(this._authBloc, this._localProvider)
      : super(const SplashState.initial()) {
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
