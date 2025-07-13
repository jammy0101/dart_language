

void main(){


  List<String> names = [ " KHAN ", " OK" , "Kali"];
  List<int> num = [ 1, 2 , 4 , 5];
  List<bool> bool1 =  [true ,false];


  print("${num.runtimeType}");
  print("${bool1.runtimeType}");
  print("${names.runtimeType}");

  print("${num}");
  print("${bool1}");
  print("${names}");

  print("${num.length}");
  print("${bool1.length}");
  print("${names.length}");

  print(names[0]);
  print(names.reversed);
  print(names.isNotEmpty);
  print(names.isEmpty);



  for(String i in names ){

    print(i);
  }

  names.forEach((names) {

    print(names);
  });

}