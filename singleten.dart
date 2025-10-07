class Database {
  static final Database _instance = Database._internal();

  // Private named constructor
  Database._internal();

  // Factory constructor returns the same instance
  factory Database() {
    return _instance;
  }

  void connect() {
    print("Database connected!");
  }
}

void main() {
  var db1 = Database();
  var db2 = Database();

  db1.connect();

  print(db1 == db2); // true — both are same instance
}
