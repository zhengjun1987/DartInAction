import '../chapter01intro/points.dart';

class Point3D extends Point {
  var z;

  Point3D(a, b, c) : super(a, b) {
    z = c;
  }
}
