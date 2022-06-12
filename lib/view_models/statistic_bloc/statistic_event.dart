part of 'statistic_bloc.dart';

@freezed
class StatisticEvent with _$StatisticEvent {
  const factory StatisticEvent.loaded() = StatisticLoaded;
  const factory StatisticEvent.moreLoaded() = StatisticMoreLoaded;
}
