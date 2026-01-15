void main() {
  // A list of integers to test
  final List<int> numbers = [42, 7, 1024, 13, -8, -5, 0];

  print('--- High-Performance Odd/Even Check ---');

  for (var n in numbers) {
    // We use the Bitwise AND operator (&)
    // n & 1 compares the last bit of n with 1.
    // If result is 1, it's ODD. If 0, it's EVEN.
    bool isEven = (n & 1) == 0;

    if (isEven) {
      print('Number $n is: EVEN');
    } else {
      print('Number $n is: ODD');
    }
  }

  // Tougher Example: Using a Functional Approach
  print('\n--- Filtered Results ---');
  var evensOnly = numbers.where((n) => (n & 1) == 0);
  var oddsOnly = numbers.where((n) => (n & 1) != 0);

  print('Evens: $evensOnly');
  print('Odds: $oddsOnly');
}