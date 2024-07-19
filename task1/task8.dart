class Parson {
  String firstName;
  String lastName;

  Parson({this.firstName = "null", this.lastName = "null"});
  Parson.named(): firstName = "nuull", lastName = "nuull";
  Parson.namerequired({required this.firstName, required this.lastName});
  String getFirstName() {
    return firstName;
  }

  String getLastName() {
    return lastName;
  }

void display(){
print(getFirstName());
print(getLastName());
}

}

class Employee extends Parson {
  int employeeld;
Employee({this.employeeld=1});
Employee.named():employeeld=2, super.named();
Employee.namerequired({required this.employeeld}) :super.namerequired(firstName: "null", lastName: "null");
  int getemployeeld() {
    return employeeld;
  
  }


void display(){
super.display();
print(getemployeeld());
}



}

class HrEmployee extends Employee {
  int salary;
HrEmployee({this.salary=3});
HrEmployee.named():salary=4, super.named();
HrEmployee.namerequired({required this.salary}):super.namerequired(employeeld: 100);  
 int getsalary() {
    return salary;
  }
void display(){
  super.display();
 print(getsalary());

}

}
void main(List<String> args) {
  HrEmployee x=HrEmployee();
 x.display();
}