void main() {
  // ✅ OK: final can take a value from a function at runtime.
  final DateTime nowFinal = DateTime.now();

  // ❌ ERROR: const must be known at compile time. 
  // DateTime.now() is only known when the app is running.
  // const DateTime nowConst = DateTime.now(); 

  //const int gravity = 10; // ✅ OK: fixed number
  print(nowFinal);
}