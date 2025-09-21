void main() {
  Object obj = "Hello";

  print(obj.toString()); // ✅ Allowed (toString() is in Object)

  // print(obj.length); ❌ Error (Object doesn’t know String has length)

  // Fix with casting:
  // print((obj as String).length); // ✅ 5
  print((obj as String).length);
}