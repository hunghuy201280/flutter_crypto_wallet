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

  AuthInitial initial() {
    return const AuthInitial();
  }

  AuthLoggedIn loggedIn(Wallet selectedWallet) {
    return AuthLoggedIn(
      selectedWallet,
    );
  }

  AuthLoggedOut loggedOut() {
    return const AuthLoggedOut();
  }

  AuthPasscodeChanged passcodeChanged() {
    return const AuthPasscodeChanged();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Wallet selectedWallet) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() passcodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthPasscodeChanged value) passcodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
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
abstract class $AuthInitialCopyWith<$Res> {
  factory $AuthInitialCopyWith(
          AuthInitial value, $Res Function(AuthInitial) then) =
      _$AuthInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthInitialCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthInitialCopyWith<$Res> {
  _$AuthInitialCopyWithImpl(
      AuthInitial _value, $Res Function(AuthInitial) _then)
      : super(_value, (v) => _then(v as AuthInitial));

  @override
  AuthInitial get _value => super._value as AuthInitial;
}

/// @nodoc

class _$AuthInitial implements AuthInitial {
  const _$AuthInitial();

  @override
  String toString() {
    return 'AuthEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Wallet selectedWallet) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() passcodeChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthPasscodeChanged value) passcodeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthEvent {
  const factory AuthInitial() = _$AuthInitial;
}

/// @nodoc
abstract class $AuthLoggedInCopyWith<$Res> {
  factory $AuthLoggedInCopyWith(
          AuthLoggedIn value, $Res Function(AuthLoggedIn) then) =
      _$AuthLoggedInCopyWithImpl<$Res>;
  $Res call({Wallet selectedWallet});

  $WalletCopyWith<$Res> get selectedWallet;
}

/// @nodoc
class _$AuthLoggedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLoggedInCopyWith<$Res> {
  _$AuthLoggedInCopyWithImpl(
      AuthLoggedIn _value, $Res Function(AuthLoggedIn) _then)
      : super(_value, (v) => _then(v as AuthLoggedIn));

  @override
  AuthLoggedIn get _value => super._value as AuthLoggedIn;

  @override
  $Res call({
    Object? selectedWallet = freezed,
  }) {
    return _then(AuthLoggedIn(
      selectedWallet == freezed
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }

  @override
  $WalletCopyWith<$Res> get selectedWallet {
    return $WalletCopyWith<$Res>(_value.selectedWallet, (value) {
      return _then(_value.copyWith(selectedWallet: value));
    });
  }
}

/// @nodoc

class _$AuthLoggedIn implements AuthLoggedIn {
  const _$AuthLoggedIn(this.selectedWallet);

  @override
  final Wallet selectedWallet;

  @override
  String toString() {
    return 'AuthEvent.loggedIn(selectedWallet: $selectedWallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoggedIn &&
            const DeepCollectionEquality()
                .equals(other.selectedWallet, selectedWallet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedWallet));

  @JsonKey(ignore: true)
  @override
  $AuthLoggedInCopyWith<AuthLoggedIn> get copyWith =>
      _$AuthLoggedInCopyWithImpl<AuthLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Wallet selectedWallet) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() passcodeChanged,
  }) {
    return loggedIn(selectedWallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
  }) {
    return loggedIn?.call(selectedWallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(selectedWallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthPasscodeChanged value) passcodeChanged,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedIn implements AuthEvent {
  const factory AuthLoggedIn(Wallet selectedWallet) = _$AuthLoggedIn;

  Wallet get selectedWallet;
  @JsonKey(ignore: true)
  $AuthLoggedInCopyWith<AuthLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoggedOutCopyWith<$Res> {
  factory $AuthLoggedOutCopyWith(
          AuthLoggedOut value, $Res Function(AuthLoggedOut) then) =
      _$AuthLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoggedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLoggedOutCopyWith<$Res> {
  _$AuthLoggedOutCopyWithImpl(
      AuthLoggedOut _value, $Res Function(AuthLoggedOut) _then)
      : super(_value, (v) => _then(v as AuthLoggedOut));

  @override
  AuthLoggedOut get _value => super._value as AuthLoggedOut;
}

/// @nodoc

class _$AuthLoggedOut implements AuthLoggedOut {
  const _$AuthLoggedOut();

  @override
  String toString() {
    return 'AuthEvent.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Wallet selectedWallet) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() passcodeChanged,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthPasscodeChanged value) passcodeChanged,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedOut implements AuthEvent {
  const factory AuthLoggedOut() = _$AuthLoggedOut;
}

/// @nodoc
abstract class $AuthPasscodeChangedCopyWith<$Res> {
  factory $AuthPasscodeChangedCopyWith(
          AuthPasscodeChanged value, $Res Function(AuthPasscodeChanged) then) =
      _$AuthPasscodeChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthPasscodeChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthPasscodeChangedCopyWith<$Res> {
  _$AuthPasscodeChangedCopyWithImpl(
      AuthPasscodeChanged _value, $Res Function(AuthPasscodeChanged) _then)
      : super(_value, (v) => _then(v as AuthPasscodeChanged));

  @override
  AuthPasscodeChanged get _value => super._value as AuthPasscodeChanged;
}

/// @nodoc

class _$AuthPasscodeChanged implements AuthPasscodeChanged {
  const _$AuthPasscodeChanged();

  @override
  String toString() {
    return 'AuthEvent.passcodeChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthPasscodeChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Wallet selectedWallet) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() passcodeChanged,
  }) {
    return passcodeChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
  }) {
    return passcodeChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Wallet selectedWallet)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? passcodeChanged,
    required TResult orElse(),
  }) {
    if (passcodeChanged != null) {
      return passcodeChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthPasscodeChanged value) passcodeChanged,
  }) {
    return passcodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
  }) {
    return passcodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthPasscodeChanged value)? passcodeChanged,
    required TResult orElse(),
  }) {
    if (passcodeChanged != null) {
      return passcodeChanged(this);
    }
    return orElse();
  }
}

abstract class AuthPasscodeChanged implements AuthEvent {
  const factory AuthPasscodeChanged() = _$AuthPasscodeChanged;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  UnAuthenticated unauthenticated() {
    return const UnAuthenticated();
  }

  AuthenticatedNoPassword authenticatedNoPassword(
      {required Wallet walletAddress}) {
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
    required TResult Function(Wallet walletAddress) authenticatedNoPassword,
    required TResult Function(Wallet wallet) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(Wallet walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(Wallet walletAddress)? authenticatedNoPassword,
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
    required TResult Function(Wallet walletAddress) authenticatedNoPassword,
    required TResult Function(Wallet wallet) authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(Wallet walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(Wallet walletAddress)? authenticatedNoPassword,
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
  $Res call({Wallet walletAddress});

  $WalletCopyWith<$Res> get walletAddress;
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
              as Wallet,
    ));
  }

  @override
  $WalletCopyWith<$Res> get walletAddress {
    return $WalletCopyWith<$Res>(_value.walletAddress, (value) {
      return _then(_value.copyWith(walletAddress: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedNoPassword implements AuthenticatedNoPassword {
  const _$AuthenticatedNoPassword({required this.walletAddress});

  @override
  final Wallet walletAddress;

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
    required TResult Function(Wallet walletAddress) authenticatedNoPassword,
    required TResult Function(Wallet wallet) authenticated,
  }) {
    return authenticatedNoPassword(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(Wallet walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
  }) {
    return authenticatedNoPassword?.call(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(Wallet walletAddress)? authenticatedNoPassword,
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
  const factory AuthenticatedNoPassword({required Wallet walletAddress}) =
      _$AuthenticatedNoPassword;

  Wallet get walletAddress;
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
    required TResult Function(Wallet walletAddress) authenticatedNoPassword,
    required TResult Function(Wallet wallet) authenticated,
  }) {
    return authenticated(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(Wallet walletAddress)? authenticatedNoPassword,
    TResult Function(Wallet wallet)? authenticated,
  }) {
    return authenticated?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(Wallet walletAddress)? authenticatedNoPassword,
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
