import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 50);

    // Observando resultado
    if (result) {
      print("Transferência realizada.");
    }
  } on SenderIdInvalidException catch (exception) {
    print("O ID '${exception.idSender}' é inválido, tente novamente.");
  } on ReceiverIdInvalidException catch (exception) {
    print("O ID '${exception.idReceiver}' é inválido, tente novamente.");
  } on SenderNotAuthenticatedException catch (exception) {
    print("O ID '${exception.idSender}' não está autenticado.");
  } on SenderBalanceLowerThanAmountException catch (exception) {
    print(
        "O saldo do usário ID '${exception.idSender}' não é suficiente para realizaçaõ da transferência.");
  }
}
