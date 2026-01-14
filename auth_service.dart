// 1. The Blueprint (In Dart, we use an abstract class as an Interface)
abstract class AuthService {
  bool login(String username, String password);
}

// 2. The Implementation
class FirebaseAuth implements AuthService {
  @override
  bool login(String username, String password) {
    return username == "admin" && password == "1234";
  }
}

// 3. The Manager (Dependency Injection)
class LoginManager {
  final AuthService service; // 'final' is like 'let' in Swift

  LoginManager(this.service); // Shorthand constructor

  void login(String username, String password) {
    if (service.login(username, password)) {
      print("Login success 🎯");
    } else {
      print("Login failed ❌");
    }
  }
}

void main() {
  // How to call it:
  var myService = FirebaseAuth();
  var manager = LoginManager(myService);

  manager.login("admin", "1234");
}