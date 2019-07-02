import 'dart:math';

import 'Interface.dart';

class Point implements CartesianPoint, PolarPoint {
  final rho, theta;

  Point.polar(this.rho, this.theta);

  Point(a, b)
      : this.polar(sqrt(a * a + b * b),atan(a/b));

  const Point.fi(this.rho,this.theta);

  get x => rho * cos(theta);

//  set x(newX) {
//    rho = sqrt(newX * newX + y * y);
//    theta = acos(newX / rho);
//  }

  get y => rho * sin(theta);

//  set y(newY) {
//    rho = sqrt(x * x + newY * newY);
//    theta = asin(newY / rho);
//  }

  scale(factor) => Point(rho * factor, theta);

  operator +(p) => Point(x + p.x, y + p.y);

  operator ==(p) {
    print("x = $x, p.x = ${p.x}  y = $y, p.y = ${p.y}");
    return x == p.x && y == p.y;
  }

  static distance(x, y) {
    var dx = x.x - y.x;
    var dy = x.y - y.y;
    return sqrt((dx * dx + dy * dy));
  }
}

main() {
  var point = new Point(3, 4);
  print(point.x);
  print(point.y);
  print(point.theta);
  print(point.rho);
  print("=======================");
//  point.x = 3;
  print(point.x);
  print(point.y);
  print(point.theta);
  print(tan(point.theta));
  print(point.rho / sqrt(2));
}
