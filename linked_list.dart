class Node {
  int value;
  Node? next;
  Node(this.value);
}

class LinkedList {
  Node? head;
  Node? tail;
  
  void add(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }
  
  int? removeFirst() {
    if (head == null) return null;
    int value = head!.value;
    head = head!.next;
    if (head == null) tail = null;
    return value;
  }
  
  int? get first => head?.value;
  bool get isEmpty => head == null;
  
  void printList() {
    Node? current = head;
    List<int> items = [];
    while (current != null) {
      items.add(current.value);
      current = current.next;
    }
    print(items);
  }
}
