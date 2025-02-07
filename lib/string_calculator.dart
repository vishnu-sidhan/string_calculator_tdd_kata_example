class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    String commonDelimiter = ",";
    List<String> delimiters = [];
    if (numbers.contains('\n')) {
      delimiters.add('\n');
    }
    if (numbers.startsWith("//")) {
      numbers = numbers.substring(2);
      bool toRepeat = false;
      do {
        (String, bool) temp = createDelimitersList(numbers, delimiters);
        numbers = temp.$1;
        toRepeat = temp.$2;
      } while (toRepeat);
    }
    if (delimiters.isNotEmpty) {
      for (String val in delimiters) {
        numbers = numbers.replaceAll(val, commonDelimiter);
      }
    }
    if (numbers.contains(commonDelimiter)) {
      List<String> list = numbers.split(commonDelimiter);
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

  (String, bool) createDelimitersList(String numbers, List<String> delimiters) {
    String temp = numbers[0];
    int count = 1;
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] == temp) {
        count++;
      } else {
        numbers = numbers.substring(i);
        break;
      }
    }
    delimiters.add(List.generate(count, (i) => temp).join());
    return (numbers, numbers[0] != '\n');
  }
}
