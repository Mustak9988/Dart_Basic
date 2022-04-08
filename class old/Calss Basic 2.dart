class Student{

  //hide your code using ctrl + _

  var name;
  late double _percent; // dart does not support access modifier such as private, public and protected.
  //however _ means it is private for its own library
  //int? percent; it shows error to get value because by default it is null and in getter it does not send any value

  //setter
void set percentage(double percentage){
   this._percent = (percentage / 500)*100;
}

  //or

// void set percentage(double percentage) => this._percent = (percentage / 500)*100;

//getter
//   double get percentage{
//   return this._percent ;
// }
//or
double get percentage => this._percent;


}



void main(){

  Student s1 = new Student();
  s1.name = 'pieter'; //value set by default setter
  print('${s1.name}');// value get by default getter; In dart default setter and getter automatic crate when an instance variable is create

  //create object for setter and getter

  var s2 = new Student();
  //access through default setter and getter
  s2._percent = 5685.23;
  print(s2._percent);

  //access through customs setter and getter
  s2.percentage = 562.25;
 print(s2.percentage);

}