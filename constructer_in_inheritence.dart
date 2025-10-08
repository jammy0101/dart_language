class Animal {
  String name;
  Animal(this.name);
}

class Dog extends Animal {
  Dog(String name) : super(name); // call parent constructor
}

void main() {
  var dog = Dog("Buddy");
  print(dog.name);
}
