zero() => 0;

get zero2 => 0;

id(x) => x;

identity(x) => x;

add(a, b) => a + b;

//可选参数
increment(x, [step = 1]) => x + step;

main(){
  print(zero());
  print(zero);//Closure: () => dynamic from Function 'zero': static.
  print(zero2);
//  print(zero2());
  print(id('JKDUY79'));
  print(identity('x'));
  print(add(2, 7));
  print(increment(5));
  print(increment(5,2));
  print(increment);//Closure: (dynamic, [dynamic]) => dynamic from Function 'increment': static.
}
