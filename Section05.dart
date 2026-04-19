import "dart:io";

class Person{
 String name;
 int age;
 
 Person(this.name,this.age);
static String universityName="Sohag University";


void set_age(int p_age){
  this.age= p_age;
}
void get_age(){
  print("age :${this.age}");
}
 
 }

 abstract class Skills{
  void programming();
  void communication();
 }

 class Employee extends Person{
  double salary;
  Employee(String name,int age, this.salary):super(name,age);

  void ShowInfo(){
    print("Employee Name : $name");
    print("Employee Age : $age");
    print("Salary : $salary");
  }
 }

 class Developer extends Employee implements Skills{
  String spec;
  Developer(String name,int age,double salary , String spec):this.spec=spec,super(name,age,salary);

  @override
  void programming() {
   print("$name is BackeEnd Developer with .Net framework");
  }

  @override
  void communication() {
   print("Communication Skills is  $spec");
  }
 }



void main() {
 Developer dev= Developer("Kermina", 22, 25000, "Team work");

 dev.ShowInfo();
 dev.programming();
 dev.communication();

 print("University : ${Person.universityName}");
}
