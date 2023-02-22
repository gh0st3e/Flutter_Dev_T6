import 'entity.dart';

class OfficeWorker implements Iterable<Employee>{
  List<Employee> _employees = [];

  OfficeWorker(List<Employee> employees) {
    _employees = employees;
  }

  @override
  Iterator<Employee> get iterator {
    return _employees.iterator;
  }

  @override
  Iterable<Employee> take(int count) {
    var taken = 0;
    var takenEmployees = <Employee>[];
    for (var employee in _employees) {
      if (taken == count) {
        break;
      }
      takenEmployees.add(employee);
      taken++;
    }
    return takenEmployees;
  }


  @override
  bool any(bool Function(Employee element) test) {
    // TODO: implement any
    throw UnimplementedError();
  }

  @override
  Iterable<R> cast<R>() {
    // TODO: implement cast
    throw UnimplementedError();
  }

  @override
  bool contains(Object? element) {
    // TODO: implement contains
    throw UnimplementedError();
  }

  @override
  Employee elementAt(int index) {
    // TODO: implement elementAt
    throw UnimplementedError();
  }

  @override
  bool every(bool Function(Employee element) test) {
    // TODO: implement every
    throw UnimplementedError();
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(Employee element) toElements) {
    // TODO: implement expand
    throw UnimplementedError();
  }



  @override
  Employee firstWhere(bool Function(Employee element) test, {Employee Function()? orElse}) {
    // TODO: implement firstWhere
    throw UnimplementedError();
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, Employee element) combine) {
    // TODO: implement fold
    throw UnimplementedError();
  }

  @override
  Iterable<Employee> followedBy(Iterable<Employee> other) {
    // TODO: implement followedBy
    throw UnimplementedError();
  }

  @override
  void forEach(void Function(Employee element) action) {
    // TODO: implement forEach
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => throw UnimplementedError();

  @override
  // TODO: implement isNotEmpty
  bool get isNotEmpty => throw UnimplementedError();



  @override
  String join([String separator = ""]) {
    // TODO: implement join
    throw UnimplementedError();
  }

  @override
  // TODO: implement last
  Employee get last => throw UnimplementedError();

  @override
  Employee lastWhere(bool Function(Employee element) test, {Employee Function()? orElse}) {
    // TODO: implement lastWhere
    throw UnimplementedError();
  }

  @override
  // TODO: implement length
  int get length => throw UnimplementedError();

  @override
  Iterable<T> map<T>(T Function(Employee e) toElement) {
    // TODO: implement map
    throw UnimplementedError();
  }

  @override
  Employee reduce(Employee Function(Employee value, Employee element) combine) {
    // TODO: implement reduce
    throw UnimplementedError();
  }

  @override
  // TODO: implement single
  Employee get single => throw UnimplementedError();

  @override
  Employee singleWhere(bool Function(Employee element) test, {Employee Function()? orElse}) {
    // TODO: implement singleWhere
    throw UnimplementedError();
  }

  @override
  Iterable<Employee> skip(int count) {
    // TODO: implement skip
    throw UnimplementedError();
  }

  @override
  Iterable<Employee> skipWhile(bool Function(Employee value) test) {
    // TODO: implement skipWhile
    throw UnimplementedError();
  }



  @override
  Iterable<Employee> takeWhile(bool Function(Employee value) test) {
    // TODO: implement takeWhile
    throw UnimplementedError();
  }

  @override
  List<Employee> toList({bool growable = true}) {
    // TODO: implement toList
    throw UnimplementedError();
  }

  @override
  Set<Employee> toSet() {
    // TODO: implement toSet
    throw UnimplementedError();
  }

  @override
  Iterable<Employee> where(bool Function(Employee element) test) {
    // TODO: implement where
    throw UnimplementedError();
  }

  @override
  Iterable<T> whereType<T>() {
    // TODO: implement whereType
    throw UnimplementedError();
  }

  @override
  // TODO: implement first
  Employee get first => throw UnimplementedError();

}