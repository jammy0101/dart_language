import 'dart:io';

void main() {
  String num = stdin.readLineSync()!;

  if (num == 'Green') {
    print('Run');
  } else if (num == 'Yello') {
    print('ready');
  } else if (num == 'Red') {
    print('Stop');
  } else {
    print('Invelid number');
  }
}
