import 'package:flutter_crypto_wallet/models/nft/nft.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  factory Collection({
    required String address,
    String? name,
    String? symbol,
    List<Nft>? items,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
