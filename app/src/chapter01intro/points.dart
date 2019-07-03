library points;

import 'dart:math';

import '../chapter02object_interface_class_mixin/Interface.dart';

class First {}

main() {
  basicPrints();
  var list = [1, 25, 3];
  print(list[0]);
  print([].length);
  print(list.length);
  print([].isEmpty);
  print(list.isEmpty);

  print(twice(list[2]));
  print(twice(3.141592654));
  print(max(3, 4));
  print('main');
  print(maxElement(list));
//  print(maxElement('list'));
//  print(maxElement([]));//Maximal element undefined for empty array

  var origin = new Point(0, 0);
  var point = new Point(3, 4);
  var another = new Point(3, 4);
  print(origin); //Instance of 'Point'
  print(another); //Instance of 'Point'
  print(origin.scale(2).x);
  print(another.scale(2).x);
  print((point + another + point).x);
  var distance = Point.distance(origin, another);
  print(distance);
  print(distance.runtimeType);
}

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

void basicPrints() {
  print('main');
  print('Hello,World!');
  print("Hello,World!");
  print(3);
  print(3 + 4);
  print((3 + 4) * 6);
  print(1 + 2 * 2);
  print(1234567890987654321 * 1234567890987654321);
  print(3.141592654);
  print('single quoted');
  print("double quoted");
  print('a string');
  print(true);
  print(false);
  print([]);
  print([
    0,
    1.0,
    false,
    'a',
    [2, 2.3, true]
  ]);
}

maxElement(list) {
  var currentMax = list.isEmpty
      ? throw 'Maximal element undefined for empty array'
      : list[0];
  for (int i = 0; i < list.length; i++) {
    currentMax = max(currentMax, list[i]);
  }
  return currentMax;
}

twice(x) => x * 2;

max(x, y) => (x > y) ? x : y;
