import 'dart:io';

void main() {
  int? marks = int.tryParse(stdin.readLineSync()!);

  if (marks! >= 0 && marks <= 32) {
    print('FAIL = ${marks}');
  } else if (marks >= 33 && marks <= 50) {
    print('PASS = ${marks}');
  } else if (marks >= 51 && marks <= 70) {
    print('Excellent = ${marks}');
  } else if (marks >= 71 && marks <= 90) {
    print('Asthetic = ${marks}');
  } else if (marks >= 91 && marks <= 100) {
    print('WOW = ${marks}');
  } else {
    print('Invelid');
  }
  print('GOOD');
}
