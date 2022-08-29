library counter;

import '/app/all.dart';

part 'app/counter.dart';

 void main()async{
   Object age=90;
   age=true;
   print(age);
  var shop=Shop();
  shop.shopList();
  var user=User();
  print(user.name);
  var counter=Counter();
  counter.count=60;
  print(counter._id);
  num ad=40.0002;
  print(ad);



  print(await createOrderMessage());
  print('this is main method');

  naturalsTo(10);
  IntList ies=[1,2];
  print(ies);
  StringList sList=["Mostafizur Rahman","Farjana","Laboni",];
  print(sList);

 }
typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;
 typedef StringList=List<String>;
typedef IntList = List<int>;


Iterable<int> naturalsTo(int n) sync* {
  int k = 0;

  while (k < n) yield k++;
  print(k);
}


Future<String> createOrderMessage()async{
   var order=await fetchUserOrder();
   return "your order is ${order}";
 }

 Future<String> fetchUserOrder()async{
   return await Future.delayed(Duration(seconds: 5),()=>'Large lat');
 }

