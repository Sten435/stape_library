import 'package:stape/stape.dart';
import 'package:test/test.dart';

void main() {
  group('StringExt', () {
    test('isPalinDroom should return true for a palindrome string', () {
      final String palindrome = 'level';
      expect(palindrome.isPalinDroom, isTrue);
    });

    test('isPalinDroom should return false for a non-palindrome string', () {
      final String nonPalindrome = 'hello';
      expect(nonPalindrome.isPalinDroom, isFalse);
    });

    test('isNumeric should return true for a numeric string', () {
      final String numericString = '123';
      expect(numericString.isNumeric, isTrue);
    });

    test('isNumeric should return false for a non-numeric string', () {
      final String nonNumericString = 'abc';
      expect(nonNumericString.isNumeric, isFalse);
    });

    test('isAlphabetic should return true for an alphabetic string', () {
      final String alphabeticString = 'abc';
      expect(alphabeticString.isAlphabetic, isTrue);
    });

    test('isAlphabetic should return false for a non-alphabetic string', () {
      final String nonAlphabeticString = '123';
      expect(nonAlphabeticString.isAlphabetic, isFalse);
    });

    test('isAlphaNumeric should return true for an alpha-numeric string', () {
      final String alphaNumericString = 'abc123';
      expect(alphaNumericString.isAlphaNumeric, isTrue);
    });

    test('isAlphaNumeric should return false for a non-alpha-numeric string', () {
      final String nonAlphaNumericString = 'abc-123';
      expect(nonAlphaNumericString.isAlphaNumeric, isFalse);
    });

    test('isNullOrNumeric should return true for a null or numeric string', () {
      final String? nullNumericString = null;
      final String numericString = '123';
      expect(nullNumericString.isNullOrNumeric, isTrue);
      expect(numericString.isNullOrNumeric, isTrue);
    });

    test('isNullOrNumeric should return false for a non-null and non-numeric string', () {
      final String nonNumericString = 'abc';
      expect(nonNumericString.isNullOrNumeric, isFalse);
    });

    test('isNotNullOrNumeric should return true for a non-null and non-numeric string', () {
      final String nonNumericString = 'abc';
      expect(nonNumericString.isNotNullOrNumeric, isTrue);
    });

    test('isNotNullOrNumeric should return false for a null or numeric string', () {
      final String? nullNumericString = null;
      final String numericString = '123';
      expect(nullNumericString.isNotNullOrNumeric, isFalse);
      expect(numericString.isNotNullOrNumeric, isFalse);
    });

    test('isNullOrAlphabetic should return true for a null or alphabetic string', () {
      final String? nullAlphabeticString = null;
      final String alphabeticString = 'abc';
      expect(nullAlphabeticString.isNullOrAlphabetic, isTrue);
      expect(alphabeticString.isNullOrAlphabetic, isTrue);
    });

    test('isNullOrAlphabetic should return false for a non-null and non-alphabetic string', () {
      final String nonAlphabeticString = '123';
      expect(nonAlphabeticString.isNullOrAlphabetic, isFalse);
    });

    test('isNotNullOrAlphabetic should return true for a non-null and non-alphabetic string', () {
      final String nonAlphabeticString = '123';
      expect(nonAlphabeticString.isNotNullOrAlphabetic, isTrue);
    });

    test('isNotNullOrAlphabetic should return false for a null or alphabetic string', () {
      final String? nullAlphabeticString = null;
      final String alphabeticString = 'abc';
      expect(nullAlphabeticString.isNotNullOrAlphabetic, isFalse);
      expect(alphabeticString.isNotNullOrAlphabetic, isFalse);
    });

    test('isNullOrAlphaNumeric should return true for a null or alpha-numeric string', () {
      final String? nullAlphaNumericString = null;
      final String alphaNumericString = 'abc123';
      expect(nullAlphaNumericString.isNullOrAlphaNumeric, isTrue);
      expect(alphaNumericString.isNullOrAlphaNumeric, isTrue);
    });

    test('isNullOrAlphaNumeric should return false for a non-null and non-alpha-numeric string', () {
      final String nonAlphaNumericString = 'abc-123';
      expect(nonAlphaNumericString.isNullOrAlphaNumeric, isFalse);
    });

    test('isNotNullOrAlphaNumeric should return true for a non-null and non-alpha-numeric string', () {
      final String nonAlphaNumericString = 'abc-123';
      expect(nonAlphaNumericString.isNotNullOrAlphaNumeric, isTrue);
    });

    test('isNotNullOrAlphaNumeric should return false for a null or alpha-numeric string', () {
      final String? nullAlphaNumericString = null;
      final String alphaNumericString = 'abc123';
      expect(nullAlphaNumericString.isNotNullOrAlphaNumeric, isFalse);
      expect(alphaNumericString.isNotNullOrAlphaNumeric, isFalse);
    });

    test('isNullOrEmpty should return true for a null string', () {
      final String? nullString = null;
      expect(nullString.isNullOrEmpty, isTrue);
    });

    test('isNullOrEmpty should return true for an empty string', () {
      final String emptyString = '';
      expect(emptyString.isNullOrEmpty, isTrue);
    });

    test('isNullOrEmpty should return false for a non-null and non-empty string', () {
      final String nonEmptyString = 'example';
      expect(nonEmptyString.isNullOrEmpty, isFalse);
    });

    test('isNullOrWhiteSpace should return true for a null string', () {
      final String? nullString = null;
      expect(nullString.isNullOrWhiteSpace, isTrue);
    });

    test('isNullOrWhiteSpace should return true for an empty string', () {
      final String emptyString = '';
      expect(emptyString.isNullOrWhiteSpace, isTrue);
    });

    test('isNullOrWhiteSpace should return true for a whitespace string', () {
      final String whitespaceString = '   ';
      expect(whitespaceString.isNullOrWhiteSpace, isTrue);
    });

    test('isNullOrWhiteSpace should return false for a non-null and non-whitespace string', () {
      final String nonWhitespaceString = 'example';
      expect(nonWhitespaceString.isNullOrWhiteSpace, isFalse);
    });

    test('isValidEmail should return true for a valid email address', () {
      final String validEmail = 'example@example.com';
      expect(validEmail.isValidEmail(), isTrue);
    });

    test('isValidEmail should return false for an invalid email address', () {
      final String invalidEmail = 'example@example';
      expect(invalidEmail.isValidEmail(), isFalse);
    });

    test('toUpper should convert all characters to uppercase', () {
      final String lowercaseString = 'example';
      expect(lowercaseString.toUpper, equals('EXAMPLE'));
    });

    test('toLower should convert all characters to lowercase', () {
      final String uppercaseString = 'EXAMPLE';
      expect(uppercaseString.toLower, equals('example'));
    });

    test('reverse should reverse the string', () {
      final String originalString = 'example';
      expect(originalString.reverse, equals('elpmaxe'));
    });

    test('isNullOrEmpty should return true for an empty string', () {
      final String emptyString = '';
      expect(emptyString.isNullOrEmpty, isTrue);
    });

    test('isNullOrEmpty should return false for a non-empty string', () {
      final String nonEmptyString = 'Hello';
      expect(nonEmptyString.isNullOrEmpty, isFalse);
    });

    test('isNullOrWhiteSpace should return true for a null string', () {
      final String? nullString = null;
      expect(nullString.isNullOrWhiteSpace, isTrue);
    });

    test('isNullOrWhiteSpace should return true for an empty string', () {
      final String emptyString = '';
      expect(emptyString.isNullOrWhiteSpace, isTrue);
    });

    test('isNullOrWhiteSpace should return true for a whitespace string', () {
      final String whitespaceString = '     ';
      expect(whitespaceString.isNullOrWhiteSpace, isTrue);
    });

    test('isNullOrWhiteSpace should return false for a non-whitespace string', () {
      final String nonWhitespaceString = 'Hello';
      expect(nonWhitespaceString.isNullOrWhiteSpace, isFalse);
    });

    test('isValidEmail should return true for a valid email address', () {
      final String validEmail = 'test@example.com';
      expect(validEmail.isValidEmail(), isTrue);
    });

    test('isValidEmail should return false for an invalid email address', () {
      final String invalidEmail = 'test.example.com';
      expect(invalidEmail.isValidEmail(), isFalse);
    });

    test('isValidEmail should return true for a valid email address with custom regex', () {
      final String validEmail = 'test@example.com';
      final String customRegex = r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$';
      expect(validEmail.isValidEmail(regex: customRegex), isTrue);
    });

    test('toUpper should convert all characters to uppercase', () {
      final String lowercaseString = 'hello';
      expect(lowercaseString.toUpper, equals('HELLO'));
    });

    test('toLower should convert all characters to lowercase', () {
      final String uppercaseString = 'HELLO';
      expect(uppercaseString.toLower, equals('hello'));
    });

    test('trimStart should remove leading whitespace', () {
      final String stringWithLeadingWhitespace = '  hello';
      expect(stringWithLeadingWhitespace.trimStart, equals('hello'));
    });

    test('trimEnd should remove trailing whitespace', () {
      final String stringWithTrailingWhitespace = 'hello  ';
      expect(stringWithTrailingWhitespace.trimEnd, equals('hello'));
    });

    test('substring should return a substring with specified indices', () {
      final String originalString = 'Hello, World!';
      final String substring = originalString.substring(7, 12);
      expect(substring, equals('World'));
    });

    test('padLeft should pad the string on the left side with specified width and padding character', () {
      final String originalString = 'Hello';
      final String paddedString = originalString.padLeft(10, ' ');
      expect(paddedString, equals('     Hello'));
    });

    test('padRight should pad the string on the right side with specified width and padding character', () {
      final String originalString = 'Hello';
      final String paddedString = originalString.padRight(10, ' ');
      expect(paddedString, equals('Hello     '));
    });

    test('replace should replace all occurrences of a substring with a new value', () {
      final String originalString = 'Hello, Hello, Hello!';
      final String replacedString = originalString.replace('Hello', 'Hi');
      expect(replacedString, equals('Hi, Hi, Hi!'));
    });

    test('split should split the string into a list of substrings', () {
      final String originalString = 'Hello, World!';
      final List<String> splitString = originalString.split(', ');
      expect(splitString, equals(['Hello', 'World!']));
    });

    test('startsWith should return true if the string starts with a specified substring', () {
      final String originalString = 'Hello, World!';
      final bool startsWithHello = originalString.startsWith('Hello');
      final bool startsWithHi = originalString.startsWith('Hi');
      expect(startsWithHello, isTrue);
      expect(startsWithHi, isFalse);
    });

    test('endsWith should return true if the string ends with a specified substring', () {
      final String originalString = 'Hello, World!';
      final bool endsWithWorld = originalString.endsWith('World!');
      final bool endsWithUniverse = originalString.endsWith('Universe!');
      expect(endsWithWorld, isTrue);
      expect(endsWithUniverse, isFalse);
    });
  });
}
