// Define the abstract class
abstract class Animal {
  // Abstract method (no body)
  void makeSound();

  // Normal method (optional)
  void eat() {
    print("Animal is eating...");
  }
}

// A subclass that implements the abstract method
class Dog extends Animal {
  @override
  void makeSound() {
    print("Bark!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  // You cannot do this:
  // var animal = Animal(); ❌ (Error)

  // But you can create objects of subclasses:
  var dog = Dog();
  var cat = Cat();

  dog.makeSound(); // Output: Bark!
  cat.makeSound(); // Output: Meow!
  dog.eat();       // Output: Animal is eating...
}
