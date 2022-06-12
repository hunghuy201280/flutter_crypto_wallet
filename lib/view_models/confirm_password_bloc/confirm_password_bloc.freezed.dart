// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'confirm_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfirmPasswordEventTearOff {
  const _$ConfirmPasswordEventTearOff();

  ConfirmPasswordConfirmed confirmed() {
    return const ConfirmPasswordConfirmed();
  }
}

/// @nodoc
const $ConfirmPasswordEvent = _$ConfirmPasswordEventTearOff();

/// @nodoc
mixin _$ConfirmPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmPasswordConfirmed value) confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmPasswordConfirmed value)? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmPasswordConfirmed value)? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPasswordEventCopyWith<$Res> {
  factory $ConfirmPasswordEventCopyWith(ConfirmPasswordEvent value,
          $Res Function(ConfirmPasswordEvent) then) =
      _$ConfirmPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmPasswordEventCopyWithImpl<$Res>
    implements $ConfirmPasswordEventCopyWith<$Res> {
  _$ConfirmPasswordEventCopyWithImpl(this._value, this._then);

  final ConfirmPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ConfirmPasswordEvent) _then;
}

/// @nodoc
abstract class $ConfirmPasswordConfirmedCopyWith<$Res> {
  factory $ConfirmPasswordConfirmedCopyWith(ConfirmPasswordConfirmed value,
          $Res Function(ConfirmPasswordConfirmed) then) =
      _$ConfirmPasswordConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmPasswordConfirmedCopyWithImpl<$Res>
    extends _$ConfirmPasswordEventCopyWithImpl<$Res>
    implements $ConfirmPasswordConfirmedCopyWith<$Res> {
  _$ConfirmPasswordConfirmedCopyWithImpl(ConfirmPasswordConfirmed _value,
      $Res Function(ConfirmPasswordConfirmed) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordConfirmed));

  @override
  ConfirmPasswordConfirmed get _value =>
      super._value as ConfirmPasswordConfirmed;
}

/// @nodoc

class _$ConfirmPasswordConfirmed implements ConfirmPasswordConfirmed {
  const _$ConfirmPasswordConfirmed();

  @override
  String toString() {
    return 'ConfirmPasswordEvent.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConfirmPasswordConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmed,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmPasswordConfirmed value) confirmed,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmPasswordConfirmed value)? confirmed,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmPasswordConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordConfirmed implements ConfirmPasswordEvent {
  const factory ConfirmPasswordConfirmed() = _$ConfirmPasswordConfirmed;
}

/// @nodoc
class _$ConfirmPasswordStateTearOff {
  const _$ConfirmPasswordStateTearOff();

  _ConfirmPasswordState call(
      {required TextEditingController password,
      required Status<dynamic> status}) {
    return _ConfirmPasswordState(
      password: password,
      status: status,
    );
  }
}

/// @nodoc
const $ConfirmPasswordState = _$ConfirmPasswordStateTearOff();

/// @nodoc
mixin _$ConfirmPasswordState {
  TextEditingController get password => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmPasswordStateCopyWith<ConfirmPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPasswordStateCopyWith<$Res> {
  factory $ConfirmPasswordStateCopyWith(ConfirmPasswordState value,
          $Res Function(ConfirmPasswordState) then) =
      _$ConfirmPasswordStateCopyWithImpl<$Res>;
  $Res call({TextEditingController password, Status<dynamic> status});
}

/// @nodoc
class _$ConfirmPasswordStateCopyWithImpl<$Res>
    implements $ConfirmPasswordStateCopyWith<$Res> {
  _$ConfirmPasswordStateCopyWithImpl(this._value, this._then);

  final ConfirmPasswordState _value;
  // ignore: unused_field
  final $Res Function(ConfirmPasswordState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ConfirmPasswordStateCopyWith<$Res>
    implements $ConfirmPasswordStateCopyWith<$Res> {
  factory _$ConfirmPasswordStateCopyWith(_ConfirmPasswordState value,
          $Res Function(_ConfirmPasswordState) then) =
      __$ConfirmPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({TextEditingController password, Status<dynamic> status});
}

/// @nodoc
class __$ConfirmPasswordStateCopyWithImpl<$Res>
    extends _$ConfirmPasswordStateCopyWithImpl<$Res>
    implements _$ConfirmPasswordStateCopyWith<$Res> {
  __$ConfirmPasswordStateCopyWithImpl(
      _ConfirmPasswordState _value, $Res Function(_ConfirmPasswordState) _then)
      : super(_value, (v) => _then(v as _ConfirmPasswordState));

  @override
  _ConfirmPasswordState get _value => super._value as _ConfirmPasswordState;

  @override
  $Res call({
    Object? password = freezed,
    Object? status = freezed,
  }) {
    return _then(_ConfirmPasswordState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ConfirmPasswordState extends _ConfirmPasswordState {
  const _$_ConfirmPasswordState({required this.password, required this.status})
      : super._();

  @override
  final TextEditingController password;
  @override
  final Status<dynamic> status;

  @override
  String toString() {
    return 'ConfirmPasswordState(password: $password, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmPasswordState &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ConfirmPasswordStateCopyWith<_ConfirmPasswordState> get copyWith =>
      __$ConfirmPasswordStateCopyWithImpl<_ConfirmPasswordState>(
          this, _$identity);
}

abstract class _ConfirmPasswordState extends ConfirmPasswordState {
  const factory _ConfirmPasswordState(
      {required TextEditingController password,
      required Status<dynamic> status}) = _$_ConfirmPasswordState;
  const _ConfirmPasswordState._() : super._();

  @override
  TextEditingController get password;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$ConfirmPasswordStateCopyWith<_ConfirmPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
