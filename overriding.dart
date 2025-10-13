class Animal {
  void speak() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print('Dog barks');
  }
}

void main() {
  Animal a = Animal();
  Animal d = Dog(); // polymorphism: reference is Animal, actual object is Dog

  a.speak(); // Animal makes a sound
  d.speak(); // Dog barks  <-- overridden method used
}
