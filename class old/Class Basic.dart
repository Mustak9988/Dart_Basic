class Animal{
  var name; //by default the initialize value is null
  late int id; //by default the initialize value is null
  dynamic type; //by default the initialize value is null

 // Animal(){} //this is default constructor
  //only one constructor allow at a time accept name constructor. A class does have more than one name constructor

  // Animal(var name, int id, String type){
  //   this.name = name;
  //   this.id = id;        //constructor like java; dart allow this
  //   this.type = type;
  // }

  Animal(this.name, this.id, this.type); // dont want to write more code thus we use this type of constructor


  //name constructor

  Animal.Bangladeshi(this.type, this.name,  this.id);

  Animal.Pakistani(var name, double type, int id ){
    this.name = name;
    this.type = type;
    this.id = id;
  }


  void printFromAnimal(){
    print('Animal Name is : ${name}\n Id is: ${id} \n Type is: ${type}');
  }

 // id = 120; //in dart or java we can not initialize  instance variable outside of method in class. we can only set value through constructor or during initializing time

}


//factory constructor

/*Use the factory keyword when implementing a constructor that does not always create a new instance of its class.
For example, a factory constructor might return an instance from a cache, or it might return an instance of a subtype.
Another use case for factory constructors is initializing a final variable using logic that can’t be handled in the initializer list.
factory constructor has no access of this keyword*/



class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache =
  <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(
        name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}






void main(){

  //Animal cats = Animal();  //default constructor
  // cats.name = 'Peaky Blinders';
  // cats.id = 25;
  // cats.type = 'mammal';

  var dog = new Animal('Doggy', 23, " Mammal "); //we can define an object using var
  dog.printFromAnimal();

  Animal cat = new Animal('CAT', 12, " Mammal Too"); // or we also declare constructor like java. both type are allowed;
  cat.printFromAnimal();

  //set value to name constructor
 var pak = Animal.Pakistani('Timber', 44.25, 2457);
 pak.printFromAnimal();
 print('\n');
 Animal bd =  Animal.Bangladeshi('Jamaica', 'Dhaka', 254);
 bd.printFromAnimal();

 //factory constructor
  var logger = Logger('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'UI'};
  var loggerJson = Logger.fromJson(logMap);



}