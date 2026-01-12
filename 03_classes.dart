class Spacecraft {
  String name;
  DateTime? launchDate;

  // Constructor with "Syntactic Sugar"
  Spacecraft(this.name, this.launchDate);

  // Named Constructor
  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate!).inDays ~/ 365;
      print('Launched: $years years ago');
    } else {
      print('Not yet launched');
    }
  }
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();
}