import 'dart:async';

void main() {
  print('A');

  scheduleMicrotask(() => print('B'));

  Future(() => print('C'));

  Future.microtask(() => print('D'));

  Future.delayed(Duration.zero, () => print('E'));

  print('F');
}
