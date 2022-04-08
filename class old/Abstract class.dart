
abstract class Shape{

  //abstract class is not 100% abstract but there must be  at least an abstract method without body.

  int? x;
  int? y;
  void draw();
  void myNormalFunction(int x, int y){
    this.x = x;
   this.y = y;
   print("Init.....");
  }
}

class Rectangle extends Shape{

  //as like java we have to call static method from any class through class name. Moreover, we can not call it through object.
  static double? pi = 3.1416;
  static void calculatedArea(){
    print("Some code from static method.");
  }


  @override
  void draw() {
    print("From rectangle...");
  }

  @override
  void myNormalFunction(int x, int y) {
    print(x*y);

  }
}


void main(){

  //this is for abstract class
  //we can not create abstract class object directly.
  Rectangle r1 = new Rectangle();
  r1.draw();
  r1.myNormalFunction(10, 10);

  //static method and variable call
  print(Rectangle.pi);
  Rectangle.calculatedArea();
  //r1.pie; //it shows an error because it is not possible


  //this is for interface
  Remote remote = new Remote();
  remote.volumeDown();
  remote.volumeDown();

  Television tv = new Television();
  tv.volumeDown();
  tv.volumeDown();

}

//********************* INheritance *************

class Remote{
  void volumeUp(){
    print("------------------ volume up from remote__________");
  }

  void volumeDown(){
    print("------------------ volume down from remote__________");
  }

}

//we can implement multiple classes like java
class Television implements Remote, Rectangle{
  @override
  void volumeDown() {
    print("------------------ volume up from TV__________");
  }

  @override
  void volumeUp() {
    print("------------------ volume up from TV__________");
  }

  @override
  int? x;

  @override
  int? y;

  @override
  void draw() {
    // TODO: implement draw
  }

  @override
  void myNormalFunction(int x, int y) {
    // TODO: implement myNormalFunction
  }

}