import 'dart:io';

void main(){

  // ****************** user single input and output ***************

  String raw = 'It\'s nothing but him. \n';
  print(raw);

  //print raw string
  var raw2 = r'It nothing but him. /n';
  print(raw2);

  print("Please enter a correct value  \n");
  //dynamic name = stdin.readLineSync();
  //print('Entered value is ${name}');


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
  int num = 10;
  double num2 = 10.20;
  String name3 = 'Hello man';
  var name4 = 'Var type can take input any type such as String, int or double.\n Once assign any type '
      'we can not change it anymore';
  dynamic name5 = 'It is same as var; however, we have the access the type in run type or any other type.';

  print("Number in INT is : $num");
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
  String? a1 = stdin.readLineSync();
  print("name is : $a1");

  print("\n Enter your age : ");
  var ages = stdin.readLineSync();
  print("age is : $ages");

  print("\n Enter your salary : ");
  double salary = double.parse(stdin.readLineSync()!);
  print("salary is : $salary");

  int? phoneNum ;

  assert(phoneNum != null);
  print(phoneNum );

}
