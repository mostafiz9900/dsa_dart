import 'package:basic_data_structure_03/basic_data_structure_03.dart' as basic_data_structure_03;

void main(List<String> arguments) {
  print('Hello world: ${basic_data_structure_03.calculate()}!');
  var list=['Mostafizur', 'Farjana'];
  const numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450];
  // basic_data_structure_03.checkFirst(list);
  // basic_data_structure_03.printMoreNames(list);

  // basic_data_structure_03.printNames(list);
 var isDone= basic_data_structure_03.naiveContains(66,numbers);
 print(isDone);
}
