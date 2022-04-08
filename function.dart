void main() {

  //dynamic parameter and dynamic return type
  print(
      "\n both return and parameter dynamic function: ${  dynamicFunction(5)}");


  //calling positional parameter
  print(" This is positional parameter function call: ${sum(10, 5)}");

  //calling Name parameter
  print(
      "\n Name parameterised function call: ${nameParameter(num2: 10, num1: 50)}");

  //calling Name and positional parameter
  print("\n Name and Positional parameterised"
      " function call: ${nameAndPositionalParameter(10, num2: 100)}");

  //calling with default values
  print(
      "\n default value function call: ${defaultValue(120)}");

  //calling default values with null safety
  print(
      "\n default value with null safety : ${defaultWithNullValue(122)}");

  //calling default values with null safety
  print(
      "\n Positional default or optional value with null safety : ${positionalValueWithNullSafety(128)}");

  //calling default values with null safety
  print(
      "\n without return key word : ${isALive3(true)}");

  //calling function with required field
  enableFlags(100, hidden: false);


  //type def
  // type def
  operation o = additions;
  o(10,54);
  o = multiplications;
  o(10,54);
  o = subtractions;
  o(10,54);

  //Ternary function
  print(
      "\n without return key word : ${ternaryFunction( num: 10)}");

  //default parameter function
  doStuff();

}

//dynamic parameter and dynamic return type
dynamicFunction(num)=> num*num;


//positional parameter
dynamic sum(var num1, var num2) {
  return num1 + num2;
}

// name arguments

dynamic nameParameter({var num1, var num2}) {
  return num1 + num2;
}

//positional and name Parameter
//in single line function don't need to write return keyword

dynamic nameAndPositionalParameter(var num1, {var num2}) => num1 + num2;


//with default value
dynamic defaultValue(var num1, {var num2 = 0}) => num1 + num2;


//with default value with null safety
dynamic defaultWithNullValue(var num1, {var num2}) => num1 + (num2 ??= 10) ;


//with default value with null safety
//dynamic positionalValueWithNullSafety(var num1, [var num2]) => num1 + (num2 ?? 0) ;

//with default value with null safety
dynamic positionalValueWithNullSafety(var num1, [var num2 = 21]) => num1 + num2  ;

//without return key word
bool isALive3(bool alive)=> alive;

//function with mandatory value
void enableFlags( int m, {bool? bold = false,required bool? hidden}){
  print("\nFunction with required field: $m, $bold and $hidden");

}


//typedef function

//Syntax: typedef function_name (parameters);
//After assigning the variable, if we have to invoke it then we go as: Syntax: variable_name(parameters);
typedef operation(int a, int b); //operation types variable. typedef means type

additions(int a, int b){
  print(a + b) ;
}

subtractions(int a, int b){
  print(a-b);
}

multiplications(int a, int b){
  print(a*b);
}

Calculation(int a, int b, operation op ){
  op(a,b);
}


//or
String isEvenNums(int num) {
  String s = '';
  s = num % 2 == 0 ? "Number is Even" : "Number is odd";
  num % 2 == 0 ? "..." : "...";
  return s;
}


// Function ternary operator

String? ternaryFunction({required int? num}) => num! % 2 == 0 ? 'Even': 'odd';


//default parameter value set function

void doStuff(
    {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
  print('list:  $list');
  print('gifts: $gifts');
}