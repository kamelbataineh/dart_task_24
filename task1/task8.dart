class Parson {
  String firstName;
  String lastName;

  Parson(this.firstName, this.lastName); //defult constrat
  Parson.named(this.firstName, this.lastName); //named constrat
  Parson.named1(
      {required this.firstName, required this.lastName}); //named parameter
  Parson.named2(
      [this.firstName = "null", this.lastName = "null"]); //defult parameter

  String getFirstName() {
    return firstName;
  }

  String getLastName() {
    return lastName;
  }
}

class Employee extends Parson {
  int employeeld;

  Employee(this.employeeld)
      : super.named("firstName", "lastName"); //defult constrat
  Employee.named(this.employeeld)
      : super.named("firstName", "lastName"); //named constrat
  Employee.named1({required this.employeeld})
      : super.named("firstName", "lastName"); //named parameter
  Employee.named2([this.employeeld = 1])
      : super.named("firstName", "lastName"); //defult parameter
  int getemployeeld() {
    return employeeld;
  }

  @override
  String getLastName() {
    super.getLastName();
    return lastName;
  }
}

class HrEmployee extends Employee {
  int salary;

  HrEmployee(this.salary) : super.named(1); //defult constrat
  HrEmployee.named(this.salary) : super.named(1); //named constrat
  HrEmployee.named1({required this.salary}) : super.named(1); //named parameter
  HrEmployee.named2([this.salary = 1]) : super.named(1); //defult parameter
  int getsalary() {
    return employeeld;
  }

  @override
  String getLastName() {
    super.getLastName();
    return lastName;
  }
}

void main(List<String> args) {
  HrEmployee x = HrEmployee(3);
  print(x.getLastName());
}
