class MyUtils {
   String appName = "My Flutter App";
  

  static void showMessage() {
   // print("Welcome to $appName");
   print('HELLO WORLD !');
  }
}

void main() {
 // print(MyUtils.appName);

 MyUtils p1 = MyUtils();
print( p1.appName);

MyUtils.showMessage();

}
