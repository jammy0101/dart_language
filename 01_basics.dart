void main() {
  // 1. Variables
  String name = "Gemini";
  int year = 2026;
  // double version = 3.0;
  // bool isLearning = true;

  // 2. String Interpolation (The easy way to combine variables)
  print("Hello, I'm $name. The year is $year.");

  // 3. Const vs Final (Crucial for Flutter)
  const pi = 3.14; // Constant at compile-time
  final currentTime = DateTime.now(); // Constant once assigned at runtime

  print("Pi is $pi and the time is $currentTime");
}