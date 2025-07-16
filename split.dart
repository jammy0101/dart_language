//Example of split()
void main() { 
  String allNames = "Ram, Hari, Shyam, Gopal";

  List<String> listNames = allNames.split(",");
  print("Value of listName is $listNames");

  print("List name at 0 index ${listNames[0]}");
  print("List name at 1 index ${listNames[1]}");
  print("List name at 2 index ${listNames[2]}");
  print("List name at 3 index ${listNames[3]}");
   
} 