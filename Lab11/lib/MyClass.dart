class MyClass {
  int? convertToNumber(String value) {
    if (value == null) {
      return null;
    }
    final number = int.tryParse(value);
    return number;
  }
}
