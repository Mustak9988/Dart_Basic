void main(){

  //not possible to get specific index value except looping and checking
  //set does not allow duplicate value

  var firstSet = <String>{ 'A','Dhaka', 'A'};
  for (var value in firstSet) {
    print(value);
  }

  //or
  print("\nset adding");
  var elements = <String>{};
  elements.add('fluorine');
  elements.add('fluorine'); //that will be escape
  elements.addAll(firstSet);
  elements.forEach((element) => print(element));
  print("\n");

  //or

  Set numberSet = new Set();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(20);
  numberSet.add(60);
  numberSet.add(70);
  print("Default implementation :${numberSet.runtimeType}");

  // all elements are retrieved in the order in which they are inserted
  for(var no in numberSet) {
    print(no);
  }

}