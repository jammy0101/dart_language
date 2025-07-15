import 'dart:io';

void main(){
print('Enter the number you want :');
int number = int.parse(stdin.readLineSync()!);
print(number);
}