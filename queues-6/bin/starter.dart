

import 'package:queues_6/binary_node.dart';
import 'package:queues_6/tree.dart';

void main() {
  final beverages = TreeNode('Beverages');
  final hot = TreeNode('Hot');
  final cold = TreeNode('Cold');
  beverages.add(hot);
  beverages.add(cold);
  beverages.forEachDepthFirst((node) => print(node.value));
}


BinaryNode<int> createBinaryTree() {
  final zero = BinaryNode(0);
  final one = BinaryNode(1);
  final five = BinaryNode(5);
  final seven = BinaryNode(7);
  final eight = BinaryNode(8);
  final nine = BinaryNode(9);
  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;
  return seven;
}