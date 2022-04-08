void main(List<String> arguments) {

  print(checkEvenOrOdd(5));
  print(checkEvenOrOdd(10));
  ifELseElseWithoutLIne(10);

  ifElseSingleLine();
  print(basicCalculator('+', 100, 200));

  print(playerName('A'));
  print(playerName(null));

  String pet = typesOfPet(Pet.cat);
  print(pet);

}

// *********************  IF Else *************

String checkEvenOrOdd([int num = 10]) {
  if (num % 2 == 0) {
    return 'even';
  } else {
    return 'odd';
  }
}

String chekEvenOddNarrowSyntax(int x) => x % 2 == 0 ? 'Even' : 'Odd';

//expr1 ?? expr2
//If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.
String playerName(String? name) => name ?? 'Guest';

//default return is null
void ifELseElseWithoutLIne(int a) {
  if (a > 2) {
    print("$a is grater.");
  } else if (a < 2) {
    print("$a is less.");
  } else if (a == 2) {
    print("$a is Equal.");
  } else if (a != 2) {
    print("$a is not equal");
  } else {
    print("$a");
  }
}

void ifElseSingleLine() {
  String name = 'Mustak';
  if (name.contains('M'))
    print("Yes it is contains everything as I My name.");
  else
    print("sorry it is wrong.");
}

// ********************* Switch Case *************

double? basicCalculator(String operator, double num1, double num2) {
  switch (operator) {
    case '+':
      return num1 + num2;
      break;

    case '-':
      return num1 - num2;
      break;

    case '*':
      return num1 * num2;
      break;
    case '/':
      return num1 / num2;
      break;
    case '%': //dart also support empty cases

    default:
      print("wrong kryword");
  }
}

enum Pet { dog, cat, bird, lizard }

String typesOfPet(Pet pet) {
  switch (pet) {
    case Pet.bird:
      return 'Bird';
      break;

    case Pet.cat:
      return 'Cat';
      break;

    case Pet.dog:
      return 'Dog';
      break;
    default:
      return 'nothing';
      break;
  }
}

