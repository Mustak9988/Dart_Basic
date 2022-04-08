import 'dart:collection';


void main(){

  //Queue queue = new Queue();
  var queue = new Queue();
  print("Default implementation ${queue.runtimeType}");
  queue.add(10);
  queue.add(20);
  queue.add(10);
  queue.add(40);

  //add value in first

  queue.addFirst(100);

  //add value in last

  queue.addLast(200);

  for(var no in queue){
    print(no);
  }
}