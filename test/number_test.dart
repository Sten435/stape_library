import 'package:stape/stape.dart';
import 'package:test/test.dart';

void main() {
  group('NumberExt', () {
    group('isNegative', () {
      test('returns true for negative numbers', () {
        final number = -5;
        expect(number.isNegative, isTrue);
      });

      test('returns false for positive numbers', () {
        final number = 5;
        expect(number.isNegative, isFalse);
      });

      // Add more tests for other scenarios
    });

    group('isPositive', () {
      test('returns true for positive numbers', () {
        final number = 5;
        expect(number.isPositive, isTrue);
      });

      test('returns false for negative numbers', () {
        final number = -5;
        expect(number.isPositive, isFalse);
      });

      // Add more tests for other scenarios
    });

    group('isZero', () {
      test('returns true for zero', () {
        final number = 0;
        expect(number.isZero, isTrue);
      });

      test('returns false for non-zero numbers', () {
        final number = 5;
        expect(number.isZero, isFalse);
      });

      // Add more tests for other scenarios
    });

    group('isInRange', () {
      test('returns true for numbers within the range', () {
        final number = 5;
        final min = 0;
        final max = 10;
        expect(number.isInRange(min, max), isTrue);
      });

      test('returns false for numbers outside the range', () {
        final number = 15;
        final min = 0;
        final max = 10;
        expect(number.isInRange(min, max), isFalse);
      });

      // Add more tests for other scenarios
    });

    group('toCurrencyString', () {
      test('returns the number as a currency string', () {
        final number = 123.45;
        final currencyString = number.toCurrencyString();
        expect(currencyString, equals('\$123.45'));
      });

      // Add more tests for other scenarios
    });

    group('toBool', () {
      test('returns true for 1', () {
        final number = 1;
        expect(number.toBool, isTrue);
      });

      test('returns false for 0', () {
        final number = 0;
        expect(number.toBool, isFalse);
      });

      // Add more tests for other scenarios
    });
  });
}
