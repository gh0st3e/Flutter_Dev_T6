import 'package:lab3/entity.dart';

class SchoolWorker implements Iterator<Employee>{
  int _currentIndex = -1;
  List<Employee> _employees = [];

  SchoolWorker(List<Employee> employees){
    _employees = employees;
  }

  @override
  Employee get current {
    if (_currentIndex < 0 || _currentIndex >= _employees.length) {
      return Employee(null, null, 0);
    }
    return _employees[_currentIndex];
  }

  @override
  bool moveNext() {
    _currentIndex++;
    return _currentIndex < _employees.length;
  }

}