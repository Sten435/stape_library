import 'package:stape/stape.dart';
import 'package:test/test.dart';

void main() {
  group('ObjectExt', () {
    test('isNull should return true when object is null', () {
      final Object? obj = null;
      expect(obj.isNull, isTrue);
    });

    test('isNull should return false when object is not null', () {
      final Object obj = 'example';
      expect(obj.isNull, isFalse);
    });

    test('isNotNull should return false when object is null', () {
      final Object? obj = null;
      expect(obj.isNotNull, isFalse);
    });

    test('isNotNull should return true when object is not null', () {
      final Object obj = 'example';
      expect(obj.isNotNull, isTrue);
    });

    test('isNullOrZero should return true when object is null', () {
      final Object? obj = null;
      expect(obj.isNullOrZero, isTrue);
    });

    test('isNullOrZero should return true when object is zero (num)', () {
      final Object obj = 0;
      expect(obj.isNullOrZero, isTrue);
    });

    test('isNullOrZero should return true when object is empty string', () {
      final Object obj = '';
      expect(obj.isNullOrZero, isTrue);
    });

    test('isNullOrZero should return false when object is not null or zero',
        () {
      final Object obj = 'example';
      expect(obj.isNullOrZero, isFalse);
    });

    test('isNotNullOrZero should return false when object is null', () {
      final Object? obj = null;
      expect(obj.isNotNullOrZero, isFalse);
    });

    test('isNotNullOrZero should return false when object is zero (num)', () {
      final Object obj = 0;
      expect(obj.isNotNullOrZero, isFalse);
    });

    test('isNotNullOrZero should return false when object is empty string', () {
      final Object obj = '';
      expect(obj.isNotNullOrZero, isFalse);
    });

    test('isNotNullOrZero should return true when object is not null or zero',
        () {
      final Object obj = 'example';
      expect(obj.isNotNullOrZero, isTrue);
    });

    test('isNullOrFalse should return true when object is null', () {
      final Object? obj = null;
      expect(obj.isNullOrFalse, isTrue);
    });

    test('isNullOrFalse should return true when object is false (bool)', () {
      final Object obj = false;
      expect(obj.isNullOrFalse, isTrue);
    });

    test('isNullOrFalse should return true when object is empty string', () {
      final Object obj = '';
      expect(obj.isNullOrFalse, isTrue);
    });

    test('isNullOrFalse should return false when object is not null or false',
        () {
      final Object obj = true;
      expect(obj.isNullOrFalse, isFalse);
    });

    test('log should print the object when object is not null', () {
      final Object obj = 'example';
      expect(() => obj.log, prints('example\n'));
    });

    test('logIf should print the object when condition is true', () {
      final Object obj = 'example';
      final condition = true;
      expect(() => obj.logIf(condition), prints('example\n'));
    });

    test('logIf should not print the object when condition is false', () {
      final Object obj = 'example';
      final condition = false;
      expect(() => obj.logIf(condition), prints(''));
    });
  });
}
