// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jazziconshape.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JazziconShape _$JazziconShapeFromJson(Map<String, dynamic> json) {
  return _JazziconShape.fromJson(json);
}

/// @nodoc
class _$JazziconShapeTearOff {
  const _$JazziconShapeTearOff();

  _JazziconShape call(
      {@HiveField(0) required double center,
      @HiveField(1) required double tx,
      @HiveField(2) required double ty,
      @HiveField(3) required double rotate,
      @HiveField(4) required int fill}) {
    return _JazziconShape(
      center: center,
      tx: tx,
      ty: ty,
      rotate: rotate,
      fill: fill,
    );
  }

  JazziconShape fromJson(Map<String, Object?> json) {
    return JazziconShape.fromJson(json);
  }
}

/// @nodoc
const $JazziconShape = _$JazziconShapeTearOff();

/// @nodoc
mixin _$JazziconShape {
  @HiveField(0)
  double get center => throw _privateConstructorUsedError;
  @HiveField(1)
  double get tx => throw _privateConstructorUsedError;
  @HiveField(2)
  double get ty => throw _privateConstructorUsedError;
  @HiveField(3)
  double get rotate => throw _privateConstructorUsedError;
  @HiveField(4)
  int get fill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JazziconShapeCopyWith<JazziconShape> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JazziconShapeCopyWith<$Res> {
  factory $JazziconShapeCopyWith(
          JazziconShape value, $Res Function(JazziconShape) then) =
      _$JazziconShapeCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) double center,
      @HiveField(1) double tx,
      @HiveField(2) double ty,
      @HiveField(3) double rotate,
      @HiveField(4) int fill});
}

/// @nodoc
class _$JazziconShapeCopyWithImpl<$Res>
    implements $JazziconShapeCopyWith<$Res> {
  _$JazziconShapeCopyWithImpl(this._value, this._then);

  final JazziconShape _value;
  // ignore: unused_field
  final $Res Function(JazziconShape) _then;

  @override
  $Res call({
    Object? center = freezed,
    Object? tx = freezed,
    Object? ty = freezed,
    Object? rotate = freezed,
    Object? fill = freezed,
  }) {
    return _then(_value.copyWith(
      center: center == freezed
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as double,
      tx: tx == freezed
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as double,
      ty: ty == freezed
          ? _value.ty
          : ty // ignore: cast_nullable_to_non_nullable
              as double,
      rotate: rotate == freezed
          ? _value.rotate
          : rotate // ignore: cast_nullable_to_non_nullable
              as double,
      fill: fill == freezed
          ? _value.fill
          : fill // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$JazziconShapeCopyWith<$Res>
    implements $JazziconShapeCopyWith<$Res> {
  factory _$JazziconShapeCopyWith(
          _JazziconShape value, $Res Function(_JazziconShape) then) =
      __$JazziconShapeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) double center,
      @HiveField(1) double tx,
      @HiveField(2) double ty,
      @HiveField(3) double rotate,
      @HiveField(4) int fill});
}

/// @nodoc
class __$JazziconShapeCopyWithImpl<$Res>
    extends _$JazziconShapeCopyWithImpl<$Res>
    implements _$JazziconShapeCopyWith<$Res> {
  __$JazziconShapeCopyWithImpl(
      _JazziconShape _value, $Res Function(_JazziconShape) _then)
      : super(_value, (v) => _then(v as _JazziconShape));

  @override
  _JazziconShape get _value => super._value as _JazziconShape;

  @override
  $Res call({
    Object? center = freezed,
    Object? tx = freezed,
    Object? ty = freezed,
    Object? rotate = freezed,
    Object? fill = freezed,
  }) {
    return _then(_JazziconShape(
      center: center == freezed
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as double,
      tx: tx == freezed
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as double,
      ty: ty == freezed
          ? _value.ty
          : ty // ignore: cast_nullable_to_non_nullable
              as double,
      rotate: rotate == freezed
          ? _value.rotate
          : rotate // ignore: cast_nullable_to_non_nullable
              as double,
      fill: fill == freezed
          ? _value.fill
          : fill // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(
    typeId: HiveConfigs.kJazziconShapeId, adapterName: "JazziconShapeAdapter")
class _$_JazziconShape implements _JazziconShape {
  const _$_JazziconShape(
      {@HiveField(0) required this.center,
      @HiveField(1) required this.tx,
      @HiveField(2) required this.ty,
      @HiveField(3) required this.rotate,
      @HiveField(4) required this.fill});

  factory _$_JazziconShape.fromJson(Map<String, dynamic> json) =>
      _$$_JazziconShapeFromJson(json);

  @override
  @HiveField(0)
  final double center;
  @override
  @HiveField(1)
  final double tx;
  @override
  @HiveField(2)
  final double ty;
  @override
  @HiveField(3)
  final double rotate;
  @override
  @HiveField(4)
  final int fill;

  @override
  String toString() {
    return 'JazziconShape(center: $center, tx: $tx, ty: $ty, rotate: $rotate, fill: $fill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JazziconShape &&
            const DeepCollectionEquality().equals(other.center, center) &&
            const DeepCollectionEquality().equals(other.tx, tx) &&
            const DeepCollectionEquality().equals(other.ty, ty) &&
            const DeepCollectionEquality().equals(other.rotate, rotate) &&
            const DeepCollectionEquality().equals(other.fill, fill));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(center),
      const DeepCollectionEquality().hash(tx),
      const DeepCollectionEquality().hash(ty),
      const DeepCollectionEquality().hash(rotate),
      const DeepCollectionEquality().hash(fill));

  @JsonKey(ignore: true)
  @override
  _$JazziconShapeCopyWith<_JazziconShape> get copyWith =>
      __$JazziconShapeCopyWithImpl<_JazziconShape>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JazziconShapeToJson(this);
  }
}

abstract class _JazziconShape implements JazziconShape {
  const factory _JazziconShape(
      {@HiveField(0) required double center,
      @HiveField(1) required double tx,
      @HiveField(2) required double ty,
      @HiveField(3) required double rotate,
      @HiveField(4) required int fill}) = _$_JazziconShape;

  factory _JazziconShape.fromJson(Map<String, dynamic> json) =
      _$_JazziconShape.fromJson;

  @override
  @HiveField(0)
  double get center;
  @override
  @HiveField(1)
  double get tx;
  @override
  @HiveField(2)
  double get ty;
  @override
  @HiveField(3)
  double get rotate;
  @override
  @HiveField(4)
  int get fill;
  @override
  @JsonKey(ignore: true)
  _$JazziconShapeCopyWith<_JazziconShape> get copyWith =>
      throw _privateConstructorUsedError;
}

JazziconData _$JazziconDataFromJson(Map<String, dynamic> json) {
  return _JazziconData.fromJson(json);
}

/// @nodoc
class _$JazziconDataTearOff {
  const _$JazziconDataTearOff();

  _JazziconData call(
      {@HiveField(0) required double size,
      @HiveField(1) required int background,
      @HiveField(2) required List<JazziconShape> shapelist}) {
    return _JazziconData(
      size: size,
      background: background,
      shapelist: shapelist,
    );
  }

  JazziconData fromJson(Map<String, Object?> json) {
    return JazziconData.fromJson(json);
  }
}

/// @nodoc
const $JazziconData = _$JazziconDataTearOff();

/// @nodoc
mixin _$JazziconData {
  @HiveField(0)
  double get size => throw _privateConstructorUsedError;
  @HiveField(1)
  int get background => throw _privateConstructorUsedError;
  @HiveField(2)
  List<JazziconShape> get shapelist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JazziconDataCopyWith<JazziconData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JazziconDataCopyWith<$Res> {
  factory $JazziconDataCopyWith(
          JazziconData value, $Res Function(JazziconData) then) =
      _$JazziconDataCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) double size,
      @HiveField(1) int background,
      @HiveField(2) List<JazziconShape> shapelist});
}

/// @nodoc
class _$JazziconDataCopyWithImpl<$Res> implements $JazziconDataCopyWith<$Res> {
  _$JazziconDataCopyWithImpl(this._value, this._then);

  final JazziconData _value;
  // ignore: unused_field
  final $Res Function(JazziconData) _then;

  @override
  $Res call({
    Object? size = freezed,
    Object? background = freezed,
    Object? shapelist = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as int,
      shapelist: shapelist == freezed
          ? _value.shapelist
          : shapelist // ignore: cast_nullable_to_non_nullable
              as List<JazziconShape>,
    ));
  }
}

/// @nodoc
abstract class _$JazziconDataCopyWith<$Res>
    implements $JazziconDataCopyWith<$Res> {
  factory _$JazziconDataCopyWith(
          _JazziconData value, $Res Function(_JazziconData) then) =
      __$JazziconDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) double size,
      @HiveField(1) int background,
      @HiveField(2) List<JazziconShape> shapelist});
}

/// @nodoc
class __$JazziconDataCopyWithImpl<$Res> extends _$JazziconDataCopyWithImpl<$Res>
    implements _$JazziconDataCopyWith<$Res> {
  __$JazziconDataCopyWithImpl(
      _JazziconData _value, $Res Function(_JazziconData) _then)
      : super(_value, (v) => _then(v as _JazziconData));

  @override
  _JazziconData get _value => super._value as _JazziconData;

  @override
  $Res call({
    Object? size = freezed,
    Object? background = freezed,
    Object? shapelist = freezed,
  }) {
    return _then(_JazziconData(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as int,
      shapelist: shapelist == freezed
          ? _value.shapelist
          : shapelist // ignore: cast_nullable_to_non_nullable
              as List<JazziconShape>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(
    typeId: HiveConfigs.kJazziconDataId, adapterName: "JazziconDataAdapter")
class _$_JazziconData implements _JazziconData {
  const _$_JazziconData(
      {@HiveField(0) required this.size,
      @HiveField(1) required this.background,
      @HiveField(2) required this.shapelist});

  factory _$_JazziconData.fromJson(Map<String, dynamic> json) =>
      _$$_JazziconDataFromJson(json);

  @override
  @HiveField(0)
  final double size;
  @override
  @HiveField(1)
  final int background;
  @override
  @HiveField(2)
  final List<JazziconShape> shapelist;

  @override
  String toString() {
    return 'JazziconData(size: $size, background: $background, shapelist: $shapelist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JazziconData &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.background, background) &&
            const DeepCollectionEquality().equals(other.shapelist, shapelist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(shapelist));

  @JsonKey(ignore: true)
  @override
  _$JazziconDataCopyWith<_JazziconData> get copyWith =>
      __$JazziconDataCopyWithImpl<_JazziconData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JazziconDataToJson(this);
  }
}

abstract class _JazziconData implements JazziconData {
  const factory _JazziconData(
      {@HiveField(0) required double size,
      @HiveField(1) required int background,
      @HiveField(2) required List<JazziconShape> shapelist}) = _$_JazziconData;

  factory _JazziconData.fromJson(Map<String, dynamic> json) =
      _$_JazziconData.fromJson;

  @override
  @HiveField(0)
  double get size;
  @override
  @HiveField(1)
  int get background;
  @override
  @HiveField(2)
  List<JazziconShape> get shapelist;
  @override
  @JsonKey(ignore: true)
  _$JazziconDataCopyWith<_JazziconData> get copyWith =>
      throw _privateConstructorUsedError;
}
