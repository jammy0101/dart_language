void main() {
  var fruits = ['Apple', 'Banana', 'Mango'];
  
  // Adding to a list
  fruits.add('Orange');

  // For-in loop
  print("Fruit list:");
  for (var fruit in fruits) {
    if (fruit.startsWith('A')) {
      print("Found an 'A' fruit: $fruit");
    } else {
      print(fruit);
    }
  }

  // Arrow syntax (Short-hand functions)
  fruits.forEach((f) => print("Processed: $f"));
}