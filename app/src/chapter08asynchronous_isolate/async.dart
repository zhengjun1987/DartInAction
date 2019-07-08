import 'dart:io';

import 'dart:isolate';

main() {
  print("Enter your name :");

  // prompt for user input
  String name = stdin.readLineSync();

  // this is a synchronous method that reads user input
  print("Hello Mr. ${name}");
  print("End of main");

  var file = File(name);
  file.readAsString().then((string) => print(string));
}
