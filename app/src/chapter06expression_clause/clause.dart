import 'dart:math';

f(x) {
  if (x > 0)
    print(x);
  else
    print(-x);
}

g(x) => {
      if (x > 0) {print(x)} else {print(-x)}
    };

main() {
  for (var value in [1, 2, 4, 8]) {
    print(pow(2, value));
  }
  var list = List(100);
  for (int i = 0; i < 100; i++) {
    list[i] = () => print(i);
  }
  list.forEach((f) => f());
}
