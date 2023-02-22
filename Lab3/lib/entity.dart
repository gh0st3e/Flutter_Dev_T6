class Person {
  String name;

  Person(this.name);

  void showName() {
    print("Name: $name");
  }
}

class Worker {
  String company = "";

  void placeOfWork() {
    print("Work in $company");
  }
}

class Employee extends Person with Worker implements Comparable<Employee> {
  int age;
  Employee(name, employeeCompany, this.age) : super(name) {
    company = employeeCompany;
  }

  @override
  int compareTo(Employee emp){
    return age.compareTo(emp.age);
  }
}
