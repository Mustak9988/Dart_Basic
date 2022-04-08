
void main() {
  // *********************  For loop  *************


  var list = [20, 54, 586, 55];
  int variable = 8;

  print("for loop --> ");

  //standard for loop
  for (int x = 0; x < variable; x++) {
    if (x == 2) {
      continue;
    }
    if (x == 3) {
      break;
    }
    print(x);
  }

  // for each loop
  print("for each loop --> ");
  list.forEach((element) {print(element);});

  print("for each loop 2 --> ");
  for(var x in list){
    print(x);

  }


  // *********************  Do While loop  *************
  print("Do while loop --> ");
  int number = 1;

  do {
    print("  $number \n");
    number++;
  } while (number < 6);

  // *********************  While loop  *************
  print(" while loop --> ");
  int count = 1;

  while (count <= 10) {
    print(" $count");
    count++;

    if (count == 4) {
      break;
    }
  }
}