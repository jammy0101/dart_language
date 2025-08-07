import 'dart:math';

// custom exception class
class NegativeSquareRootException implements Exception {
  @override
  String toString() {
    return 'Sqauare root of negative number is not allowed here.';
  }
}

// get square root of a positive number
num squareRoot(int i) {
  if (i < 0) {
    // throw `NegativeSquareRootException` exception
    throw NegativeSquareRootException();
  } else {
    return sqrt(i);
  }
}

void main() {
  try {
    var result = squareRoot(-4);

    print("result: $result");
  } on NegativeSquareRootException catch (e) {
    print("Oops, Negative Number: $e");
  } catch (e) {
    print(e);
  } finally {
    print('Job Completed!');
  }
}