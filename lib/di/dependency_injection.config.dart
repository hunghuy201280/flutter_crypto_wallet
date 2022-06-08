// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../constants/app_prefs.dart' as _i11;
import '../models/prefs/configspref.dart' as _i5;
import '../models/prefs/walletpref.dart' as _i10;
import '../models/wallet/wallet.dart' as _i21;
import '../services/local/local_provider.dart' as _i14;
import '../services/local/local_repository.dart' as _i12;
import '../services/remote/remote_provider.dart' as _i13;
import '../services/remote/remote_repository.dart' as _i9;
import '../view_models/account_selector_bloc/account_selector_bloc.dart'
    as _i20;
import '../view_models/app_bloc/app_bloc.dart' as _i3;
import '../view_models/auth_bloc/auth_bloc.dart' as _i17;
import '../view_models/change_password_bloc/change_password_bloc.dart' as _i22;
import '../view_models/create_wallet_bloc/create_wallet_bloc.dart' as _i23;
import '../view_models/dashboard_bloc/dashboard_bloc.dart' as _i6;
import '../view_models/import_account_bloc/import_account_bloc.dart' as _i24;
import '../view_models/import_token_bloc/import_token_bloc.dart' as _i25;
import '../view_models/import_wallet_bloc/import_wallet_bloc.dart' as _i26;
import '../view_models/login_bloc/login_bloc.dart' as _i8;
import '../view_models/onboard_cubit/onboard_cubit.dart' as _i15;
import '../view_models/passcode_bloc/passcode_bloc.dart' as _i16;
import '../view_models/splash_bloc/splash_bloc.dart' as _i18;
import '../view_models/wallet_detail_bloc/wallet_detail_bloc.dart' as _i19;
import 'di_module/hive_module.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveModule = _$HiveModule();
  gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
  gh.factory<_i4.Box<dynamic>>(() => hiveModule.getConfigPrefBox(),
      instanceName: 'CONFIG_BOX');
  gh.factory<_i4.Box<dynamic>>(() => hiveModule.getWalletPrefBox(),
      instanceName: 'WALLET_BOX');
  gh.singleton<_i5.ConfigsPref>(
      _i5.ConfigsPref(box: get<_i4.Box<dynamic>>(instanceName: 'CONFIG_BOX')));
  gh.factory<_i6.DashboardBloc>(() => _i6.DashboardBloc());
  gh.singleton<_i7.Dio>(hiveModule.getDio());
  gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc());
  gh.singleton<_i9.RemoteRepository>(_i9.RemoteRepository(get<_i7.Dio>()));
  gh.factory<String>(() => hiveModule.getBaseUrl(), instanceName: 'BaseUrl');
  gh.singleton<_i10.WalletPref>(
      _i10.WalletPref(box: get<_i4.Box<dynamic>>(instanceName: 'WALLET_BOX')));
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
  gh.factoryParam<_i16.PasscodeBloc, _i17.AuthBloc, dynamic>((_authBloc, _) =>
      _i16.PasscodeBloc(get<_i14.LocalProvider>(), _authBloc));
  gh.factoryParam<_i18.SplashBloc, _i17.AuthBloc?, dynamic>(
      (_authBloc, _) => _i18.SplashBloc(_authBloc, get<_i14.LocalProvider>()));
  gh.factoryParam<_i19.WalletDetailBloc, _i17.AuthBloc, dynamic>(
      (_authBloc, _) => _i19.WalletDetailBloc(
          get<_i13.RemoteProvider>(), _authBloc, get<_i14.LocalProvider>()));
  gh.factoryParam<_i20.AccountSelectorBloc, _i21.Wallet, _i17.AuthBloc>(
      (selectedWallet, authBloc) => _i20.AccountSelectorBloc(
          selectedWallet, get<_i14.LocalProvider>(), authBloc));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i14.LocalProvider>()));
  gh.factory<_i22.ChangePasswordBloc>(
      () => _i22.ChangePasswordBloc(get<_i14.LocalProvider>()));
  gh.factoryParam<_i23.CreateWalletBloc, _i17.AuthBloc, dynamic>(
      (_authBloc, _) => _i23.CreateWalletBloc(
          get<_i13.RemoteProvider>(), get<_i14.LocalProvider>(), _authBloc));
  gh.factory<_i24.ImportAccountBloc>(() => _i24.ImportAccountBloc(
      get<_i13.RemoteProvider>(), get<_i14.LocalProvider>()));
  gh.factory<_i25.ImportTokenBloc>(() => _i25.ImportTokenBloc(
      get<_i13.RemoteProvider>(), get<_i14.LocalProvider>()));
  gh.factoryParam<_i26.ImportWalletBloc, _i17.AuthBloc, dynamic>(
      (_authBloc, _) => _i26.ImportWalletBloc(
          get<_i13.RemoteProvider>(), get<_i14.LocalProvider>(), _authBloc));
  return get;
}

class _$HiveModule extends _i27.HiveModule {}
