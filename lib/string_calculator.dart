class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    if (numbers.contains(",")) {
      List<String> list = numbers.split(",");
      int total = 0;
      for (String val in list) {
        int num = int.parse(val);
        total += num;
      }
      return total;
    }
    return int.parse(numbers);
  }
}
