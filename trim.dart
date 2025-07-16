void main(){

  // Trim is helpful when removing leading and trailing spaces from the text. 
  //This trim method will remove all the starting and ending spaces from the text.
  // You can also use trimLeft() and trimRight() methods to remove space from left and right, 
  // respectively.
//   Note: The trim() method in Dart doesn’t remove spaces in the middle.

//Example of trim()
  String address1 = " USA"; // Contain space at leading.
  String address2 = "Japan  "; // Contain space at trailing. 
  String address3 = "New Delhi"; // Contains space at middle.
  
  print("Result of address1 trim is ${address1.trim()}");
  print("Result of address2 trim is ${address2.trim()}");
  print("Result of address3 trim is ${address3.trim()}");
  print("Result of address1 trimLeft is ${address1.trimLeft()}");
  print("Result of address2 trimRight is ${address2.trimRight()}");

}