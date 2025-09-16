// class BankAccount {
//   static int totalAccounts = 0; // shared across all accounts

//   BankAccount() {
//     totalAccounts++;
//   }
// }

// void main() {
//   BankAccount a1 = BankAccount();
//   BankAccount a2 = BankAccount();
//   BankAccount a3 = BankAccount();

//   print("Total accounts created: ${BankAccount.totalAccounts}"); // 3
// }


// void main(){

//   const double pi = 3.14857689;

//   pi = 3.000000;

//   print(pi);
// }


// void main() {
//   dynamic value = 10;
//   print(value); // 10

//   value = "Hello"; 
//   print(value); // Hello (type changed!)

//   value = true;
//   print(value); // true
// }

// void main() {
//   Object obj = "Hello";

//   print(obj.toString()); // ✅ Allowed (toString() is in Object)

//   // print(obj.length); ❌ Error (Object doesn’t know String has length)

//   // Fix with casting:
//   // print((obj as String).length); // ✅ 5
//   print((obj as String).length);
// }


// void main() {
//   final name = "Rashid"; 
//    //name = "Ali"; //❌ Error (can’t change)
//   print(name);
// }


 late String username;

void main() {
  //username = "Rashid"; // initialized later
  print(username); // Rashid
}

