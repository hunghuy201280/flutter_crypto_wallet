import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    _mapEventToState();
  }

  void _mapEventToState() {
    on<AppLocaleChanged>((event, emit) {
      emit(state.copyWith(locale: event.locale));
    });
  }
}
