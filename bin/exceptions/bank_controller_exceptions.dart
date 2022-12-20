class SenderIdInvalidException implements Exception {
  String idSender;
  SenderIdInvalidException({required this.idSender});
}

class ReceiverIdInvalidException implements Exception {
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});
}

class SenderNotAuthenticatedException implements Exception {}

class SenderBalanceLowerThanAmountException implements Exception {}
