import 'dart:io';

import '../chapter01intro/points.dart';

main() {
  print('''
  时来天地皆同力，
  运去英雄不自由。''');
  print('朱雀桥边野草花'
      '乌衣巷口夕阳斜');

  print(r'A raw string\n');
  print('岐王宅里寻常见，崔九堂前几度闻。正是江南好风景，花落时节又逢君。');

  print(#Pair);

  var list = List<int>()..add(1)..add(2)..add(3);
  print(list);

  var map = {1: "1", 2: "2", 3: "3"};
  map
    ..[4] = "4"
    ..[5] = "5"
    ..[6] = "6";
  print(map);

  fun1(x) => x;
  print(fun1.runtimeType); //(dynamic) => dynamic
  fun2(num a, num b) => a * b;
  print(fun2.runtimeType); //(num, num) => num
  fun3(String k, [String m()]) {
    if (m != null) {
      return m();
    }
    return k;
  }

  print(fun3.runtimeType); //(String, [() => String]) => String

  var aClass = AClass<String>();
  aClass.aMethod(fun2);
  print('${aClass.get}');
}

var global = 0;
var shadowed = 1;

aFunction(x) => x * x + global + shadowed;

class AnotherClass {}

typedef int F(int x, [int y]);

class AClass<T> {
  static var aClassVariable = 2;
  var aInstanceVariable = 3;
  static var shadowed = 4;

  get get => "get";

  static aClassMethod() {
    print(shadowed);
    print(aClassVariable);
  }

  aMethod(aParameter) {
    var aLocal = 5;
    var anUnassignedLocal;
    var shadowed = 6;
    localFunction(x) => 7;
    {
      var moreLocal = 8;
      var shadowed = 9;
      moreLocalFunction(y) => moreLocal;
      print(global);
      print(shadowed);
      print(aFunction);
      print(AnotherClass);
      print(F);
      print(AClass);
      print(T);
      print(aClassVariable);
      print(
          testF); //Closure: (int, int, (int, [int]) => int) => dynamic from Function 'testF': static.
      print(testF(35, null, ((a, [b]) {
        if (b != null) {
          return max(a, b);
        } else {
          return a;
        }
      })));

      var symbol = #aFunction;
      print(symbol.runtimeType);//Symbol
      print(#F);//Symbol("F")
      print(aInstanceVariable);//3
      print(aMethod);//Closure: (dynamic) => dynamic from Function 'aMethod':.
      print(aParameter);//Closure: (num, num) => num
      print(localFunction);//Closure: (dynamic) => int

      print(aLocal);//5
      print(anUnassignedLocal);//null
      print(moreLocal);//8
      print(moreLocalFunction);//Closure: (dynamic) => int
    }
  }
}

testF(int a, int b, F function) {
  print('testF a=[$a], b= [$b], function=[$function]');
//  var file = Directory("..");
//
//  print(file.list(recursive: true)
//    ..forEach((element) {
//      print('element = $element');
//    }));
  return function(a, b);
}
