abstract class Employee {
  void printName() {
  }
}

//interface
class IEmployee {
  late int salary;

  IEmployee(this.salary);

  void printSalary() {
    print(salary);
  }
}

