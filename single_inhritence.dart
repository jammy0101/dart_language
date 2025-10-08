class A {
  void display() => print("A");
}
class B extends A {
  void show() => print("B");
}
void main() {
  var b = B();
  b.display();
  b.show();
}
