import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unauthenticated()) {
    on<_AppStarted>((event, emit) => {});
    on<_LoggedIn>((event, emit) => {});
    on<_LoggedOut>((event, emit) => {});
    
  }
}
