void main(){


  //declare a List with fixed type
  List<String> listTwo = ['A','G','C'];
  assert(listTwo.length == 3);

  //declare an empty list
  List<int> allListNum = List<int>.empty(growable: true);
  for (int i = 0; i < listTwo.length; i++) {
    allListNum.add(i);
  }

  //list declaration
  var list = ['A',1 , 100.25];

  //add value in list
  list.add(125);


  //set value in specific index in list
  list.insert(0, 'Khadem');

  //get specific value form list
  list[0];

  //print list using for each loop
  list.forEach((element) {print(element);});


  print("\n Specific value\n if item contain a value then it depict the value otherwise empty ");
  print(listTwo.where((item) => item.contains('A')));

//copy list from another list
  print("\n Copy a List from another list");
  var list3 = [...list];
  list3.forEach((element) {print(element);});

  // or using add all operator
  print("\n Copy a List from another list using add all method ");
  List<int> nw = List<int>.empty(growable: true);;
  nw.addAll(allListNum);
 for(int x in nw){
   print(x);
 }

 //if another list value could be null
  var list4 = [0, ...?list];
  assert(list4.length == 1);


}