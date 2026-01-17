import 'dart:math' as math;

void main() {
  // Example usage:
  String expression = "sin(45) + sqrt(16) * log(10)";
  
  print("Expression: $expression");
  // In a real app, you would use a parser library like 'math_expressions'
  // But here is how you access the core scientific functions:
  
  double result = performScientificCalculations();
  print("Result of manual demo: $result");
}

class ScientificCalculator {
  // Basic Arithmetic
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) => b != 0 ? a / b : double.nan;

  // Advanced Functions
  double power(double base, double exponent) => math.pow(base, exponent).toDouble();
  double squareRoot(double n) => math.sqrt(n);
  
  // Trigonometry (Input in Radians)
  double sin(double radians) => math.sin(radians);
  double cos(double radians) => math.cos(radians);
  double tan(double radians) => math.tan(radians);

  // Logarithms
  double ln(double n) => math.log(n); // Natural log (base e)
  double log10(double n) => math.log(n) / math.ln10; // Base 10
}

double performScientificCalculations() {
  var calc = ScientificCalculator();
  
  // Example: 2^3 + sqrt(25)
  return calc.power(2, 3) + calc.squareRoot(25);
}