const aTopLevelConstant = 99;
thrice(x) => 3*x;
class Foo {
  static threeCubed() => thrice(thrice(3));
}

class Konst {
  final x;
  const Konst(this.x);
}