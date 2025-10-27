class Point {
  double x;
  double y;

  Point(this.x, this.y);

  // Overload the + operator
  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  // Overload the - operator
  Point operator -(Point other) {
    return Point(x - other.x, y - other.y);
  }

  // Overload the == operator
  @override
  bool operator ==(Object other) {
    if (other is Point) {
      return x == other.x && y == other.y;
    }
    return false;
  }

  // For printing nicely
  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  Point p1 = Point(3, 4);
  Point p2 = Point(1, 2);

  Point sum = p1 + p2; // uses overloaded + operator
  Point diff = p1 - p2; // uses overloaded - operator

  print('Sum: $sum');     // Output: Sum: Point(4.0, 6.0)
  print('Difference: $diff'); // Output: Difference: Point(2.0, 2.0)

  print(p1 == Point(3, 4)); // Output: true
}
