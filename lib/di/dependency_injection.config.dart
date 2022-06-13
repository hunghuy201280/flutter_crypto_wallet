// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../constants/app_prefs.dart' as _i10;
import '../models/prefs/configspref.dart' as _i4;
import '../models/prefs/walletpref.dart' as _i9;
import '../services/local/local_provider.dart' as _i15;
import '../services/local/local_repository.dart' as _i11;
import '../services/remote/remote_provider.dart' as _i12;
import '../services/remote/remote_repository.dart' as _i8;
import '../view_models/account_selector_bloc/account_selector_bloc.dart'
    as _i22;
import '../view_models/app_bloc/app_bloc.dart' as _i23;
import '../view_models/auth_bloc/auth_bloc.dart' as _i14;
import '../view_models/change_password_bloc/change_password_bloc.dart' as _i24;
import '../view_models/confirm_password_bloc/confirm_password_bloc.dart'
    as _i25;
import '../view_models/create_wallet_bloc/create_wallet_bloc.dart' as _i26;
import '../view_models/dashboard_bloc/dashboard_bloc.dart' as _i5;
import '../view_models/import_account_bloc/import_account_bloc.dart' as _i27;
import '../view_models/import_collection_bloc/import_collection_bloc.dart'
    as _i28;
import '../view_models/import_token_bloc/import_token_bloc.dart' as _i29;
import '../view_models/import_wallet_bloc/import_wallet_bloc.dart' as _i30;
import '../view_models/login_bloc/login_bloc.dart' as _i7;
import '../view_models/onboard_cubit/onboard_cubit.dart' as _i16;
import '../view_models/passcode_bloc/passcode_bloc.dart' as _i17;
import '../view_models/splash_bloc/splash_bloc.dart' as _i18;
import '../view_models/statistic_bloc/statistic_bloc.dart' as _i13;
import '../view_models/wallet_detail_bloc/wallet_detail_bloc.dart' as _i19;
import '../view_models/withdraw_bloc/withdraw_bloc.dart' as _i20;
import '../view_models/withdraw_nft_bloc/withdraw_nft_bloc.dart' as _i21;
import 'di_module/hive_module.dart'
    as _i31; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveModule = _$HiveModule();
  gh.factory<_i3.Box<dynamic>>(() => hiveModule.getConfigPrefBox(),
      instanceName: 'CONFIG_BOX');
  gh.factory<_i3.Box<dynamic>>(() => hiveModule.getWalletPrefBox(),
      instanceName: 'WALLET_BOX');
  gh.singleton<_i4.ConfigsPref>(
      _i4.ConfigsPref(box: get<_i3.Box<dynamic>>(instanceName: 'CONFIG_BOX')));
  gh.factory<_i5.DashboardBloc>(() => _i5.DashboardBloc());
  gh.singleton<_i6.Dio>(hiveModule.getDio());
  gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc());
  gh.singleton<_i8.RemoteRepository>(_i8.RemoteRepository(get<_i6.Dio>()));
  gh.factory<String>(() => hiveModule.getBaseUrl(), instanceName: 'BaseUrl');
  gh.singleton<_i9.WalletPref>(
      _i9.WalletPref(box: get<_i3.Box<dynamic>>(instanceName: 'WALLET_BOX')));
  gh.singleton<_i10.AppPref>(_i10.AppPref(
      config: get<_i4.ConfigsPref>(), wallet: get<_i9.WalletPref>()));
  gh.singleton<_i11.LocalRepository>(
      _i11.LocalRepository(appPref: get<_i10.AppPref>()));
  gh.singleton<_i12.RemoteProvider>(
      _i12.RemoteProvider(repo: get<_i8.RemoteRepository>()));
  gh.factoryParam<_i13.StatisticBloc, _i14.AuthBloc, dynamic>((authBloc, _) =>
      _i13.StatisticBloc(
          remoteProvider: get<_i12.RemoteProvider>(), authBloc: authBloc));
  gh.singleton<_i15.LocalProvider>(
      _i15.LocalProvider(repo: get<_i11.LocalRepository>()));
  gh.factory<_i16.OnboardCubit>(
      () => _i16.OnboardCubit(get<_i15.LocalProvider>()));
  gh.factoryParam<_i17.PasscodeBloc, _i14.AuthBloc, dynamic>((_authBloc, _) =>
      _i17.PasscodeBloc(get<_i15.LocalProvider>(), _authBloc));
  gh.factoryParam<_i18.SplashBloc, _i14.AuthBloc?, dynamic>(
      (_authBloc, _) => _i18.SplashBloc(_authBloc, get<_i15.LocalProvider>()));
  gh.factoryParam<_i19.WalletDetailBloc, _i14.AuthBloc, dynamic>(
      (_authBloc, _) => _i19.WalletDetailBloc(
          get<_i12.RemoteProvider>(), _authBloc, get<_i15.LocalProvider>()));
  gh.factoryParam<_i20.WithdrawBloc, _i14.AuthBloc, dynamic>((_authBloc, _) =>
      _i20.WithdrawBloc(
          get<_i15.LocalProvider>(), get<_i12.RemoteProvider>(), _authBloc));
  gh.factoryParam<_i21.WithdrawNftBloc, _i14.AuthBloc, dynamic>(
      (_authBloc, _) => _i21.WithdrawNftBloc(
          get<_i12.RemoteProvider>(), get<_i15.LocalProvider>(), _authBloc));
  gh.factoryParam<_i22.AccountSelectorBloc, _i14.AuthBloc, dynamic>(
      (_authBloc, _) => _i22.AccountSelectorBloc(
          get<_i15.LocalProvider>(), _authBloc, get<_i12.RemoteProvider>()));
  gh.factory<_i23.AppBloc>(
      () => _i23.AppBloc(localProvider: get<_i15.LocalProvider>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i15.LocalProvider>()));
  gh.factory<_i24.ChangePasswordBloc>(
      () => _i24.ChangePasswordBloc(get<_i15.LocalProvider>()));
  gh.factory<_i25.ConfirmPasswordBloc>(
      () => _i25.ConfirmPasswordBloc(get<_i15.LocalProvider>()));
  gh.factoryParam<_i26.CreateWalletBloc, _i14.AuthBloc, dynamic>(
      (_authBloc, _) => _i26.CreateWalletBloc(
          get<_i12.RemoteProvider>(), get<_i15.LocalProvider>(), _authBloc));
  gh.factory<_i27.ImportAccountBloc>(() => _i27.ImportAccountBloc(
      get<_i12.RemoteProvider>(), get<_i15.LocalProvider>()));
  gh.factoryParam<_i28.ImportCollectionBloc, _i14.AuthBloc, dynamic>(
      (_authBloc, _) => _i28.ImportCollectionBloc(
          get<_i12.RemoteProvider>(), get<_i15.LocalProvider>(), _authBloc));
  gh.factory<_i29.ImportTokenBloc>(() => _i29.ImportTokenBloc(
      get<_i12.RemoteProvider>(), get<_i15.LocalProvider>()));
  gh.factoryParam<_i30.ImportWalletBloc, _i14.AuthBloc, dynamic>(
      (_authBloc, _) => _i30.ImportWalletBloc(
          get<_i12.RemoteProvider>(), get<_i15.LocalProvider>(), _authBloc));
  return get;
}

class _$HiveModule extends _i31.HiveModule {}
