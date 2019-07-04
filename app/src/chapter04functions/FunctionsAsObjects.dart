/**
 * 顶层或静态的函数声明可以被命名，而且该名称始终指向同一个对象
 * */
comupteIdentityFunction() => (a) => a;

makeCounter() {
  var i = 0;
  counter() {
    i++;
    print('i = $i');
  }

  return counter;
}

f(x) {
  return (x) => x;
}

g() {
  h() => 42;
  print(f.runtimeType);
  print(f(0).runtimeType);
  print(g.runtimeType);
  print(h.runtimeType);
  print('h.runtimeType is Function == ${h.runtimeType is Function}');

}

main() {
  print(comupteIdentityFunction()(1));
  var counter = makeCounter();
  counter();
  counter();
  counter();
  print(identical(makeCounter(), makeCounter()));
  print(counter == makeCounter());
  print(counter.runtimeType == makeCounter().runtimeType);
  print(counter.runtimeType);
  print(identical(counter.runtimeType, makeCounter().runtimeType));
  print(counter.runtimeType is Function);
  g();
}
