// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i6;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../constants/app_prefs.dart' as _i11;
import '../models/prefs/configspref.dart' as _i5;
import '../models/prefs/walletpref.dart' as _i10;
import '../services/local/local_provider.dart' as _i15;
import '../services/local/local_repository.dart' as _i12;
import '../services/remote/remote_provider.dart' as _i14;
import '../services/remote/remote_repository.dart' as _i9;
import '../view_models/app_bloc/app_bloc.dart' as _i3;
import '../view_models/auth_bloc/auth_bloc.dart' as _i16;
import '../view_models/dashboard_bloc/dashboard_bloc.dart' as _i7;
import '../view_models/import_wallet_bloc/import_wallet_bloc.dart' as _i17;
import '../view_models/login_bloc/login_bloc.dart' as _i8;
import '../view_models/passcode_bloc/passcode_bloc.dart' as _i13;
import '../view_models/splash_bloc/splash/splash_bloc.dart' as _i18;
import 'di_module/hive_module.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i13.PasscodeBloc>(() => _i13.PasscodeBloc(get<_i11.AppPref>()));
  gh.singleton<_i14.RemoteProvider>(
      _i14.RemoteProvider(repo: get<_i9.RemoteRepository>()));
  gh.singleton<_i15.LocalProvider>(
      _i15.LocalProvider(repo: get<_i12.LocalRepository>()));
  gh.singleton<_i16.AuthBloc>(_i16.AuthBloc(get<_i15.LocalProvider>()));
  gh.factory<_i17.ImportWalletBloc>(() => _i17.ImportWalletBloc(
      get<_i14.RemoteProvider>(), get<_i15.LocalProvider>()));
  gh.factory<_i18.SplashBloc>(
      () => _i18.SplashBloc(get<_i16.AuthBloc>(), get<_i15.LocalProvider>()));
  return get;
}

class _$HiveModule extends _i19.HiveModule {}
