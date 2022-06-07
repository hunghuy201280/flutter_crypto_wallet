// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangePasswordEventTearOff {
  const _$ChangePasswordEventTearOff();

  ChangePasswordConfirmed confirmed() {
    return const ChangePasswordConfirmed();
  }

  ChangePasswordSubmitted submitted() {
    return const ChangePasswordSubmitted();
  }

  ChangePasswordCheckboxTapped checkboxTapped() {
    return const ChangePasswordCheckboxTapped();
  }
}

/// @nodoc
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
    required TResult Function() submitted,
    required TResult Function() checkboxTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? submitted,
    TResult Function()? checkboxTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? submitted,
    TResult Function()? checkboxTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordConfirmed value) confirmed,
    required TResult Function(ChangePasswordSubmitted value) submitted,
    required TResult Function(ChangePasswordCheckboxTapped value)
        checkboxTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordConfirmed value)? confirmed,
    TResult Function(ChangePasswordSubmitted value)? submitted,
    TResult Function(ChangePasswordCheckboxTapped value)? checkboxTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordConfirmed value)? confirmed,
    TResult Function(ChangePasswordSubmitted value)? submitted,
    TResult Function(ChangePasswordCheckboxTapped value)? checkboxTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
}

/// @nodoc
abstract class $ChangePasswordConfirmedCopyWith<$Res> {
  factory $ChangePasswordConfirmedCopyWith(ChangePasswordConfirmed value,
          $Res Function(ChangePasswordConfirmed) then) =
      _$ChangePasswordConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordConfirmedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordConfirmedCopyWith<$Res> {
  _$ChangePasswordConfirmedCopyWithImpl(ChangePasswordConfirmed _value,
      $Res Function(ChangePasswordConfirmed) _then)
      : super(_value, (v) => _then(v as ChangePasswordConfirmed));

  @override
  ChangePasswordConfirmed get _value => super._value as ChangePasswordConfirmed;
}

/// @nodoc

class _$ChangePasswordConfirmed implements ChangePasswordConfirmed {
  const _$ChangePasswordConfirmed();

  @override
  String toString() {
    return 'ChangePasswordEvent.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangePasswordConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
    required TResult Function() submitted,
    required TResult Function() checkboxTapped,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? submitted,
    TResult Function()? checkboxTapped,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? submitted,
    TResult Function()? checkboxTapped,
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
    required TResult Function(ChangePasswordConfirmed value) confirmed,
    required TResult Function(ChangePasswordSubmitted value) submitted,
    required TResult Function(ChangePasswordCheckboxTapped value)
        checkboxTapped,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordConfirmed value)? confirmed,
    TResult Function(ChangePasswordSubmitted value)? submitted,
    TResult Function(ChangePasswordCheckboxTapped value)? checkboxTapped,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordConfirmed value)? confirmed,
    TResult Function(ChangePasswordSubmitted value)? submitted,
    TResult Function(ChangePasswordCheckboxTapped value)? checkboxTapped,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordConfirmed implements ChangePasswordEvent {
  const factory ChangePasswordConfirmed() = _$ChangePasswordConfirmed;
}

/// @nodoc
abstract class $ChangePasswordSubmittedCopyWith<$Res> {
  factory $ChangePasswordSubmittedCopyWith(ChangePasswordSubmitted value,
          $Res Function(ChangePasswordSubmitted) then) =
      _$ChangePasswordSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordSubmittedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordSubmittedCopyWith<$Res> {
  _$ChangePasswordSubmittedCopyWithImpl(ChangePasswordSubmitted _value,
      $Res Function(ChangePasswordSubmitted) _then)
      : super(_value, (v) => _then(v as ChangePasswordSubmitted));

  @override
  ChangePasswordSubmitted get _value => super._value as ChangePasswordSubmitted;
}

/// @nodoc

class _$ChangePasswordSubmitted implements ChangePasswordSubmitted {
  const _$ChangePasswordSubmitted();

  @override
  String toString() {
    return 'ChangePasswordEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangePasswordSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
    required TResult Function() submitted,
    required TResult Function() checkboxTapped,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? submitted,
    TResult Function()? checkboxTapped,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? submitted,
    TResult Function()? checkboxTapped,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordConfirmed value) confirmed,
    required TResult Function(ChangePasswordSubmitted value) submitted,
    required TResult Function(ChangePasswordCheckboxTapped value)
        checkboxTapped,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordConfirmed value)? confirmed,
    TResult Function(ChangePasswordSubmitted value)? submitted,
    TResult Function(ChangePasswordCheckboxTapped value)? checkboxTapped,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordConfirmed value)? confirmed,
    TResult Function(ChangePasswordSubmitted value)? submitted,
    TResult Function(ChangePasswordCheckboxTapped value)? checkboxTapped,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordSubmitted implements ChangePasswordEvent {
  const factory ChangePasswordSubmitted() = _$ChangePasswordSubmitted;
}

/// @nodoc
abstract class $ChangePasswordCheckboxTappedCopyWith<$Res> {
  factory $ChangePasswordCheckboxTappedCopyWith(
          ChangePasswordCheckboxTapped value,
          $Res Function(ChangePasswordCheckboxTapped) then) =
      _$ChangePasswordCheckboxTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordCheckboxTappedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordCheckboxTappedCopyWith<$Res> {
  _$ChangePasswordCheckboxTappedCopyWithImpl(
      ChangePasswordCheckboxTapped _value,
      $Res Function(ChangePasswordCheckboxTapped) _then)
      : super(_value, (v) => _then(v as ChangePasswordCheckboxTapped));

  @override
  ChangePasswordCheckboxTapped get _value =>
      super._value as ChangePasswordCheckboxTapped;
}

/// @nodoc

class _$ChangePasswordCheckboxTapped implements ChangePasswordCheckboxTapped {
  const _$ChangePasswordCheckboxTapped();

  @override
  String toString() {
    return 'ChangePasswordEvent.checkboxTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordCheckboxTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
    required TResult Function() submitted,
    required TResult Function() checkboxTapped,
  }) {
    return checkboxTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? submitted,
    TResult Function()? checkboxTapped,
  }) {
    return checkboxTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? submitted,
    TResult Function()? checkboxTapped,
    required TResult orElse(),
  }) {
    if (checkboxTapped != null) {
      return checkboxTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordConfirmed value) confirmed,
    required TResult Function(ChangePasswordSubmitted value) submitted,
    required TResult Function(ChangePasswordCheckboxTapped value)
        checkboxTapped,
  }) {
    return checkboxTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePasswordConfirmed value)? confirmed,
    TResult Function(ChangePasswordSubmitted value)? submitted,
    TResult Function(ChangePasswordCheckboxTapped value)? checkboxTapped,
  }) {
    return checkboxTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordConfirmed value)? confirmed,
    TResult Function(ChangePasswordSubmitted value)? submitted,
    TResult Function(ChangePasswordCheckboxTapped value)? checkboxTapped,
    required TResult orElse(),
  }) {
    if (checkboxTapped != null) {
      return checkboxTapped(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordCheckboxTapped implements ChangePasswordEvent {
  const factory ChangePasswordCheckboxTapped() = _$ChangePasswordCheckboxTapped;
}

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

  _ChangePasswordState call(
      {required TextEditingController currentPassword,
      required TextEditingController newPassword,
      required TextEditingController reNewPassword,
      required bool isChecked,
      required Status<dynamic> status}) {
    return _ChangePasswordState(
      currentPassword: currentPassword,
      newPassword: newPassword,
      reNewPassword: reNewPassword,
      isChecked: isChecked,
      status: status,
    );
  }
}

/// @nodoc
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  TextEditingController get currentPassword =>
      throw _privateConstructorUsedError;
  TextEditingController get newPassword => throw _privateConstructorUsedError;
  TextEditingController get reNewPassword => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  Status<dynamic> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController currentPassword,
      TextEditingController newPassword,
      TextEditingController reNewPassword,
      bool isChecked,
      Status<dynamic> status});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? reNewPassword = freezed,
    Object? isChecked = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      reNewPassword: reNewPassword == freezed
          ? _value.reNewPassword
          : reNewPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController currentPassword,
      TextEditingController newPassword,
      TextEditingController reNewPassword,
      bool isChecked,
      Status<dynamic> status});
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? reNewPassword = freezed,
    Object? isChecked = freezed,
    Object? status = freezed,
  }) {
    return _then(_ChangePasswordState(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      reNewPassword: reNewPassword == freezed
          ? _value.reNewPassword
          : reNewPassword // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState extends _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.currentPassword,
      required this.newPassword,
      required this.reNewPassword,
      required this.isChecked,
      required this.status})
      : super._();

  @override
  final TextEditingController currentPassword;
  @override
  final TextEditingController newPassword;
  @override
  final TextEditingController reNewPassword;
  @override
  final bool isChecked;
  @override
  final Status<dynamic> status;

  @override
  String toString() {
    return 'ChangePasswordState(currentPassword: $currentPassword, newPassword: $newPassword, reNewPassword: $reNewPassword, isChecked: $isChecked, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePasswordState &&
            const DeepCollectionEquality()
                .equals(other.currentPassword, currentPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.reNewPassword, reNewPassword) &&
            const DeepCollectionEquality().equals(other.isChecked, isChecked) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPassword),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(reNewPassword),
      const DeepCollectionEquality().hash(isChecked),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState extends ChangePasswordState {
  const factory _ChangePasswordState(
      {required TextEditingController currentPassword,
      required TextEditingController newPassword,
      required TextEditingController reNewPassword,
      required bool isChecked,
      required Status<dynamic> status}) = _$_ChangePasswordState;
  const _ChangePasswordState._() : super._();

  @override
  TextEditingController get currentPassword;
  @override
  TextEditingController get newPassword;
  @override
  TextEditingController get reNewPassword;
  @override
  bool get isChecked;
  @override
  Status<dynamic> get status;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
