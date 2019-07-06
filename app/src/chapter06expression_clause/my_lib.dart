import 'another_lib.dart' as another show topLevelVariable, SomeClass;

var myTopLevelVariable = 0;

class MyClass {
  static var myClassVariable = 0;
}

class Complex {
  final num re, im;

  Complex(this.re, this.im);

  Complex.fromScalar(num s) : this(s, 0);

  Complex operator +(Complex complex) =>
      Complex(re + complex.re, im + complex.im);

  operator *(Complex complex) => Complex(re * complex.re - im * complex.im,
      re * complex.im - re * complex.im + im * complex.re);
}

class Matrix {
  final List rows;

  Matrix.fromRows(this.rows);

  operator [](int index) => rows[index];
}

unsupportedOperationFoo() => throw 'Foo is not supported';

main() {
  myTopLevelVariable += 1;
  MyClass.myClassVariable -= 1;
  another.topLevelVariable *= 3;
  another.SomeClass.classVariable /= 10;
  print(myTopLevelVariable);
  print(MyClass.myClassVariable);
  print(another.topLevelVariable);
  print(another.SomeClass.classVariable);
  unsupportedOperationFoo();
}
