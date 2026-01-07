// 1. A Base class to act as a constraint
abstract class DatabaseEntity {
  DateTime createdAt = DateTime.now();
}

// 2. The Mixin with a constraint
mixin Validatable on DatabaseEntity {
  final List<String> _errors = [];

  void addError(String msg) => _errors.add(msg);
  
  bool get isValid => _errors.isEmpty;

  void showErrors() {
    // Calling the extension method defined below
    _errors.fancyPrint();
  }
}

// 3. Extension Method
extension FancyPrint on List<String> {
  void fancyPrint() {
    for (var msg in this) {
      print('[ERROR] -> $msg');
    }
  }
}

// 4. Usage
class UserProfile extends DatabaseEntity with Validatable {
  String username;

  UserProfile(this.username) {
    if (username.length < 3) {
      addError("Username '$username' is too short!");
    }
  }
}

void main() {
  final user = UserProfile("Ab");
  
  if (!user.isValid) {
    user.showErrors();
  } else {
    print("User is valid! Created at: ${user.createdAt}");
  }
}