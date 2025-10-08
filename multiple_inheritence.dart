class A {
  void display() => print("Class A");
}
class B extends A {
  void show() => print("Class B");
}
class C extends B {
  void printC() => print("Class C");
}

void main() {
  var c = C();
  c.display();
  c.show();
  c.printC();
}
