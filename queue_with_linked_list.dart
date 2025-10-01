import 'linked_list.dart';

class QueueWithLinkedList {
  LinkedList _list = LinkedList();
  
  void enqueue(int value) => _list.add(value);
  int? dequeue() => _list.removeFirst();
  int? peek() => _list.first;
  bool get isEmpty => _list.isEmpty;
  void printQueue() => _list.printList();
}
