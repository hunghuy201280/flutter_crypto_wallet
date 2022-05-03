// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletDetailEventTearOff {
  const _$WalletDetailEventTearOff();

  WalletDetailTokensLoaded tokensLoaded() {
    return const WalletDetailTokensLoaded();
  }

  WalletDetailNFTsLoaded NFTsLoaded() {
    return const WalletDetailNFTsLoaded();
  }
}

/// @nodoc
const $WalletDetailEvent = _$WalletDetailEventTearOff();

/// @nodoc
mixin _$WalletDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tokensLoaded,
    required TResult Function() NFTsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tokensLoaded,
    TResult Function()? NFTsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tokensLoaded,
    TResult Function()? NFTsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletDetailTokensLoaded value) tokensLoaded,
    required TResult Function(WalletDetailNFTsLoaded value) NFTsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletDetailTokensLoaded value)? tokensLoaded,
    TResult Function(WalletDetailNFTsLoaded value)? NFTsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletDetailTokensLoaded value)? tokensLoaded,
    TResult Function(WalletDetailNFTsLoaded value)? NFTsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDetailEventCopyWith<$Res> {
  factory $WalletDetailEventCopyWith(
          WalletDetailEvent value, $Res Function(WalletDetailEvent) then) =
      _$WalletDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletDetailEventCopyWithImpl<$Res>
    implements $WalletDetailEventCopyWith<$Res> {
  _$WalletDetailEventCopyWithImpl(this._value, this._then);

  final WalletDetailEvent _value;
  // ignore: unused_field
  final $Res Function(WalletDetailEvent) _then;
}

/// @nodoc
abstract class $WalletDetailTokensLoadedCopyWith<$Res> {
  factory $WalletDetailTokensLoadedCopyWith(WalletDetailTokensLoaded value,
          $Res Function(WalletDetailTokensLoaded) then) =
      _$WalletDetailTokensLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletDetailTokensLoadedCopyWithImpl<$Res>
    extends _$WalletDetailEventCopyWithImpl<$Res>
    implements $WalletDetailTokensLoadedCopyWith<$Res> {
  _$WalletDetailTokensLoadedCopyWithImpl(WalletDetailTokensLoaded _value,
      $Res Function(WalletDetailTokensLoaded) _then)
      : super(_value, (v) => _then(v as WalletDetailTokensLoaded));

  @override
  WalletDetailTokensLoaded get _value =>
      super._value as WalletDetailTokensLoaded;
}

/// @nodoc

class _$WalletDetailTokensLoaded
    with DiagnosticableTreeMixin
    implements WalletDetailTokensLoaded {
  const _$WalletDetailTokensLoaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletDetailEvent.tokensLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletDetailEvent.tokensLoaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletDetailTokensLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tokensLoaded,
    required TResult Function() NFTsLoaded,
  }) {
    return tokensLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tokensLoaded,
    TResult Function()? NFTsLoaded,
  }) {
    return tokensLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tokensLoaded,
    TResult Function()? NFTsLoaded,
    required TResult orElse(),
  }) {
    if (tokensLoaded != null) {
      return tokensLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletDetailTokensLoaded value) tokensLoaded,
    required TResult Function(WalletDetailNFTsLoaded value) NFTsLoaded,
  }) {
    return tokensLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletDetailTokensLoaded value)? tokensLoaded,
    TResult Function(WalletDetailNFTsLoaded value)? NFTsLoaded,
  }) {
    return tokensLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletDetailTokensLoaded value)? tokensLoaded,
    TResult Function(WalletDetailNFTsLoaded value)? NFTsLoaded,
    required TResult orElse(),
  }) {
    if (tokensLoaded != null) {
      return tokensLoaded(this);
    }
    return orElse();
  }
}

abstract class WalletDetailTokensLoaded implements WalletDetailEvent {
  const factory WalletDetailTokensLoaded() = _$WalletDetailTokensLoaded;
}

/// @nodoc
abstract class $WalletDetailNFTsLoadedCopyWith<$Res> {
  factory $WalletDetailNFTsLoadedCopyWith(WalletDetailNFTsLoaded value,
          $Res Function(WalletDetailNFTsLoaded) then) =
      _$WalletDetailNFTsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletDetailNFTsLoadedCopyWithImpl<$Res>
    extends _$WalletDetailEventCopyWithImpl<$Res>
    implements $WalletDetailNFTsLoadedCopyWith<$Res> {
  _$WalletDetailNFTsLoadedCopyWithImpl(WalletDetailNFTsLoaded _value,
      $Res Function(WalletDetailNFTsLoaded) _then)
      : super(_value, (v) => _then(v as WalletDetailNFTsLoaded));

  @override
  WalletDetailNFTsLoaded get _value => super._value as WalletDetailNFTsLoaded;
}

/// @nodoc

class _$WalletDetailNFTsLoaded
    with DiagnosticableTreeMixin
    implements WalletDetailNFTsLoaded {
  const _$WalletDetailNFTsLoaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletDetailEvent.NFTsLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletDetailEvent.NFTsLoaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WalletDetailNFTsLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tokensLoaded,
    required TResult Function() NFTsLoaded,
  }) {
    return NFTsLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tokensLoaded,
    TResult Function()? NFTsLoaded,
  }) {
    return NFTsLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tokensLoaded,
    TResult Function()? NFTsLoaded,
    required TResult orElse(),
  }) {
    if (NFTsLoaded != null) {
      return NFTsLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WalletDetailTokensLoaded value) tokensLoaded,
    required TResult Function(WalletDetailNFTsLoaded value) NFTsLoaded,
  }) {
    return NFTsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WalletDetailTokensLoaded value)? tokensLoaded,
    TResult Function(WalletDetailNFTsLoaded value)? NFTsLoaded,
  }) {
    return NFTsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WalletDetailTokensLoaded value)? tokensLoaded,
    TResult Function(WalletDetailNFTsLoaded value)? NFTsLoaded,
    required TResult orElse(),
  }) {
    if (NFTsLoaded != null) {
      return NFTsLoaded(this);
    }
    return orElse();
  }
}

abstract class WalletDetailNFTsLoaded implements WalletDetailEvent {
  const factory WalletDetailNFTsLoaded() = _$WalletDetailNFTsLoaded;
}

/// @nodoc
class _$WalletDetailStateTearOff {
  const _$WalletDetailStateTearOff();

  _WalletDetailState call(
      {required List<Token> tokens, required Status<dynamic> status}) {
    return _WalletDetailState(
      tokens: tokens,
      status: status,
    );
  }
}

/// @nodoc
const $WalletDetailState = _$WalletDetailStateTearOff();

/// @nodoc
mixin _$WalletDetailState {
  List<Token> get tokens => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletDetailStateCopyWith<WalletDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDetailStateCopyWith<$Res> {
  factory $WalletDetailStateCopyWith(
          WalletDetailState value, $Res Function(WalletDetailState) then) =
      _$WalletDetailStateCopyWithImpl<$Res>;
  $Res call({List<Token> tokens, Status<dynamic> status});
}

/// @nodoc
class _$WalletDetailStateCopyWithImpl<$Res>
    implements $WalletDetailStateCopyWith<$Res> {
  _$WalletDetailStateCopyWithImpl(this._value, this._then);

  final WalletDetailState _value;
  // ignore: unused_field
  final $Res Function(WalletDetailState) _then;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$WalletDetailStateCopyWith<$Res>
    implements $WalletDetailStateCopyWith<$Res> {
  factory _$WalletDetailStateCopyWith(
          _WalletDetailState value, $Res Function(_WalletDetailState) then) =
      __$WalletDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Token> tokens, Status<dynamic> status});
}

/// @nodoc
class __$WalletDetailStateCopyWithImpl<$Res>
    extends _$WalletDetailStateCopyWithImpl<$Res>
    implements _$WalletDetailStateCopyWith<$Res> {
  __$WalletDetailStateCopyWithImpl(
      _WalletDetailState _value, $Res Function(_WalletDetailState) _then)
      : super(_value, (v) => _then(v as _WalletDetailState));

  @override
  _WalletDetailState get _value => super._value as _WalletDetailState;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? status = freezed,
  }) {
    return _then(_WalletDetailState(
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_WalletDetailState extends _WalletDetailState
    with DiagnosticableTreeMixin {
  const _$_WalletDetailState({required this.tokens, required this.status})
      : super._();

  @override
  final List<Token> tokens;
  @override
  final Status<dynamic> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletDetailState(tokens: $tokens, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletDetailState'))
      ..add(DiagnosticsProperty('tokens', tokens))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletDetailState &&
            const DeepCollectionEquality().equals(other.tokens, tokens) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokens),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$WalletDetailStateCopyWith<_WalletDetailState> get copyWith =>
      __$WalletDetailStateCopyWithImpl<_WalletDetailState>(this, _$identity);
}

abstract class _WalletDetailState extends WalletDetailState {
  const factory _WalletDetailState(
      {required List<Token> tokens,
      required Status<dynamic> status}) = _$_WalletDetailState;
  const _WalletDetailState._() : super._();

  @override
  List<Token> get tokens;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$WalletDetailStateCopyWith<_WalletDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
