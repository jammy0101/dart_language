class DatabaseService {
  // 1. Create a private static variable to hold the one and only instance
  static final DatabaseService _instance = DatabaseService._internal();

  // 2. A private named constructor (the ._internal part is just a name)
  // This cannot be called from outside this class.
  DatabaseService._internal();

  // 3. A factory constructor that always returns the same _instance
  factory DatabaseService() {
    return _instance;
  }

  // Example property
  String connectionString = "Connected to Production DB";
}

void main() {
  // Try to create two "different" instances
  var db1 = DatabaseService();
  var db2 = DatabaseService();

  // In a normal class, these would be different objects.
  // In a Singleton, they are identical!
  print(identical(db1, db2)); // Output: true
  
  db1.connectionString = "Connected to Test DB";
  print(db2.connectionString); // Output: Connected to Test DB (Changing one changed the other!)
}