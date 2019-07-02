import 'Point.dart';

const origin = Point.fi(0, 0);

class Proxy extends Object{
  final forwardee;
  Proxy(this.forwardee);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    runMethod(forwardee,invocation);
  }
}

void runMethod(forwardee, Invocation invocation) {
  print('runMethod');
}

class ExtendedPoint extends Point {
  ExtendedPoint(a, b) : super(a, b);
  get distanceFromOrigin => Point.distance(origin, this);
}

main(){
  var proxy = Proxy(origin);
//  proxy.invoke();// Error: The method 'invoke' isn't defined for the class 'Proxy'.

  print(Point.distance(new Point(3, 4), origin));
  print(ExtendedPoint(3,4).distanceFromOrigin);

  print(origin.runtimeType);//Point
//  print(Point.runtimeType);//Error: Getter not found: 'runtimeType'.
  print((Point).runtimeType);//_Type
  print((ExtendedPoint).runtimeType);//_Type
  print((ExtendedPoint).runtimeType.runtimeType);//_Type
}