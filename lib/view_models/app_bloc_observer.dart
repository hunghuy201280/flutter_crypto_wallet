import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    printLog(this, message: change);
    super.onChange(bloc, change);
  }

  @override
  void onClose(BlocBase bloc) {
    printLog(this, message: "Close $bloc");
    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    printLog(this, message: "Create $bloc");
    super.onCreate(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    printLog(this, message: "Error", error: error, trace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    printLog(this, message: event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    printLog(this, message: transition);
    super.onTransition(bloc, transition);
  }
}
