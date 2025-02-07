import 'package:string_calculator_tdd_kata_example/string_calculator.dart';

void main(List<String> arguments) {
  StringCalculator stringCalculator = StringCalculator();
  print(stringCalculator.add(""));
  print(stringCalculator.add("1"));
  print(stringCalculator.add("1,2"));
  print(stringCalculator.add("1,2,21,3"));
}
