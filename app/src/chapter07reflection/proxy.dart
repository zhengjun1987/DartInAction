import 'dart:mirrors';

@proxy
class Proxy {
  InstanceMirror instanceMirror;

  get forwardee => instanceMirror.reflectee;

  Proxy(f) {
    instanceMirror = reflect(f);
  }

  @override
  noSuchMethod(Invocation invocation) {
    instanceMirror.delegate(invocation);
  }
}

main() {
  var proxy = Proxy("String Instance");
  print(proxy.forwardee.length);

  int a = 10, b = 20, c = 5;
  c = c * c * c;

  print("$a + $b = ${a + b}");
  print("$a%$b = ${a % b}"); // Add a break point here
  print("$a*$b = ${a * b}");
  print("$a/$b = ${a / b}");
  print(c);
}
