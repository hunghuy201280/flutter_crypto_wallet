import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/token/token.dart';

part 'withdraw_state.dart';
part 'withdraw_event.dart';
part 'withdraw_bloc.freezed.dart';

@injectable
class WithdrawBloc extends Bloc<WithdrawEvent,WithdrawState>{
  WithdrawBloc() : super(const WithdrawState()) {
  }
}