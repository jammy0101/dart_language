class BankAccount {
  double _balance = 0; // private variable

  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print('Insufficient balance');
    }
  }
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(500);
  account.withdraw(200);
  print('Balance: ${account.balance}');
}
