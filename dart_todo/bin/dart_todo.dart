import 'package:dart_todo/dart_todo.dart' as dart_todo;

void main(List<String> arguments) {
  print('Hello world: ${dart_todo.calculate()}!');

  final name="Mostafiz";
  const lName="Rahman";
  print(name);
  print(lName);
  const Object i=10;
  const list=[i as int];
  const map={
    if(i is int) i:"int",
  };
  print(map);
  const set={

    if(list is List<int>)...list,
  };
  print(set);

  const ids=[1,2,3,3,1,1,1,2,3,4];
  var setUid={
    if(ids is List<int>)...ids.toSet(),
  };
  print(setUid);
  var items = [2, 3, 4,4,3,2];
  var setto = { ...items };
  print(setto);

  var s1=Student();
   print(s1.id??"");

   var loggerObj=Logger('UI');
   print(loggerObj.hashCode);
  var loggerObj1=Logger('UI222');
  print(loggerObj1.hashCode);
   loggerObj.log("Button click");
   var logMap={"name":"Mostafizur"};
   var logJson=Logger.fromJso(logMap);
  var logMap2={"name":"Rahman"};
  var logJson2=Logger.fromJso(logMap2);
  print(logJson.hashCode);
  print(logJson2.hashCode);
   print(logJson.name);
  print(logJson2.name);

  var animal=Animal();
  animal.doSomething();
  print(greetBob(Person("Abdulll alal")));
  // print(greetBob(Imposter()));

  Person ab=Imposter();
  print(ab._name);

  var apple=Apple();
  apple.start=true;
  apple.canRun();

}
class Student{
  int? id;
   String? name;


}
class Logger{
  final String name;
  bool mute=false;
  static final Map<String, Logger> _cache=<String,Logger>{};
  factory Logger(String name){
    return _cache.putIfAbsent(name, () =>Logger._internalName(name));
  }
  factory Logger.fromJso(Map<String, Object> json){
    return Logger(json["name"].toString());
  }

  Logger._internalName(this.name);
  void log(String smg){
    if(!mute)print(smg);
  }
}

abstract class Dog{
  void doSomething();
}
class Animal extends Dog{
  @override
  void doSomething() {
   print('call do something');
  }

}

class Person{
  final String? _name;
  Person(this._name);
  String greet(String who)=>"Hello $who i am $_name is";
}

class Imposter implements Person ,Animal{
  @override
  String? get _name => '';

  @override
  String greet(String who) {

    return 'who i am $who ,do you know who i am?';
  }

  @override
  void doSomething() {

  }

}

String greetBob(Person person)=>person.greet("Mostafiz");

 class Televition{
   String? name;
    startTelevition(name){
         print(name);
    }
}
class SmartTel extends Televition{
   start(){
     super.name;
     super.startTelevition("abc");
   }
}

class Food<T>{
   testFood(){
     print('food is godd');
   }
}
class Product{
   getProduct(){
     print('product list');
   }
}
class Apple extends Food<Product> with Soung{
   var food=Food<Product>();

  Apple(){
    super.testFood();
    super.start=false;
    super.canRun();

  }
}

mixin Soung{
   bool start=true;
   bool stop=false;
   void canRun(){
     if(start){
       print('soung is plasy start');
     }else{
       print( 'Soun g is not play');
     }
   }
}