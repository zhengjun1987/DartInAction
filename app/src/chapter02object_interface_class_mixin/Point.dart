import 'dart:math';

import '../chapter01intro/points.dart';

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
