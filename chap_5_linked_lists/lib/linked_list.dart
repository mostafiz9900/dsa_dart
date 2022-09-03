

class Node<T>{
  T value;
  Node<T>? next;

  Node({required this.value, this.next});
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> extends Iterable<E>{
  Node<E>? head;
  Node<E>? tail;
  bool get isEmpty => head == null;
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
// 1
    if (isEmpty) {
      push(value);
      return;
    }
// 2
    tail!.next = Node(value: value);
    tail = tail!.next;
  }
// 3


  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  @override
  // TODO: implement iterator
  Iterator<E> get iterator => throw UnimplementedError();
}
