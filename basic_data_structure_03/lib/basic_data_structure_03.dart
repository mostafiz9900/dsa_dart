int calculate() {
  return 6 * 7;
}

void checkFirst(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print('no names');
  }
}
void printNames(List<String> names) {
  for (final name in names) {
    print(name);
  }
}


void printMoreNames(List<String> names) {
  for (final _ in names) {
    for (final name in names) {
      print(name);

    }
    print('==');
  }
}


bool naiveContains(int value, List<int> list) {
  for (final element in list) {
    if (element == value) {return true;}

    print('object');

  }
  return false;
}