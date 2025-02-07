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
  test('When multiple numbers present return sum of all numbers', () {
    expect(stringCalculator.add("1,5,10"), 16);
  });
  test(
      'When newline character present remove character and return sum of all numbers',
      () {
    expect(stringCalculator.add("1,2\n2,10"), 15);
  });
  test('When other delimiters are used', () {
    expect(stringCalculator.add("//;\n1;2\n2;1"), 6);
  });
  test('When delimiters of any length used', () {
    expect(stringCalculator.add("//@@\n1\n2@@1"), 4);
    expect(stringCalculator.add("//@@##\n1##2@@1"), 4);
  });
  test('When negative values present', () {
    try {
      stringCalculator.add("-1,2");
    } catch (e) {
      expect(e, "Negatives not allowed - -1");
    }
    try {
      stringCalculator.add("-1,2,-4");
    } catch (e) {
      expect(e, "Negatives not allowed - -1,-4");
    }
  });
  test('When a number is greater than 1000', () {
    expect(stringCalculator.add("2,1000"), 2);
  });
}
