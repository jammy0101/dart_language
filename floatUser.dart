import 'dart:io';

void main(){

  print('Enter the double value :');
  double number = double.parse(stdin.readLineSync()!);
  print(number);
}