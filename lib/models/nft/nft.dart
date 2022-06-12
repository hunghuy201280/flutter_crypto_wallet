import 'package:freezed_annotation/freezed_annotation.dart';

part 'nft.freezed.dart';
part 'nft.g.dart';

@freezed
class Nft with _$Nft {
  factory Nft({
    String? name,
    String? image,
    String? description,
    required String tokenId,
    required String addressOwner,
  }) = _Nft;

  factory Nft.fromJson(Map<String, dynamic> json) => _$NftFromJson(json);
}
