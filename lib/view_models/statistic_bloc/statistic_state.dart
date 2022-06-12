part of 'statistic_bloc.dart';

@freezed
class StatisticState with _$StatisticState {
  const StatisticState._();
  const factory StatisticState({
    required List<Transaction> transactions,
    required Status status,
  }) = _StatisticState;

  factory StatisticState.initial() =>
      const StatisticState(transactions: [], status: Idle());
}

class MoreLoading extends Status{
  const MoreLoading([data]) : super(data);

}