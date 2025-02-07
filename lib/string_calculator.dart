class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    String delimiter = ",";
    if (numbers.startsWith("//")) {
      delimiter = numbers[2];
      numbers = numbers.substring(3);
    }
    if (numbers.contains('\n')) {
      numbers = numbers.split('\n').join(delimiter);
    }
    if (numbers.contains(delimiter)) {
      List<String> list = numbers.split(delimiter);
      int total = 0;
      for (String val in list) {
        int num = stringToInt(val);
        total += num;
      }
      return total;
    }
    return stringToInt(numbers);
  }

  int stringToInt(String val) {
    if (val.isEmpty) return 0;
    return int.parse(val);
  }
}
