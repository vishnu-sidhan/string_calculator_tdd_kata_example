import 'package:string_calculator_tdd_kata_example/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  late StringCalculator stringCalculator;

  setUp(() {
    stringCalculator = StringCalculator();
  });
  test('When String is empty return 0', () {
    expect(stringCalculator.add(""), 0);
  });
  test('When only number present in String return number', () {
    expect(stringCalculator.add("1"), 1);
  });
}
