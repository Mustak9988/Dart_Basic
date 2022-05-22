import 'dart:io';

void main(){

  // ****************** user single input and output ***************

  String raw = 'It\'s nothing but him. \n';
  print(raw);

  //print raw string
  var raw2 = r'It nothing but him. /n';
  print(raw2);

  print("Please enter a correct value  \n");
  late dynamic name = stdin.readLineSync();
  print('Entered value is $name');


  //user multiple input and output

  print("\n Please enter Two values as you want?");
 // var name1 = stdin.readLineSync();
  //var name2 = stdin.readLineSync();
 // print('First value is $name1 and Second one is $name2');


  // ****************** All variable types  ***************



  //variable Types in dart
  /* Dart support both static and dynamic variable
  * Here It will be detailed*/


  Object nameThree = 'Dhaka';
  bool isTrue = false;

  //integer can contain hax value as well
  //integer is 64 bits and 8 bytes
  //int num = 10;
  int x = 1;
  int hex = 0xDEADBEEF;
  //double is 64 bits and 8 bytes
  double num2 = 10.20;

  //num is another type of variable which can easily identify whether it is int or double
  //dart does not support float variable

  num number1 = 103;
  //num number1 = 103.25;

  print('Num variable data ----> ${number1} ');
  print(number1.runtimeType);

  String name3 = 'Hello man';
  var name4 = 'Var type can take input any type such as String, int or double.\n Once assign any type '
      'we can not change it anymore';
  dynamic name5 = 'It is same as var; however, we have the access the type in run type or any other type.';

  print("Number in INT is of hex value : $hex");
  print("Value in Double is $num2");
  print("Value in String is $name3");
  print("\n$name4");
  print("\n $name5");


  // ****************** String Interpolation ***************

  var age = 78;
  String personAge = 'Your age is $age';
  print("\n $personAge");
  print(age.runtimeType);

  //adding two string
  String details = ' .Age should be lower.';
  var stringConcatenation =  personAge + details;
  print('\n $stringConcatenation');

  // assert means force to follow the command
  assert(age == 78);
  print('There will be error if age is not 78. If you want to try please make some change.');


//multiline string
  var s1 = '''
You can create
multi-line strings like this one.
''';

  var s2 = """This is also a
multi-line string.""";



  // ****************** Type Casting ***************

  //String to int

  int firstNum = int.parse('458');
  print('\n String to int ... $firstNum');

  //String to double

  double secondNum = double.parse('4512.35');
  print('\n Sting to double ... $secondNum');

  //Double to String

  String string1 = 3.151478.toStringAsFixed(2);
  print('\n Double to String ... $string1');


  // ****************** Null Safety ***************

//dart user input
//Here ? means value could be null
//  ! means value are not null
  print("\n Enter your name : ");
 // String? a1 = stdin.readLineSync();
 // print("name is : $a1");

  print("\n Enter your age : ");
  //var ages = stdin.readLineSync();
 // print("age is : $ages");

  print("\n Enter your salary : ");
 //double salary = double.parse(stdin.readLineSync()!);
 // print("salary is : $salary");

  int? phoneNum =0 ;

  assert(phoneNum != null);
  print(phoneNum );

  late var names;

  names = 10 > 0? 'khadem':'MOstak';
  if (true)
    print(names);

  print('Entered value is ${names}');


  //final and const keyword use if we want to fixed the value and will not change in future
  //Both are same however, constant takes memory during compile time
  //in class you can not declare constant without static variable, Meanwhile, final can be declare

  //without type annotation
  final personName = 'Mostak';

  print('I am  Local variable without type '+personName);
  print(personName.runtimeType);

  //you can not change the variable value when it is declared as a final

 // personName = 'tahin';

  //constant variable can be change in compile time

  const String personalData = 'hello';
 // personalData = "Data";




}
