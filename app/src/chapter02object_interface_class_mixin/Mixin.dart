
import 'Box.dart';
import 'Interface.dart';

class MyView extends Box with PolarPoint,CartesianPoint {
  var a,b;

  MyView(this.a, this.b);

  @override
  get rho => a;

  @override
  get theta => b;

  @override
  get x => a;

  @override
  get y => b;
}

main(){
  print(Box.numberOfInstance == 0
      ? 'No boxes yet'
      : 'We\'ve got ${Box.numberOfInstance} boxes');
  var box = MyView(3,4);
  var box2 = MyView(3,4);
  print(Box.numberOfInstance == 0
      ? 'No boxes yet'
      : 'We\'ve got ${Box.numberOfInstance} boxes');

  print(box.theta);

}