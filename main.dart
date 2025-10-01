import 'queue_with_list.dart';
import 'queue_with_linked_list.dart';

void main() {
  testListQueue();
  testLinkedListQueue();
  speedTest();
}

void testListQueue() {
  QueueWithList queue = QueueWithList();
  queue.enqueue(5);
  queue.enqueue(10);
  queue.enqueue(15);
  queue.printQueue();
  print(queue.peek());
  print(queue.dequeue());
  queue.printQueue();
}

void testLinkedListQueue() {
  QueueWithLinkedList queue = QueueWithLinkedList();
  queue.enqueue(25);
  queue.enqueue(50);
  queue.enqueue(75);
  queue.printQueue();
  print(queue.peek());
  print(queue.dequeue());
  queue.printQueue();
}

void speedTest() {
  Stopwatch stopwatch1 = Stopwatch();
  QueueWithList queue1 = QueueWithList();
  stopwatch1.start();
  for (int i = 0; i < 5000; i++) queue1.enqueue(i);
  for (int i = 0; i < 5000; i++) queue1.dequeue();
  stopwatch1.stop();

  Stopwatch stopwatch2 = Stopwatch();
  QueueWithLinkedList queue2 = QueueWithLinkedList();
  stopwatch2.start();
  for (int i = 0; i < 5000; i++) queue2.enqueue(i);
  for (int i = 0; i < 5000; i++) queue2.dequeue();
  stopwatch2.stop();

  print(stopwatch1.elapsedMilliseconds);
  print(stopwatch2.elapsedMilliseconds);
}
