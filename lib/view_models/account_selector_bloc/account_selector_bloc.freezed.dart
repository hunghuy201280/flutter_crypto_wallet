// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountSelectorEventTearOff {
  const _$AccountSelectorEventTearOff();

  AccountSelectorInitialized initialized() {
    return const AccountSelectorInitialized();
  }

  AccountSelectorDeleted deleted(Wallet wallet) {
    return AccountSelectorDeleted(
      wallet,
    );
  }

  AccountSelectorAdded accountAdded({int? walletNumber}) {
    return AccountSelectorAdded(
      walletNumber: walletNumber,
    );
  }

  AccountSelectorSelected selected(Wallet wallet) {
    return AccountSelectorSelected(
      wallet,
    );
  }
}

/// @nodoc
const $AccountSelectorEvent = _$AccountSelectorEventTearOff();

/// @nodoc
mixin _$AccountSelectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Wallet wallet) deleted,
    required TResult Function(int? walletNumber) accountAdded,
    required TResult Function(Wallet wallet) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSelectorInitialized value) initialized,
    required TResult Function(AccountSelectorDeleted value) deleted,
    required TResult Function(AccountSelectorAdded value) accountAdded,
    required TResult Function(AccountSelectorSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSelectorEventCopyWith<$Res> {
  factory $AccountSelectorEventCopyWith(AccountSelectorEvent value,
          $Res Function(AccountSelectorEvent) then) =
      _$AccountSelectorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountSelectorEventCopyWithImpl<$Res>
    implements $AccountSelectorEventCopyWith<$Res> {
  _$AccountSelectorEventCopyWithImpl(this._value, this._then);

  final AccountSelectorEvent _value;
  // ignore: unused_field
  final $Res Function(AccountSelectorEvent) _then;
}

/// @nodoc
abstract class $AccountSelectorInitializedCopyWith<$Res> {
  factory $AccountSelectorInitializedCopyWith(AccountSelectorInitialized value,
          $Res Function(AccountSelectorInitialized) then) =
      _$AccountSelectorInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountSelectorInitializedCopyWithImpl<$Res>
    extends _$AccountSelectorEventCopyWithImpl<$Res>
    implements $AccountSelectorInitializedCopyWith<$Res> {
  _$AccountSelectorInitializedCopyWithImpl(AccountSelectorInitialized _value,
      $Res Function(AccountSelectorInitialized) _then)
      : super(_value, (v) => _then(v as AccountSelectorInitialized));

  @override
  AccountSelectorInitialized get _value =>
      super._value as AccountSelectorInitialized;
}

/// @nodoc

class _$AccountSelectorInitialized
    with DiagnosticableTreeMixin
    implements AccountSelectorInitialized {
  const _$AccountSelectorInitialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectorEvent.initialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AccountSelectorEvent.initialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountSelectorInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Wallet wallet) deleted,
    required TResult Function(int? walletNumber) accountAdded,
    required TResult Function(Wallet wallet) selected,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSelectorInitialized value) initialized,
    required TResult Function(AccountSelectorDeleted value) deleted,
    required TResult Function(AccountSelectorAdded value) accountAdded,
    required TResult Function(AccountSelectorSelected value) selected,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class AccountSelectorInitialized implements AccountSelectorEvent {
  const factory AccountSelectorInitialized() = _$AccountSelectorInitialized;
}

/// @nodoc
abstract class $AccountSelectorDeletedCopyWith<$Res> {
  factory $AccountSelectorDeletedCopyWith(AccountSelectorDeleted value,
          $Res Function(AccountSelectorDeleted) then) =
      _$AccountSelectorDeletedCopyWithImpl<$Res>;
  $Res call({Wallet wallet});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$AccountSelectorDeletedCopyWithImpl<$Res>
    extends _$AccountSelectorEventCopyWithImpl<$Res>
    implements $AccountSelectorDeletedCopyWith<$Res> {
  _$AccountSelectorDeletedCopyWithImpl(AccountSelectorDeleted _value,
      $Res Function(AccountSelectorDeleted) _then)
      : super(_value, (v) => _then(v as AccountSelectorDeleted));

  @override
  AccountSelectorDeleted get _value => super._value as AccountSelectorDeleted;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(AccountSelectorDeleted(
      wallet == freezed
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

class _$AccountSelectorDeleted
    with DiagnosticableTreeMixin
    implements AccountSelectorDeleted {
  const _$AccountSelectorDeleted(this.wallet);

  @override
  final Wallet wallet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectorEvent.deleted(wallet: $wallet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountSelectorEvent.deleted'))
      ..add(DiagnosticsProperty('wallet', wallet));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountSelectorDeleted &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  $AccountSelectorDeletedCopyWith<AccountSelectorDeleted> get copyWith =>
      _$AccountSelectorDeletedCopyWithImpl<AccountSelectorDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Wallet wallet) deleted,
    required TResult Function(int? walletNumber) accountAdded,
    required TResult Function(Wallet wallet) selected,
  }) {
    return deleted(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
  }) {
    return deleted?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSelectorInitialized value) initialized,
    required TResult Function(AccountSelectorDeleted value) deleted,
    required TResult Function(AccountSelectorAdded value) accountAdded,
    required TResult Function(AccountSelectorSelected value) selected,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class AccountSelectorDeleted implements AccountSelectorEvent {
  const factory AccountSelectorDeleted(Wallet wallet) =
      _$AccountSelectorDeleted;

  Wallet get wallet;
  @JsonKey(ignore: true)
  $AccountSelectorDeletedCopyWith<AccountSelectorDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSelectorAddedCopyWith<$Res> {
  factory $AccountSelectorAddedCopyWith(AccountSelectorAdded value,
          $Res Function(AccountSelectorAdded) then) =
      _$AccountSelectorAddedCopyWithImpl<$Res>;
  $Res call({int? walletNumber});
}

/// @nodoc
class _$AccountSelectorAddedCopyWithImpl<$Res>
    extends _$AccountSelectorEventCopyWithImpl<$Res>
    implements $AccountSelectorAddedCopyWith<$Res> {
  _$AccountSelectorAddedCopyWithImpl(
      AccountSelectorAdded _value, $Res Function(AccountSelectorAdded) _then)
      : super(_value, (v) => _then(v as AccountSelectorAdded));

  @override
  AccountSelectorAdded get _value => super._value as AccountSelectorAdded;

  @override
  $Res call({
    Object? walletNumber = freezed,
  }) {
    return _then(AccountSelectorAdded(
      walletNumber: walletNumber == freezed
          ? _value.walletNumber
          : walletNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AccountSelectorAdded
    with DiagnosticableTreeMixin
    implements AccountSelectorAdded {
  const _$AccountSelectorAdded({this.walletNumber});

  @override
  final int? walletNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectorEvent.accountAdded(walletNumber: $walletNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountSelectorEvent.accountAdded'))
      ..add(DiagnosticsProperty('walletNumber', walletNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountSelectorAdded &&
            const DeepCollectionEquality()
                .equals(other.walletNumber, walletNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(walletNumber));

  @JsonKey(ignore: true)
  @override
  $AccountSelectorAddedCopyWith<AccountSelectorAdded> get copyWith =>
      _$AccountSelectorAddedCopyWithImpl<AccountSelectorAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Wallet wallet) deleted,
    required TResult Function(int? walletNumber) accountAdded,
    required TResult Function(Wallet wallet) selected,
  }) {
    return accountAdded(walletNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
  }) {
    return accountAdded?.call(walletNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
    required TResult orElse(),
  }) {
    if (accountAdded != null) {
      return accountAdded(walletNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSelectorInitialized value) initialized,
    required TResult Function(AccountSelectorDeleted value) deleted,
    required TResult Function(AccountSelectorAdded value) accountAdded,
    required TResult Function(AccountSelectorSelected value) selected,
  }) {
    return accountAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
  }) {
    return accountAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
    required TResult orElse(),
  }) {
    if (accountAdded != null) {
      return accountAdded(this);
    }
    return orElse();
  }
}

abstract class AccountSelectorAdded implements AccountSelectorEvent {
  const factory AccountSelectorAdded({int? walletNumber}) =
      _$AccountSelectorAdded;

  int? get walletNumber;
  @JsonKey(ignore: true)
  $AccountSelectorAddedCopyWith<AccountSelectorAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSelectorSelectedCopyWith<$Res> {
  factory $AccountSelectorSelectedCopyWith(AccountSelectorSelected value,
          $Res Function(AccountSelectorSelected) then) =
      _$AccountSelectorSelectedCopyWithImpl<$Res>;
  $Res call({Wallet wallet});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$AccountSelectorSelectedCopyWithImpl<$Res>
    extends _$AccountSelectorEventCopyWithImpl<$Res>
    implements $AccountSelectorSelectedCopyWith<$Res> {
  _$AccountSelectorSelectedCopyWithImpl(AccountSelectorSelected _value,
      $Res Function(AccountSelectorSelected) _then)
      : super(_value, (v) => _then(v as AccountSelectorSelected));

  @override
  AccountSelectorSelected get _value => super._value as AccountSelectorSelected;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(AccountSelectorSelected(
      wallet == freezed
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

class _$AccountSelectorSelected
    with DiagnosticableTreeMixin
    implements AccountSelectorSelected {
  const _$AccountSelectorSelected(this.wallet);

  @override
  final Wallet wallet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectorEvent.selected(wallet: $wallet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountSelectorEvent.selected'))
      ..add(DiagnosticsProperty('wallet', wallet));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountSelectorSelected &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  $AccountSelectorSelectedCopyWith<AccountSelectorSelected> get copyWith =>
      _$AccountSelectorSelectedCopyWithImpl<AccountSelectorSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Wallet wallet) deleted,
    required TResult Function(int? walletNumber) accountAdded,
    required TResult Function(Wallet wallet) selected,
  }) {
    return selected(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
  }) {
    return selected?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Wallet wallet)? deleted,
    TResult Function(int? walletNumber)? accountAdded,
    TResult Function(Wallet wallet)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSelectorInitialized value) initialized,
    required TResult Function(AccountSelectorDeleted value) deleted,
    required TResult Function(AccountSelectorAdded value) accountAdded,
    required TResult Function(AccountSelectorSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSelectorInitialized value)? initialized,
    TResult Function(AccountSelectorDeleted value)? deleted,
    TResult Function(AccountSelectorAdded value)? accountAdded,
    TResult Function(AccountSelectorSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class AccountSelectorSelected implements AccountSelectorEvent {
  const factory AccountSelectorSelected(Wallet wallet) =
      _$AccountSelectorSelected;

  Wallet get wallet;
  @JsonKey(ignore: true)
  $AccountSelectorSelectedCopyWith<AccountSelectorSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AccountSelectorStateTearOff {
  const _$AccountSelectorStateTearOff();

  _AccountSelectorState call(
      {required List<Wallet> wallets,
      required Wallet selectedWallet,
      required Status<dynamic> status}) {
    return _AccountSelectorState(
      wallets: wallets,
      selectedWallet: selectedWallet,
      status: status,
    );
  }
}

/// @nodoc
const $AccountSelectorState = _$AccountSelectorStateTearOff();

/// @nodoc
mixin _$AccountSelectorState {
  List<Wallet> get wallets => throw _privateConstructorUsedError;
  Wallet get selectedWallet => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountSelectorStateCopyWith<AccountSelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSelectorStateCopyWith<$Res> {
  factory $AccountSelectorStateCopyWith(AccountSelectorState value,
          $Res Function(AccountSelectorState) then) =
      _$AccountSelectorStateCopyWithImpl<$Res>;
  $Res call(
      {List<Wallet> wallets, Wallet selectedWallet, Status<dynamic> status});

  $WalletCopyWith<$Res> get selectedWallet;
}

/// @nodoc
class _$AccountSelectorStateCopyWithImpl<$Res>
    implements $AccountSelectorStateCopyWith<$Res> {
  _$AccountSelectorStateCopyWithImpl(this._value, this._then);

  final AccountSelectorState _value;
  // ignore: unused_field
  final $Res Function(AccountSelectorState) _then;

  @override
  $Res call({
    Object? wallets = freezed,
    Object? selectedWallet = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      wallets: wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
      selectedWallet: selectedWallet == freezed
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
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
abstract class _$AccountSelectorStateCopyWith<$Res>
    implements $AccountSelectorStateCopyWith<$Res> {
  factory _$AccountSelectorStateCopyWith(_AccountSelectorState value,
          $Res Function(_AccountSelectorState) then) =
      __$AccountSelectorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Wallet> wallets, Wallet selectedWallet, Status<dynamic> status});

  @override
  $WalletCopyWith<$Res> get selectedWallet;
}

/// @nodoc
class __$AccountSelectorStateCopyWithImpl<$Res>
    extends _$AccountSelectorStateCopyWithImpl<$Res>
    implements _$AccountSelectorStateCopyWith<$Res> {
  __$AccountSelectorStateCopyWithImpl(
      _AccountSelectorState _value, $Res Function(_AccountSelectorState) _then)
      : super(_value, (v) => _then(v as _AccountSelectorState));

  @override
  _AccountSelectorState get _value => super._value as _AccountSelectorState;

  @override
  $Res call({
    Object? wallets = freezed,
    Object? selectedWallet = freezed,
    Object? status = freezed,
  }) {
    return _then(_AccountSelectorState(
      wallets: wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
      selectedWallet: selectedWallet == freezed
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_AccountSelectorState extends _AccountSelectorState
    with DiagnosticableTreeMixin {
  const _$_AccountSelectorState(
      {required this.wallets,
      required this.selectedWallet,
      required this.status})
      : super._();

  @override
  final List<Wallet> wallets;
  @override
  final Wallet selectedWallet;
  @override
  final Status<dynamic> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectorState(wallets: $wallets, selectedWallet: $selectedWallet, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountSelectorState'))
      ..add(DiagnosticsProperty('wallets', wallets))
      ..add(DiagnosticsProperty('selectedWallet', selectedWallet))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountSelectorState &&
            const DeepCollectionEquality().equals(other.wallets, wallets) &&
            const DeepCollectionEquality()
                .equals(other.selectedWallet, selectedWallet) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wallets),
      const DeepCollectionEquality().hash(selectedWallet),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AccountSelectorStateCopyWith<_AccountSelectorState> get copyWith =>
      __$AccountSelectorStateCopyWithImpl<_AccountSelectorState>(
          this, _$identity);
}

abstract class _AccountSelectorState extends AccountSelectorState {
  const factory _AccountSelectorState(
      {required List<Wallet> wallets,
      required Wallet selectedWallet,
      required Status<dynamic> status}) = _$_AccountSelectorState;
  const _AccountSelectorState._() : super._();

  @override
  List<Wallet> get wallets;
  @override
  Wallet get selectedWallet;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$AccountSelectorStateCopyWith<_AccountSelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}
