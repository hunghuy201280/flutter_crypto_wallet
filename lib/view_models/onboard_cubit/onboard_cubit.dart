import 'package:bloc/bloc.dart';
import 'package:flutter_crypto_wallet/services/local/local_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'onboard_cubit.freezed.dart';
part 'onboard_state.dart';

@injectable
class OnboardCubit extends Cubit<OnboardState> {
  final LocalProvider _localProvider;
  OnboardCubit(this._localProvider) : super(const OnboardState.initial());

  Future<void> actionSkipOnboard() async {
    await _localProvider.saveStateFirstRunApp(isFirstRun: false);
    emit(const OnboardState.actionSuccess());
  }
}
