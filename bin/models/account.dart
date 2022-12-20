class Account {
  String name;
  double balance;
  bool isAuthenticated;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated})
      : assert(name.isNotEmpty); //O name não pode ser uma string vazia

  editBalance({required value}) {
    balance = balance + value;
  }
}
