void main() {
  // we will use map for like key value pair
  Map<String, String> name = {
    'name': 'Rashid khan',
    'Age': '23',
    'roll_no': '7',
  };

  Map<String, dynamic> name1e = {
    'name': 'Rashid khan',
    'Age': 23,
    'roll_no': 7,
  };

  print(name);
  print(name1e);



  name.forEach((key, value) => (name){
    print("key : ${name.key}  value : ${name.value}");
  });

}
