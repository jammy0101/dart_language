import 'dart:async';

Future<void> main() async {
  print('1');

  final f = Future(() {
    print('2');
  });

  print('3');

  await f.then((_) {
    print('4');
  });

  print('5');
}
