import 'package:freezed_annotation/freezed_annotation.dart';

enum CreateWalletErrorState {
  passwordNotMatch,
  passwordNotMeetCondition,
  passwordEmpty,
  networkError,
  policyAccept,
}

enum ImportWalletErrorState {
  passwordNotMatch,
  passwordNotMeetCondition,
  passwordEmpty,
  networkError,
  policyAccept,
}

enum TransactionType {
  @JsonValue(0)
  withdraw,
  @JsonValue(1)
  deposit,
  @JsonValue(2)
  swap,
  @JsonValue(3)
  undefined,
}
