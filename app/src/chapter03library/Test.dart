import 'dart:async';

import 'ide.dart' deferred as stack1;
import 'stack2.dart' show push, pop, top;

main() {
  stack1.loadLibrary().then(onLoad);
  push('gently2');
  push('harder2');
  print(pop);
  print(top);
  print(Symbol("name"));
}

onLoad(loadSucceeded) {
  print('loadSucceeded = $loadSucceeded');
  return loadSucceeded == null? doStuff() : throw new Exception("END!");
}


doStuff() {
  stack1.push('gently');
  stack1.push('harder');
  print(stack1.pop);
  print(stack1.top);

  var uri = Uri.file("/home/zhengjun/IdeaProjects/DartInAction/app/src/chapter02object_interface_class_mixin/Constructor.dart");
  print('uri.file = ${uri.pathSegments}');
}
