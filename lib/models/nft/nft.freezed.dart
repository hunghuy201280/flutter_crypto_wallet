// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nft _$NftFromJson(Map<String, dynamic> json) {
  return _Nft.fromJson(json);
}

/// @nodoc
class _$NftTearOff {
  const _$NftTearOff();

  _Nft call(
      {String? name,
      String? image,
      String? description,
      required String tokenId,
      required String addressOwner}) {
    return _Nft(
      name: name,
      image: image,
      description: description,
      tokenId: tokenId,
      addressOwner: addressOwner,
    );
  }

  Nft fromJson(Map<String, Object?> json) {
    return Nft.fromJson(json);
  }
}

/// @nodoc
const $Nft = _$NftTearOff();

/// @nodoc
mixin _$Nft {
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get tokenId => throw _privateConstructorUsedError;
  String get addressOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NftCopyWith<Nft> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftCopyWith<$Res> {
  factory $NftCopyWith(Nft value, $Res Function(Nft) then) =
      _$NftCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? image,
      String? description,
      String tokenId,
      String addressOwner});
}

/// @nodoc
class _$NftCopyWithImpl<$Res> implements $NftCopyWith<$Res> {
  _$NftCopyWithImpl(this._value, this._then);

  final Nft _value;
  // ignore: unused_field
  final $Res Function(Nft) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? tokenId = freezed,
    Object? addressOwner = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      addressOwner: addressOwner == freezed
          ? _value.addressOwner
          : addressOwner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NftCopyWith<$Res> implements $NftCopyWith<$Res> {
  factory _$NftCopyWith(_Nft value, $Res Function(_Nft) then) =
      __$NftCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? image,
      String? description,
      String tokenId,
      String addressOwner});
}

/// @nodoc
class __$NftCopyWithImpl<$Res> extends _$NftCopyWithImpl<$Res>
    implements _$NftCopyWith<$Res> {
  __$NftCopyWithImpl(_Nft _value, $Res Function(_Nft) _then)
      : super(_value, (v) => _then(v as _Nft));

  @override
  _Nft get _value => super._value as _Nft;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? tokenId = freezed,
    Object? addressOwner = freezed,
  }) {
    return _then(_Nft(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      addressOwner: addressOwner == freezed
          ? _value.addressOwner
          : addressOwner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nft implements _Nft {
  _$_Nft(
      {this.name,
      this.image,
      this.description,
      required this.tokenId,
      required this.addressOwner});

  factory _$_Nft.fromJson(Map<String, dynamic> json) => _$$_NftFromJson(json);

  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final String tokenId;
  @override
  final String addressOwner;

  @override
  String toString() {
    return 'Nft(name: $name, image: $image, description: $description, tokenId: $tokenId, addressOwner: $addressOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nft &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.tokenId, tokenId) &&
            const DeepCollectionEquality()
                .equals(other.addressOwner, addressOwner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(tokenId),
      const DeepCollectionEquality().hash(addressOwner));

  @JsonKey(ignore: true)
  @override
  _$NftCopyWith<_Nft> get copyWith =>
      __$NftCopyWithImpl<_Nft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NftToJson(this);
  }
}

abstract class _Nft implements Nft {
  factory _Nft(
      {String? name,
      String? image,
      String? description,
      required String tokenId,
      required String addressOwner}) = _$_Nft;

  factory _Nft.fromJson(Map<String, dynamic> json) = _$_Nft.fromJson;

  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get description;
  @override
  String get tokenId;
  @override
  String get addressOwner;
  @override
  @JsonKey(ignore: true)
  _$NftCopyWith<_Nft> get copyWith => throw _privateConstructorUsedError;
}
