void main() {
  //Sometimes you will need to break out of the loop immediately without checking the condition.
  // You can do this using break statement.
//The break statement is used to exit a loop. It stops the loop immediately,
// and the program’s control moves outside the loop. Here is syntax of break:
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
}