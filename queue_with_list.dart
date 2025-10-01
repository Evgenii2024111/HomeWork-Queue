class QueueWithList {
  List<int> _items = [];
  
  void enqueue(int value) => _items.add(value);
  int? dequeue() => _items.isEmpty ? null : _items.removeAt(0);
  int? peek() => _items.isEmpty ? null : _items.first;
  bool get isEmpty => _items.isEmpty;
  int get length => _items.length;
  void printQueue() => print(_items);
}
