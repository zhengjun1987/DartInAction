class Fruit {
  var color;

  Fruit(this.color);
}

class Apple extends Fruit {
  Apple() : super('Red');
}

class Orange extends Fruit {
  Orange() : super('Orange');
}

printColors<T extends Fruit>(List<T> fruits) {
  for (var value in fruits) {
    print('color = ${value.color}');
  }
}
// Dart编程文档暂时好像没有关于泛型协变的内容，仅有逆变的写法
//addApples<Apple extends T>(List<T> fruits) {
//  fruits.add(Apple());
//}

main() {
  List<Apple> apples = [];
  List<Orange> oranges = List();
  apples.add(Apple());
  oranges..add(Orange())..add(Orange());
  printColors(apples);
  printColors(oranges);
}
