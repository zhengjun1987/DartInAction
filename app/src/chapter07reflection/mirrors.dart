import 'dart:mirrors';

class SuperClass {
  int superField = 0;
  final int superFinalField = 1;

  get superGetter => 2;

  set superSetter(x) {}

  int superMethod(x) => 4;
  static int superStaticField = 5;
  static final int superStaticFinalField = 6;
  static const int superStaticConstField = 7;

  static int get superStaticGetter => 8;

  static set superStaticSetter(x) {}

  static int superStaticMethod(x) => 10;
}

class SelfPrinting extends SuperClass {
  int aField = 11;
  final int aFinalField = 12;

  get aGetter => 13;

  set aSetter(x) {}

  int aMethod(x) => 15;
  static int aStaticField = 16;
  static final int aStaticFinalField = 17;
  static const int aStaticConstField = 18;

  static int get staticGetter => 19;

  static set staticSetter(x) {}

  static int staticMethod(x) => 20;
}

main(){
  ClassMirror cm = reflectClass(SelfPrinting);
  print('${cm.runtimeType}');//_LocalClassMirror
  for (var value in cm.instanceMembers.keys) {
    print('$value => ${cm.instanceMembers[value]}');
  }
//  Symbol("==") => MethodMirror on '=='
//  Symbol("hashCode") => MethodMirror on 'hashCode'
//  Symbol("toString") => MethodMirror on 'toString'
//  Symbol("noSuchMethod") => MethodMirror on 'noSuchMethod'
//  Symbol("runtimeType") => MethodMirror on 'runtimeType'
//  Symbol("superField") => Instance of '_SyntheticAccessor'
//  Symbol("superField=") => Instance of '_SyntheticAccessor'
//  Symbol("superFinalField") => Instance of '_SyntheticAccessor'
//  Symbol("superGetter") => MethodMirror on 'superGetter'
//  Symbol("superSetter=") => MethodMirror on 'superSetter='
//  Symbol("superMethod") => MethodMirror on 'superMethod'
//  Symbol("aField") => Instance of '_SyntheticAccessor'
//  Symbol("aField=") => Instance of '_SyntheticAccessor'
//  Symbol("aFinalField") => Instance of '_SyntheticAccessor'
//  Symbol("aGetter") => MethodMirror on 'aGetter'
//  Symbol("aSetter=") => MethodMirror on 'aSetter='
//  Symbol("aMethod") => MethodMirror on 'aMethod'

  for (var value1 in cm.staticMembers.keys) {
    print('$value1 => ${cm.staticMembers[value1]}');
  }
//  Symbol("aStaticField") => Instance of '_SyntheticAccessor'z
//  Symbol("aStaticField=") => Instance of '_SyntheticAccessor'
//  Symbol("aStaticFinalField") => Instance of '_SyntheticAccessor'
//  Symbol("aStaticConstField") => Instance of '_SyntheticAccessor'
//  Symbol("staticGetter") => MethodMirror on 'staticGetter'
//  Symbol("staticSetter=") => MethodMirror on 'staticSetter='
//  Symbol("staticMethod") => MethodMirror on 'staticMethod'
  print('===================================');
  for (Symbol value in cm.instanceMembers.keys) {
    print('${MirrorSystem.getName(value)}');
  }
}