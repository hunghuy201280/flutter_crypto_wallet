// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nft _$$_NftFromJson(Map<String, dynamic> json) => _$_Nft(
      name: json['name'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      tokenId: json['tokenId'] as String,
      addressOwner: json['addressOwner'] as String,
    );

Map<String, dynamic> _$$_NftToJson(_$_Nft instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'tokenId': instance.tokenId,
      'addressOwner': instance.addressOwner,
    };
