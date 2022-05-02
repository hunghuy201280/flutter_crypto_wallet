// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i6;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../constants/app_prefs.dart' as _i11;
import '../entities/prefs/configspref.dart' as _i5;
import '../entities/prefs/walletpref.dart' as _i10;
import '../services/local/local_provider.dart' as _i14;
import '../services/local/local_repository.dart' as _i12;
import '../services/remote/remote_provider.dart' as _i13;
import '../services/remote/remote_repository.dart' as _i9;
import '../view_models/app_bloc/app_bloc.dart' as _i3;
import '../view_models/auth_bloc/auth_bloc.dart' as _i17;
import '../view_models/create_wallet_bloc/create_wallet_bloc.dart' as _i18;
import '../view_models/dashboard_bloc/dashboard_bloc.dart' as _i7;
import '../view_models/import_wallet_bloc/import_wallet_bloc.dart' as _i19;
import '../view_models/login_bloc/login_bloc.dart' as _i8;
import '../view_models/onboard_cubit/onboard_cubit.dart' as _i15;
import '../view_models/passcode_bloc/passcode_bloc.dart' as _i16;
import '../view_models/splash_bloc/splash_bloc.dart' as _i20;
import 'di_module/hive_module.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveModule = _$HiveModule();
  gh.singleton<_i3.AppBloc>(_i3.AppBloc());
  gh.factory<_i4.Box<dynamic>>(() => hiveModule.getConfigPrefBox(),
      instanceName: 'CONFIG_BOX');
  gh.factory<_i4.Box<dynamic>>(() => hiveModule.getWalletPrefBox(),
      instanceName: 'WALLET_BOX');
  gh.singleton<_i5.ConfigsPref>(
      _i5.ConfigsPref(box: get<_i6.Box<dynamic>>(instanceName: 'CONFIG_BOX')));
  gh.factory<_i7.DashboardBloc>(() => _i7.DashboardBloc());
  gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc());
  gh.singleton<_i9.RemoteRepository>(_i9.RemoteRepository());
  gh.singleton<_i10.WalletPref>(
      _i10.WalletPref(box: get<_i6.Box<dynamic>>(instanceName: 'WALLET_BOX')));
  gh.singleton<_i11.AppPref>(_i11.AppPref(
      config: get<_i5.ConfigsPref>(), wallet: get<_i10.WalletPref>()));
  gh.singleton<_i12.LocalRepository>(
      _i12.LocalRepository(appPref: get<_i11.AppPref>()));
  gh.singleton<_i13.RemoteProvider>(
      _i13.RemoteProvider(repo: get<_i9.RemoteRepository>()));
  gh.singleton<_i14.LocalProvider>(
      _i14.LocalProvider(repo: get<_i12.LocalRepository>()));
  gh.factory<_i15.OnboardCubit>(
      () => _i15.OnboardCubit(get<_i14.LocalProvider>()));
  gh.factory<_i16.PasscodeBloc>(
      () => _i16.PasscodeBloc(get<_i14.LocalProvider>()));
  gh.singleton<_i17.AuthBloc>(_i17.AuthBloc(get<_i14.LocalProvider>()));
  gh.factory<_i18.CreateWalletBloc>(() => _i18.CreateWalletBloc(
      get<_i13.RemoteProvider>(), get<_i14.LocalProvider>()));
  gh.factory<_i19.ImportWalletBloc>(() => _i19.ImportWalletBloc(
      get<_i13.RemoteProvider>(), get<_i14.LocalProvider>()));
  gh.factory<_i20.SplashBloc>(
      () => _i20.SplashBloc(get<_i17.AuthBloc>(), get<_i14.LocalProvider>()));
  return get;
}

class _$HiveModule extends _i21.HiveModule {}
