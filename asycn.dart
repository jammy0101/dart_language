// // Function that simulates a network request
// Future<String> fetchUserOrder() {
//   return Future.delayed(const Duration(seconds: 2), () => 'Large Iced Coffee');
// }

// void main() async {
//   print('Fetching your order...');

//   try {
//     // 'await' stops the code here until the future completes
//     var order = await fetchUserOrder();
//     print('Your order is ready: $order');
//   } catch (err) {
//     print('Error: $err');
//   } finally {
//     print('Order process finished.');
//   }
// }

Future<String> fetchingUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => "Large Aiced Coffee..");
}

void main() async {
  print("Fetching your order...");

  try {
    var order = await fetchingUserOrder();

    print("Your order is ready..$order");
  } catch (e) {
    print('Error: $e');
  } finally {
    print("Order is Completed now..");
  }
}
