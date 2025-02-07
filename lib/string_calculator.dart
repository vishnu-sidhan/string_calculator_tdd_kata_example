class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    int indexOfComma = numbers.indexOf(",");
    if (indexOfComma != -1) {
      int value1 = int.parse(numbers.substring(0, indexOfComma));
      int value2 = int.parse(numbers.substring(indexOfComma + 1));
      return value1 + value2;
    }
    return int.parse(numbers);
  }
}
