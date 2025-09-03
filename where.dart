
void main(){

  List<int> number = [1,2,3,4,5,6,7,8];

  List<int> oddNumber = number.where((number) => number.isOdd).toList();

  List<int> evenNumber  = number.where((number) => number.isEven).toList();

  print(oddNumber);
  print(oddNumber.runtimeType);
  print(evenNumber);
}