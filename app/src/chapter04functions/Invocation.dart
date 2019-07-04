import 'NamingParameters.dart';

main() {
  print(true.runtimeType); //bool
  print('Hello'.length.toString()); //5
  print('Hello'..length.toString()); //Hello
  print('Hello'..length);

  var address = Address.of("Freddy Kruger")
    ..street = "Elm 13a"
    ..city = "Carthage"
    ..country = "Eurasia"
    ..zip = 66666;

  print(address);

  var list = ['red','green','blue','orange','pink'].sublist(1,4)..sort();
  print('list = $list');

//  var proxy = Proxy((a) => a * 2);
//  print(proxy(1));
}
