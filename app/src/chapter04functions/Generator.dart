import 'dart:core';

class NaturalsIterable implements Iterable<int> {
  var n;
  NaturalsIterable.to(this.n);
  get iterator => NaturalsIterator.to(n);

  @override
  bool any(bool Function(int element) test) {
    // TODO: implement any
    return null;
  }

  @override
  Iterable<R> cast<R>() {
    // TODO: implement cast
    return null;
  }

  @override
  bool contains(Object element) {
    // TODO: implement contains
    return null;
  }

  @override
  int elementAt(int index) {
    // TODO: implement elementAt
    return null;
  }

  @override
  bool every(bool Function(int element) test) {
    // TODO: implement every
    return null;
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(int element) f) {
    // TODO: implement expand
    return null;
  }

  @override
  // TODO: implement first
  int get first => null;

  @override
  int firstWhere(bool Function(int element) test, {int Function() orElse}) {
    // TODO: implement firstWhere
    return null;
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, int element) combine) {
    // TODO: implement fold
    return null;
  }

  @override
  Iterable<int> followedBy(Iterable<int> other) {
    // TODO: implement followedBy
    return null;
  }

  @override
  void forEach(void Function(int element) f) {
    // TODO: implement forEach
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => null;

  @override
  // TODO: implement isNotEmpty
  bool get isNotEmpty => null;

  @override
  String join([String separator = ""]) {
    // TODO: implement join
    return null;
  }

  @override
  // TODO: implement last
  int get last => null;

  @override
  int lastWhere(bool Function(int element) test, {int Function() orElse}) {
    // TODO: implement lastWhere
    return null;
  }

  @override
  // TODO: implement length
  int get length => null;

  @override
  Iterable<T> map<T>(T Function(int e) f) {
    // TODO: implement map
    return null;
  }

  @override
  int reduce(int Function(int value, int element) combine) {
    // TODO: implement reduce
    return null;
  }

  @override
  // TODO: implement single
  int get single => null;

  @override
  int singleWhere(bool Function(int element) test, {int Function() orElse}) {
    // TODO: implement singleWhere
    return null;
  }

  @override
  Iterable<int> skip(int count) {
    // TODO: implement skip
    return null;
  }

  @override
  Iterable<int> skipWhile(bool Function(int value) test) {
    // TODO: implement skipWhile
    return null;
  }

  @override
  Iterable<int> take(int count) {
    // TODO: implement take
    return null;
  }

  @override
  Iterable<int> takeWhile(bool Function(int value) test) {
    // TODO: implement takeWhile
    return null;
  }

  @override
  List<int> toList({bool growable = true}) {
    // TODO: implement toList
    return null;
  }

  @override
  Set<int> toSet() {
    // TODO: implement toSet
    return null;
  }

  @override
  Iterable<int> where(bool Function(int element) test) {
    // TODO: implement where
    return null;
  }

  @override
  Iterable<T> whereType<T>() {
    // TODO: implement whereType
    return null;
  }
}

class NaturalsIterator extends Iterator<int> {
  var n,current = -1;
  NaturalsIterator.to(this.n);
  moveNext(){
    if(current < n){
      current++;
      return true;
    } else {
      return false;
    }
  }
}

naturalsTo(n) => NaturalsIterable.to(n);

main(){
  for (var value in naturalsTo(20)) {
    print('value = $value');
  }
}