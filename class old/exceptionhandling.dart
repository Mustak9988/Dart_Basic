void main() {
  print("Case 1");
  try {
    int result = 10 ~/
        0; // ~/ means that divide the value and result it as an int otherwise it shows error and recommended double
    print(result);
  } on IntegerDivisionByZeroException {
    // on clause is only use when we know the name of exception otherwise we should use catch

    print("can not divide by zero");
  }

  print("Case 2");
  try {
    int result = 10 ~/
        0; // ~/ means that divide the value and result it as an int otherwise it shows error and recommended double
    print(result);
  } catch (e, s) {
    // on clause is only use when we know the name of exception otherwise we should use catch
    // here s is called stack trace which help us to identify where and what happened before the exception has occurred

    print("error $e and $s");
  } finally {
    print("Whether there is an exception or not final block will  be executed");
  }

  try {
    depositMoney(-100);
  } catch (e) {
    print('e');
  }
}

//custom exception handling

class DepositExecption implements Exception {
  String errorMessages() {
    return 'You can not enter less than 0';
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw new DepositExecption();
  }
}
