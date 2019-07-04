num product(List<num> nums) =>
    nums.reduce((num value, num element) => value * element);

num find(List<num> nums) => nums.firstWhere((a) => a > 0, orElse: () => 0);

var arr = [];

E fastWhere<E extends num>(bool test(E value), {E orElse()}) {
  for (var value in arr) {
    if (test(value)) {
      return value;
    }
  }
  return orElse();
}

main() {
  arr.add(1);
  arr.add(5);
  arr.add(9);
  print(fastWhere((a) => a > 5, orElse: () => 0));

  print(arr is Map);
  print(arr is List);
  print(arr is List<num>);
  print(arr is List<int>);
  print(arr is Object);
  print(Null is Object);
  print(arr == null);
  print(arr != null);
  print(null is Null);

  Object o = arr;
  var o2 = o as List;
//  print(o.length);//Error: The getter 'length' isn't defined for the class 'Object'.
  print(o2.length);
//  var o3 = o as Map;
//  print(o3.length);//Unhandled exception:type 'List<dynamic>' is not a subtype of type 'Map<dynamic, dynamic>' in type cast

//  num n = 3.0;
//  int i = n;//type 'double' is not a subtype of type 'int'
//  print('i = $i');
//  num x = i;
//  print('x = $x');

  arr = List<int>();
  print(arr is List);
  print(arr is List<num>);
  print(arr is List<int>);
  print(arr is List<double>);
}
