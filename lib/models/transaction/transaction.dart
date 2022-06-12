import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/enums.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    required String hash,
    required String from,
    String? to,
    required int timestamp,
    required TransactionType type,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
