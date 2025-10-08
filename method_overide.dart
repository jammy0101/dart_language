class Animal {
  void sound() => print("Animal sound");
}

class Dog extends Animal {
  @override
  void sound() => print("Dog barks");
}

void main() {
  var d = Dog();
  d.sound();
}
