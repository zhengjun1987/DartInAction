final _contents = [];

get isEmpty => _contents.isEmpty;

get top => isEmpty ? "empty stack" : _contents.last;

get pop => isEmpty ? "empty stack" : _contents.removeLast();

push(e) {
  _contents.add(e);
  return e;
}