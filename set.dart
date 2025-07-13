void main() {
  Set<String> name = {'Mango', 'Apple', 'Strawbery'};
  Set<int> num = {1, 2, 3, 4, 5};
  Set<bool> bool1 = {true, false};

  print(name.iterator);
  print(name.first);
  //print(name.single);
  print(name.lastOrNull);
  print(name.last);
  print(bool1);
  print(name);
  print(num);



  for(var i in name){

    print(i);
  }

   name.forEach((name) {

    print(name);
  });
}
