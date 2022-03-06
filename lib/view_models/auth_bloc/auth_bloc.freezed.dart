// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AuthInitial initial() {
    return const _AuthInitial();
  }

  _AuthLoggedIn loggedIn() {
    return const _AuthLoggedIn();
  }

  _AuthLoggedOut loggedOut() {
    return const _AuthLoggedOut();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoggedIn value) loggedIn,
    required TResult Function(_AuthLoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoggedIn value)? loggedIn,
    TResult Function(_AuthLoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoggedIn value)? loggedIn,
    TResult Function(_AuthLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$AuthInitialCopyWith<$Res> {
  factory _$AuthInitialCopyWith(
          _AuthInitial value, $Res Function(_AuthInitial) then) =
      __$AuthInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthInitialCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthInitialCopyWith<$Res> {
  __$AuthInitialCopyWithImpl(
      _AuthInitial _value, $Res Function(_AuthInitial) _then)
      : super(_value, (v) => _then(v as _AuthInitial));

  @override
  _AuthInitial get _value => super._value as _AuthInitial;
}

/// @nodoc

class _$_AuthInitial implements _AuthInitial {
  const _$_AuthInitial();

  @override
  String toString() {
    return 'AuthEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoggedIn value) loggedIn,
    required TResult Function(_AuthLoggedOut value) loggedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoggedIn value)? loggedIn,
    TResult Function(_AuthLoggedOut value)? loggedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoggedIn value)? loggedIn,
    TResult Function(_AuthLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitial implements AuthEvent {
  const factory _AuthInitial() = _$_AuthInitial;
}

/// @nodoc
abstract class _$AuthLoggedInCopyWith<$Res> {
  factory _$AuthLoggedInCopyWith(
          _AuthLoggedIn value, $Res Function(_AuthLoggedIn) then) =
      __$AuthLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthLoggedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthLoggedInCopyWith<$Res> {
  __$AuthLoggedInCopyWithImpl(
      _AuthLoggedIn _value, $Res Function(_AuthLoggedIn) _then)
      : super(_value, (v) => _then(v as _AuthLoggedIn));

  @override
  _AuthLoggedIn get _value => super._value as _AuthLoggedIn;
}

/// @nodoc

class _$_AuthLoggedIn implements _AuthLoggedIn {
  const _$_AuthLoggedIn();

  @override
  String toString() {
    return 'AuthEvent.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoggedIn value) loggedIn,
    required TResult Function(_AuthLoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoggedIn value)? loggedIn,
    TResult Function(_AuthLoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoggedIn value)? loggedIn,
    TResult Function(_AuthLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _AuthLoggedIn implements AuthEvent {
  const factory _AuthLoggedIn() = _$_AuthLoggedIn;
}

/// @nodoc
abstract class _$AuthLoggedOutCopyWith<$Res> {
  factory _$AuthLoggedOutCopyWith(
          _AuthLoggedOut value, $Res Function(_AuthLoggedOut) then) =
      __$AuthLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthLoggedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthLoggedOutCopyWith<$Res> {
  __$AuthLoggedOutCopyWithImpl(
      _AuthLoggedOut _value, $Res Function(_AuthLoggedOut) _then)
      : super(_value, (v) => _then(v as _AuthLoggedOut));

  @override
  _AuthLoggedOut get _value => super._value as _AuthLoggedOut;
}

/// @nodoc

class _$_AuthLoggedOut implements _AuthLoggedOut {
  const _$_AuthLoggedOut();

  @override
  String toString() {
    return 'AuthEvent.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoggedIn value) loggedIn,
    required TResult Function(_AuthLoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoggedIn value)? loggedIn,
    TResult Function(_AuthLoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoggedIn value)? loggedIn,
    TResult Function(_AuthLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _AuthLoggedOut implements AuthEvent {
  const factory _AuthLoggedOut() = _$_AuthLoggedOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  UnAuthenticated unauthenticated() {
    return const UnAuthenticated();
  }

  AuthenticatedNoPassword authenticatedNoPassword(
      {required String walletAddress}) {
    return AuthenticatedNoPassword(
      walletAddress: walletAddress,
    );
  }

  Authenticated authenticated({required Wallet wallet}) {
    return Authenticated(
      wallet: wallet,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(String walletAddress) authenticatedNoPassword,
    required TResult Function(Wallet wallet) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthenticatedNoPassword value)
        authenticatedNoPassword,
    required TResult Function(Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthenticatedNoPassword value)? authenticatedNoPassword,
    TResult Function(Authenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthenticatedNoPassword value)? authenticatedNoPassword,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

/// @nodoc

class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(String walletAddress) authenticatedNoPassword,
    required TResult Function(Wallet wallet) authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthenticatedNoPassword value)
        authenticatedNoPassword,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthenticatedNoPassword value)? authenticatedNoPassword,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthenticatedNoPassword value)? authenticatedNoPassword,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthState {
  const factory UnAuthenticated() = _$UnAuthenticated;
}

/// @nodoc
abstract class $AuthenticatedNoPasswordCopyWith<$Res> {
  factory $AuthenticatedNoPasswordCopyWith(AuthenticatedNoPassword value,
          $Res Function(AuthenticatedNoPassword) then) =
      _$AuthenticatedNoPasswordCopyWithImpl<$Res>;
  $Res call({String walletAddress});
}

/// @nodoc
class _$AuthenticatedNoPasswordCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedNoPasswordCopyWith<$Res> {
  _$AuthenticatedNoPasswordCopyWithImpl(AuthenticatedNoPassword _value,
      $Res Function(AuthenticatedNoPassword) _then)
      : super(_value, (v) => _then(v as AuthenticatedNoPassword));

  @override
  AuthenticatedNoPassword get _value => super._value as AuthenticatedNoPassword;

  @override
  $Res call({
    Object? walletAddress = freezed,
  }) {
    return _then(AuthenticatedNoPassword(
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticatedNoPassword implements AuthenticatedNoPassword {
  const _$AuthenticatedNoPassword({required this.walletAddress});

  @override
  final String walletAddress;

  @override
  String toString() {
    return 'AuthState.authenticatedNoPassword(walletAddress: $walletAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticatedNoPassword &&
            const DeepCollectionEquality()
                .equals(other.walletAddress, walletAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(walletAddress));

  @JsonKey(ignore: true)
  @override
  $AuthenticatedNoPasswordCopyWith<AuthenticatedNoPassword> get copyWith =>
      _$AuthenticatedNoPasswordCopyWithImpl<AuthenticatedNoPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(String walletAddress) authenticatedNoPassword,
    required TResult Function(Wallet wallet) authenticated,
  }) {
    return authenticatedNoPassword(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
  }) {
    return authenticatedNoPassword?.call(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticatedNoPassword != null) {
      return authenticatedNoPassword(walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthenticatedNoPassword value)
        authenticatedNoPassword,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticatedNoPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthenticatedNoPassword value)? authenticatedNoPassword,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return authenticatedNoPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthenticatedNoPassword value)? authenticatedNoPassword,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticatedNoPassword != null) {
      return authenticatedNoPassword(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedNoPassword implements AuthState {
  const factory AuthenticatedNoPassword({required String walletAddress}) =
      _$AuthenticatedNoPassword;

  String get walletAddress;
  @JsonKey(ignore: true)
  $AuthenticatedNoPasswordCopyWith<AuthenticatedNoPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({Wallet wallet});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(Authenticated(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }

  @override
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated({required this.wallet});

  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'AuthState.authenticated(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authenticated &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(String walletAddress) authenticatedNoPassword,
    required TResult Function(Wallet wallet) authenticated,
  }) {
    return authenticated(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
  }) {
    return authenticated?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(String walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(AuthenticatedNoPassword value)
        authenticatedNoPassword,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthenticatedNoPassword value)? authenticatedNoPassword,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(AuthenticatedNoPassword value)? authenticatedNoPassword,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated({required Wallet wallet}) = _$Authenticated;

  Wallet get wallet;
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
