void checkValue(int? number) {
  if (number != null) {
    print('The number is $number');
  } else {
    print('Value is null');
  }

  // Null-aware operator (if null, use 0)
  int result = number ?? 0;
  print('Result: $result');
}