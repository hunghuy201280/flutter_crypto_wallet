import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc(this.localProvider)
      : super(ChangePasswordState.initial()) {
    _mapEventToState();
  }

  final LocalProvider localProvider;

  //#region mapEventToState
  void _mapEventToState() {
    on<ChangePasswordConfirmed>((event, emit) {
      // TODO: implement event handler
    });
    on<ChangePasswordSubmitted>((event, emit) {
      // TODO: implement event handler
    });
    on<ChangePasswordCheckboxTapped>((event, emit) {
      emit(
        state.copyWith(isChecked: !state.isChecked),
      );
    });
  }

  //#endregion
}
