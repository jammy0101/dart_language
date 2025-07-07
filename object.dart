void main() {
//  Object is non-nullable by default in Dart (with sound null safety).
// Object? is the nullable version.
  Object? value;
  print(value); // Output: Hello

  value = 123;
  print(value); // Output: 123

  value = true;
  print(value); // Output: true
}