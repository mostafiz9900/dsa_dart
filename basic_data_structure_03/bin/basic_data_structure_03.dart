

import 'dart:collection';

import 'package:basic_data_structure_03/basic_data_structure_03.dart' as mainFun;

void main(List<String> arguments) {
  print('Hello world: ${mainFun.calculate()}!');
  var list=['Mostafizur', 'Farjana'];
  const numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450];
  // basic_data_structure_03.checkFirst(list);
  // basic_data_structure_03.printMoreNames(list);

  // basic_data_structure_03.printNames(list);
 // var isDone= basic_data_structure_03.naiveContains(66,numbers);
  var maxList=[1,2,3,4,5,6,7,8,9,10];
  // var isMax=basic_data_structure_03.betterNaiveContains(5, maxList);
  // final start = DateTime.now();
  // final sum = basic_data_structure_03.sumFromOneTo(10);
  // final end = DateTime.now();
  // final time = end.difference(start);
  //
  // print(basic_data_structure_03.betterSumFromOneTo(10));
  // print(sum);
  // print(time);
  // var sumTotal=basic_data_structure_03.sumFromOneTo(10);
 // print(sumTotal);

print(mainFun.fillList(5));
final peoples=["Mostafizur", "Farzana","Laboni","farzana"];
print(peoples.reversed);
print('======');
peoples.add("Laboni");
peoples.insert(0, "Mir Minhan ");
final map={"Java":1,"Go":2,"Dart":3};
print(map);
final hasMap=HashMap.of(map);
  var bag = {'Candy', 'Juice', 'Gummy'};
  bag.add('Candy');
  print(bag);

print(hasMap);
print(peoples);
final stack=Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('Popped: $element');
  const list2 = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = Stack.of(list2);

  smokeStack.pop();
  print(smokeStack);

}

class Stack<E> {
  Stack():_storage=<E>[];
  final List<E> _storage;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
  void push(E element)=>_storage.add(element);
  E pop()=>_storage.removeLast();
  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
  Stack.of(Iterable<E> elements):_storage=List<E>.of(elements);
}