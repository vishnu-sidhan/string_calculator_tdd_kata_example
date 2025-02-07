class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    String delimiter = ",";
    if (numbers.startsWith("//")) {
      String temp = numbers[2];
      int count = 1;
      for (int i = 3; i < numbers.length; i++) {
        if (numbers[i] == temp) {
          count++;
        } else {
          numbers = numbers.substring(i);
          break;
        }
      }
      delimiter = List.generate(count, (i) => temp).join();
    }
    if (numbers.contains('\n')) {
      numbers = numbers.split('\n').join(delimiter);
    }
    if (numbers.contains(delimiter)) {
      List<String> list = numbers.split(delimiter);
      int total = 0;
      List<int> negativeValues = [];
      for (String val in list) {
        int num = stringToInt(val);
        if (num < 0) {
          negativeValues.add(num);
          continue;
        }
        if (num < 1000) total += num;
      }
      if (negativeValues.isNotEmpty) {
        return throw "Negatives not allowed - ${negativeValues.join(",")}";
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
