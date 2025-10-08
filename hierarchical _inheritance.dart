class Animal {
  void eat() => print("Eating");
}
class Dog extends Animal {
  void bark() => print("Barking");
}
class Cat extends Animal {
  void meow() => print("Meowing");
}

void main() {
  var dog = Dog();
  var cat = Cat();
  dog.eat();
  cat.eat();
}
