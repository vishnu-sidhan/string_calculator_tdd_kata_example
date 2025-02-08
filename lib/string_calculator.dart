class StringCalculator {
  static const String commonDelimiter = ",";

  int add(String numbers) {
    // When string is empty.
    if (numbers.isEmpty) return 0;
    List<String> delimiters = [];
    // When string contains '\n'.
    if (numbers.contains('\n')) delimiters.add('\n');

    // When the string has different delimiters than ','.
    if (numbers.startsWith("//")) {
      numbers = numbers.substring(2);
      do {
        numbers = addDelimiterToList(numbers, delimiters);
      } while (numbers[0] != '\n');
    }
    // Replace '\n' or any other delimiters with ','.
    if (delimiters.isNotEmpty) {
      for (String val in delimiters) {
        numbers = numbers.replaceAll(val, commonDelimiter);
      }
    }
    // Converting the string numbers to list of integers.
    List<int> values =
        numbers.split(commonDelimiter).map((e) => stringToInt(e)).toList();
    int total = 0;
    List<int> negativeValues = [];
    // Adding integers values according to conditions.
    for (int val in values) {
      if (val < 0) {
        negativeValues.add(val);
        continue;
      }
      if (val < 1000) total += val;
    }
    // Throwing error if negatives values present in string.
    if (negativeValues.isNotEmpty) {
      return throw "Negatives not allowed - ${negativeValues.join(",")}";
    }
    return total;
  }

  int stringToInt(String val) {
    if (val.isEmpty) return 0;
    return int.parse(val);
  }

  String addDelimiterToList(String numbers, List<String> delimiters) {
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
    return numbers;
  }
}
