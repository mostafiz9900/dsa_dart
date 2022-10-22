


 void main2()async{
 Iterable<int> numerb=  naturalTo(100);
   print('call main fun');
   for(var n in numerb){
     print (n);
   }
   print('main fun end');
 }

Iterable<int> naturalTo(int number)sync*{
  print('start ');
  int k=0;
  for (var i=0;i<number;i++){

      yield k++;
  }

  print('end');
 }
 void main() {
   print('create iterator');
   Stream<int> numbers = getNumbers(350);
   print('starting to listen...');
   numbers.listen((value) {
     print('$value');
   });
   print('end of main');
 }
 Stream<int> getNumbers(int number) async* {
   print('waiting inside generator a bit :)');
   await  Future.delayed( Duration(seconds: 5)); //sleep 5s
   print('started generating values...');
   for (int i = 0; i < number; i++) {
     await  Future.delayed( Duration(seconds: 1)); //sleep 1s
     yield i;
   }
   print('ended generating values...');
 }