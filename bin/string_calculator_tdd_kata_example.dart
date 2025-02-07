import 'package:string_calculator_tdd_kata_example/string_calculator.dart';

void main(List<String> arguments) {
  StringCalculator stringCalculator = StringCalculator();
  print(stringCalculator.add(""));
  print(stringCalculator.add("1"));
  print(stringCalculator.add("1,2"));
  print(stringCalculator.add("1,2,21,3"));
  print(stringCalculator.add("1,2\n3,10"));
  print(stringCalculator.add("//;\n1;2\n2;1"));
  // print(stringCalculator.add("-1,3"));
  // print(stringCalculator.add("-1,2,-4"));
  print(stringCalculator.add("2,1000,1"));
  print(stringCalculator.add("//@@\n1@@2\n2@@1"));
  print(stringCalculator.add("//@@##\n1##2@@3"));
}
