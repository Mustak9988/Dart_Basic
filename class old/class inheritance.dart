/*
* Dart support single(Class A <- class B), Multi-level (Class A <- Class B <- Class C ) and Hierarchical (Class A<- class B and Class A <- Class C) inheritance  I*/

class Animal {
  var _color;
  var _type;

  Animal(this._color, this._type);

  get color => _color;

  set color(value) {
    _color = value;
  }

  get type => _type;

  set type(value) {
    _type = value;
  }

  void details() {
    print('Color is $_color, type is $_type');
  }
}

//as like java, dart inheritance does not allow to extend multiple class
class Dog extends Animal {
  int? dogAge;
  //value pass to parent constructor
  Dog(this.dogAge, var color, var type) : super(color, type);
  
  @override
  void details() {
    super.details(); // print parent class first
    print("Age is : $dogAge ");
  //  super.details();
  }
  
}

void main() {

  Dog dog = new Dog(22, 'red', 'mammal');
  dog.details();

}
