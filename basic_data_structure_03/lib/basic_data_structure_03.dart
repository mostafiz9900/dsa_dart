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

bool betterNaiveContains(int value, List<int> list){
  if(list.isEmpty) return false;
  final middleIndex = list.length ~/ 2;
  print(middleIndex);
  if(value > list[middleIndex]){
    for(var i=middleIndex;i<list.length;i++){
       if(list[i]==value)return true;
    }
  }else{
    for(var i=middleIndex;i>=0;i--){
      if(list[i]==value) return true;
    }
  }
  return false;
}
//finds the sum of numbers from 1 to n.
int sumFromOneTo(int n){
  int sum=0;
   for(var i=1;i<=n;i++){
     sum+=i;
   }

  return sum;
}
//Try increasing the input value to see how that affects the computation time
int betterSumFromOneTo(int n){
  return n * (n+1)~/2;
}

int multiply(int a, int b)=> a * b;
 List<String> fillList(int length)=> List.filled(length,'a');

List<String> stuffList(int length) {
  return List.filled(length, 'a' * length);
}