import '../chapter01intro/points.dart';
import 'Abstract.dart';

abstract class CartesianPoint {
  get x;

  get y;
}

abstract class PolarPoint {
  get rho;

  get theta;

  factory PolarPoint(a,b) => Point(a,b);//工厂方法 关键字factory
}

main(){
  CartesianPoint cartesianPoint = Point(3,4);
  print(cartesianPoint is CartesianPoint);
  print(cartesianPoint is PolarPoint);
  print(cartesianPoint is Point);
  print(cartesianPoint is Pair);
  print('=======================================');
  PolarPoint polarPoint = PolarPoint(3,4);
  print(polarPoint == cartesianPoint);
  print(polarPoint is CartesianPoint);
  print(polarPoint is PolarPoint);
  print(polarPoint is Point);
  print(polarPoint is Pair);
  print('=======================================');

  print('object' is String);
  print(4 is int);
  print([] is Point);
  print(cartesianPoint is String);
  print(cartesianPoint.toString() is String);
}