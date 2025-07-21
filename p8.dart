import 'dart:io';

void main(){
  //Write a Dart program to convert String to int.
  String numbers = '123';
  print(numbers);
  int number = int.parse(stdin.readLineSync()!);
  print(number);
}