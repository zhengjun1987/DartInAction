import '../chapter01intro/points.dart';

class Box {
  static var numberOfInstance = 0;

  Box() {
    numberOfInstance++;
  }
}

class Cat {
  meow(){
    print('Meow!');
  }
}

class DeadCat extends Cat {}

class LiveCat extends Cat {
  LiveCat() {
    print("I'm alive!");
  }
}

/**
 * 此句意义在于声明了一个变量schrodingers
 * 除非调用变量的成员方法，否则等号后面的初始化永远不会被执行。
 * */
Cat schrodingers = new LiveCat();

main() {
  print(Box.numberOfInstance == 0
      ? 'No boxes yet'
      : 'We\'ve got ${Box.numberOfInstance} boxes');
  var box = Box();
  print(Box.numberOfInstance == 0
      ? 'No boxes yet'
      : 'We\'ve got ${Box.numberOfInstance} boxes');

//  schrodingers.meow(); 此处调用会执行初始化动作

  if (schrodingers == null) { //此处判空为true
    schrodingers = new DeadCat();
    print(schrodingers);
  }

  final origin = new Point(3,4);
  print(origin.x);
//  origin = new Point(4, 3);
  final another = new Point(3,4);
  print(origin == origin);
  print(origin == another);
  print(identical(origin, origin));
  print(identical(origin, another));
}
