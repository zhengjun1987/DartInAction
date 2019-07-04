addressLetter({String name, String street, double number, city, zip, country}) {
  var address = Address();
  address.street = street;
  address.number = number;
  address.city = city;
  address.zip = zip;
  address.country = country;
  return address;
}

class Address {

  Address.of(this.name);
  var name,street, number, city, zip, country;

  @override
  String toString() {
    return 'Address{street: $street, number: ${number}, city: $city, zip: $zip, country: $country}';
  }

  Address();
}

var map = Map();

fail(a) => throw ("Key $a not found");

lookup(key, {ifMissing}) {
  var result = map[key];
  if (result != null) {
    return result;
  }
  if (ifMissing != null) {
    ifMissing(key);
  }
}

main() {
  addressLetter(
      name: "a",
      street: "b",
      number: 10.93,
      city: "London",
      zip: 1001,
      country: "United Kingdom");
  var primeMinister = addressLetter(street: "Downing", number: 10);
  print(primeMinister);
  addressLetter(street: "Wall", city: "New York", country: "USA");
  addressLetter();
  addressLetter(name: "ZH", street: "TS", number: 12.93);

  var lookup2 = lookup("key");
  print('lookup2 = $lookup2');
//  var value = lookup("yuxiang",ifMissing: fail);//Unhandled exception:Key yuxiang not found

  print(sideEffect());

  for (int i = 0; i < 10; i++) {
    var fib2 = fib(i);
    print("$fib2 ");
  }

  var nums = [1, 2, 4, 5, 6, 7, 8, 9];
  print("sum(nums) = ${sum(nums)}");
}

sum(List<int> nums) {
  /**
   * 两种写法,FOLD方法和REDUCE方法均可实现
   * */
//  sumIterable(init,next) => init + next;
//  return nums.fold(0, sumIterable);

  //此处叫闭包，其实就是Kotlin里面的Lambda表达式，在此处Dart终于放弃了对行末分号的执着
  return nums.fold(0, ((a, b) => a + b));

//  return nums.reduce((a,b) => a + b);
}

fib(int i) {
  lastTwo(n) {
    if (n < 1) {
      return [0, 1];
    } else {
      var p = lastTwo(n - 1);
      return [p[1], p[0] + p[1]];
    }
  }

  return lastTwo(i)[1];
}

sideEffect() {
  print("I'dont have a return and I don't throw an exception.");
  print("What is my value?");
}
