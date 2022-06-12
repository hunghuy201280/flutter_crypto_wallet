import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_crypto_wallet/constants/constants.dart';
import 'package:flutter_crypto_wallet/models/transaction/transaction.dart';
import 'package:flutter_crypto_wallet/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../services/remote/remote_provider.dart';
import '../../utils/helpers/status.dart';
import '../auth_bloc/auth_bloc.dart';

part 'statistic_bloc.freezed.dart';
part 'statistic_event.dart';
part 'statistic_state.dart';

@injectable
class StatisticBloc extends Bloc<StatisticEvent, StatisticState> {
  StatisticBloc({
    required this.remoteProvider,
    @factoryParam required this.authBloc,
  }) : super(StatisticState.initial()) {
    _mapEventToState();

    authSubscription = authBloc.stream.listen((authState) {
      if (authState is Authenticated) {
        add(const StatisticEvent.loaded());
      }
    });
  }

  @override
  Future<void> close() {
    authSubscription?.cancel();
    return super.close();
  }

  final RemoteProvider remoteProvider;
  final AuthBloc authBloc;
  int page = 1;
  bool isEnd = false;

  StreamSubscription? authSubscription;
  Authenticated get _authState => authBloc.state as Authenticated;
  void _mapEventToState() {
    on<StatisticLoaded>(_loadedToState);
    on<StatisticMoreLoaded>(_moreLoadedToState);
  }

  FutureOr<void> _loadedToState(
      StatisticLoaded event, Emitter<StatisticState> emit) async {
    page = 1;
    isEnd = false;
    if (authBloc.state is! Authenticated) {
      return;
    }
    try {
      emit(state.copyWith(status: const Loading()));
      final response = await remoteProvider.getTransactionHistory(
        address: _authState.wallet.address,
        pageSize: kLazyLoadingPageSize,
        page: page,
      );
      if (response.error) {
        throw response.message;
      }

      emit(
        state.copyWith(
          transactions: response.result!,
          status: const Success(),
        ),
      );
    } catch (e, trace) {
      printLog(
        this,
        message: "Error",
        error: e,
        trace: trace,
      );
      emit(state.copyWith(status: const Error()));
    } finally {
      emit(state.copyWith(status: const Idle()));
    }
  }

  FutureOr<void> _moreLoadedToState(event, Emitter<StatisticState> emit) async {
    if (authBloc.state is! Authenticated ||
        state.status is MoreLoading ||
        state.status is Loading ||
        isEnd) {
      return;
    }
    try {
      emit(state.copyWith(status: const MoreLoading()));
      final response = await remoteProvider.getTransactionHistory(
        address: _authState.wallet.address,
        pageSize: kLazyLoadingPageSize,
        page: ++page,
      );
      if (response.error) {
        throw response.message;
      }
      if (response.result!.isEmpty) {
        isEnd = true;
      }
      emit(
        state.copyWith(
          transactions: [...state.transactions, ...response.result!],
          status: const Idle(),
        ),
      );
    } catch (e, trace) {
      printLog(
        this,
        message: "Error",
        error: e,
        trace: trace,
      );
      emit(state.copyWith(status: const Error()));
    } finally {
      emit(state.copyWith(status: const Idle()));
    }
  }
}
