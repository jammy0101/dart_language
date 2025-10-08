class Animal {
  void makeSound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  void makeSound() {
    super.makeSound(); // calls parent version
    print("Dog barks");
  }
}

void main() {
  var d = Dog();
  d.makeSound();
}
