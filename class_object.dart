class BankAccount {
  static int totalAccounts = 0; // shared across all accounts

  BankAccount() {
    totalAccounts++;
  }
}

void main() {
  // BankAccount a1 = BankAccount();
  // BankAccount a2 = BankAccount();
  // BankAccount a3 = BankAccount();

  print("Total accounts created: ${BankAccount.totalAccounts}"); // 3
}