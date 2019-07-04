class NotLegalDart {
  overloaded(List list) => list.length;
//  overloaded(int n) => n * 2;//The name 'overloaded' is already defined
}

sum(a, b) => a + b;
var i;
var j = 1;

abstract class Pair {
  get first;

  get second;
}

class ArrayPair implements Pair {
  final _rep;

  ArrayPair(this._rep);

  ArrayPair.create():this([1,3]);

  ArrayPair.as(a, b) : this([a, b]);

  @override
  get first => _rep[0];

  @override
  get second => _rep[1];

  @override
  String toString() {
    return 'ArrayPair{_rep: $_rep}';
  }
}

Pair reverse(Pair pair) => ArrayPair.as(pair.second, pair.first);

class Monster {}

class Vampire extends Monster {
  get bloodType => 'O';
}

main() {
  print(sum('ab', 'surd')); //absurd
  print(i.runtimeType);
//  print(sum(i, j)); //NoSuchMethodError: The method '+' was called on null.

  var arrayPair = ArrayPair.as(4, 6);
  print(arrayPair._rep);
  print(reverse(arrayPair));

  Map<String, Monster> monsters = {
    'Frankenstein': Monster(),
    'Godzilla': Monster(),
    'Dracula': Vampire()
  };

//  Vampire monster = monsters['Dracula'];//monster.runtimeType = Vampire
  Monster monster = monsters['Dracula']; //monster.runtimeType = Vampire
  print(monster.runtimeType);
//  print(monster.bloodType);//'bloodType' undefined
}
