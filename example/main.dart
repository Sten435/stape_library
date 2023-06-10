import 'package:stape/stape.dart';

void main() {
  final String? nullString = null;
  final String emptyString = '';
  final String string = 'string';
  final String numericString = '123';
  final String alphabeticString = 'abc';
  final String alphaNumericString = 'abc123';

  print('nullString.isNullOrEmpty: ${nullString.isNullOrEmpty}');
  print('emptyString.isNullOrEmpty: ${emptyString.isNullOrEmpty}');
  print('string.isNullOrEmpty: ${string.isNullOrEmpty}');
  print('numericString.isNullOrEmpty: ${numericString.isNullOrEmpty}');
  print('alphabeticString.isNullOrEmpty: ${alphabeticString.isNullOrEmpty}');
  print('alphaNumericString.isNullOrEmpty: ${alphaNumericString.isNullOrEmpty}\n\n');

  // nullString.isNullOrEmpty: true
  // emptyString.isNullOrEmpty: true
  // string.isNullOrEmpty: false
  // numericString.isNullOrEmpty: false
  // alphabeticString.isNullOrEmpty: false
  // alphaNumericString.isNullOrEmpty: false

  print('nullString.isNotNullOrEmpty: ${nullString.isNotNullOrEmpty}');
  print('emptyString.isNotNullOrEmpty: ${emptyString.isNotNullOrEmpty}');
  print('string.isNotNullOrEmpty: ${string.isNotNullOrEmpty}');
  print('numericString.isNotNullOrEmpty: ${numericString.isNotNullOrEmpty}');
  print('alphabeticString.isNotNullOrEmpty: ${alphabeticString.isNotNullOrEmpty}');
  print('alphaNumericString.isNotNullOrEmpty: ${alphaNumericString.isNotNullOrEmpty}\n\n');

  // nullString.isNotNullOrEmpty: false
  // emptyString.isNotNullOrEmpty: false
  // string.isNotNullOrEmpty: true
  // numericString.isNotNullOrEmpty: true
  // alphabeticString.isNotNullOrEmpty: true
  // alphaNumericString.isNotNullOrEmpty: true

  print('nullString.isNullOrNumeric: ${nullString.isNullOrNumeric}');
  print('emptyString.isNullOrNumeric: ${emptyString.isNullOrNumeric}');
  print('string.isNullOrNumeric: ${string.isNullOrNumeric}');
  print('numericString.isNullOrNumeric: ${numericString.isNullOrNumeric}');
  print('alphabeticString.isNullOrNumeric: ${alphabeticString.isNullOrNumeric}');
  print('alphaNumericString.isNullOrNumeric: ${alphaNumericString.isNullOrNumeric}\n\n');

  // nullString.isNullOrNumeric: true
  // emptyString.isNullOrNumeric: false
  // string.isNullOrNumeric: false
  // numericString.isNullOrNumeric: true
  // alphabeticString.isNullOrNumeric: false
  // alphaNumericString.isNullOrNumeric: false

  print('nullString.isNotNullOrNumeric: ${nullString.isNotNullOrNumeric}');
  print('emptyString.isNotNullOrNumeric: ${emptyString.isNotNullOrNumeric}');
  print('string.isNotNullOrNumeric: ${string.isNotNullOrNumeric}');
  print('numericString.isNotNullOrNumeric: ${numericString.isNotNullOrNumeric}');
  print('alphabeticString.isNotNullOrNumeric: ${alphabeticString.isNotNullOrNumeric}');
  print('alphaNumericString.isNotNullOrNumeric: ${alphaNumericString.isNotNullOrNumeric}\n\n');

  // nullString.isNotNullOrNumeric: false
  // emptyString.isNotNullOrNumeric: true
  // string.isNotNullOrNumeric: true
  // numericString.isNotNullOrNumeric: false
  // alphabeticString.isNotNullOrNumeric: true
  // alphaNumericString.isNotNullOrNumeric: true
}
