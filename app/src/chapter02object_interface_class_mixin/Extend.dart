class S {
  var v;
  final f = 0;

  get g => 42;

  set s(x) => v = 2;

  m(a, b) => 91;
}

class C extends S {
//  v() => 1;
//  f() => 2;
//  g() => 100;
}

class D extends S {
//  s(y) => 200;
}

class E extends S {
//  m(x,y,z) => 200;//Error: The method 'E.m' has more required arguments than those of overridden method 'S.m'.
}

main(){
  var e = new E();
//  print(e.m(1,2,3));
  print(e.m(1,2));
}
