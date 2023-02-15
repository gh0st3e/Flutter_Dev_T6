import 'package:lab2/employee.dart';

class OfficeWorker extends Employee implements IEmployee {
  @override
  late int salary = 0;
  String name = "nil";
  static int productive = 0;

  OfficeWorker(this.name, this.salary) {}

  @override
  void printSalary() {
    print("Office Worker $name have salary: $salary");
  }

  @override
  void printName() {
    print("$name is Office Worker");
  }

  static void screamAnthem() {
    print("WE ARE OFFICE WORKERS\n"
        "WE ARE THE BEST IN THE WORlD\n"
        "WE HAVE BIGGEST SALARY IN THE WORLD\n"
        "WE ARE NOT RATS INSIDE THE JAIL\n"
        "WE CAN DO ANYTHING WE WANT");
  }
}

class CircusWorker extends Employee implements IEmployee {
  @override
  late int salary;
  String workerName;

  String get name {
    return workerName;
  }

  void set name(String spec) {
    name = "$spec $name";
  }

  @override
  void printName() {
    print("$name is Circus Worker");
  }

  @override
  void printSalary() {
    print("Circus Worker $name have salary: $salary");
  }

  CircusWorker(this.workerName, this.salary);
}

class DriverWorker {
  String ?name;
  String ?car;

  void ScreamWord(String word) {
    print("$name screams $word");
  }

  void FillTank([int count = 10]) {
    print("$name fill his car - $car on $count liters");
  }

  void DriverName(void Function(String value) printDriverName) {
    printDriverName(name!);
  }

  DriverWorker.NamedConstructor(this.name, this.car);
}
