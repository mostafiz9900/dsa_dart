import 'package:chap_5_linked_lists/chap_5_linked_lists.dart' as chap_5_linked_lists;
import 'package:chap_5_linked_lists/linked_list.dart';

void main(List<String> arguments) {
  print('Hello world: ${chap_5_linked_lists.calculate()}!');
  // final node1 = Node(value: 1);
  // final node2 = Node(value: 2);
  // final node3 = Node(value: 3);
  // node1.next = node2;
  // node2.next = node3;
  // print(node1);
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);
}
