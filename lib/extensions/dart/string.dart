import 'number.dart';
import 'object.dart';

extension StringExt on String? {
  ///isPalinDroom: checks if the string is a palindrome
  bool get isPalinDroom {
    return this == this?.split('').reversed.join('');
  }

  ///isNumeric: checks if the string is numeric
  bool get isNumeric {
    if (isNull) return false;
    final numeric = RegExp(r'^-?[0-9]+$');
    return numeric.hasMatch(this!);
  }

  ///isAlphabetic: checks if the string is alphabetic
  bool get isAlphabetic {
    if (isNull) return false;
    RegExp alphabetic = RegExp(r'^[a-zA-Z]+$');
    return alphabetic.hasMatch(this!);
  }

  ///isAlphaNumeric: checks if the string is alpha numeric
  bool get isAlphaNumeric {
    if (isNull) return false;
    RegExp alphaNumeric = RegExp(r'^[a-zA-Z0-9]+$');
    return alphaNumeric.hasMatch(this!);
  }

  ///isNullOrNumeric: checks if the string is null or numeric
  bool get isNullOrNumeric {
    return this == null || isNumeric;
  }

  ///isNotNullOrNumeric: checks if the string is not null or numeric
  bool get isNotNullOrNumeric {
    return !isNullOrNumeric;
  }

  ///isNullOrAlphabetic: checks if the string is null or alphabetic
  bool get isNullOrAlphabetic {
    return this == null || isAlphabetic;
  }

  ///isNotNullOrAlphabetic: checks if the string is not null or alphabetic
  bool get isNotNullOrAlphabetic {
    return !isNullOrAlphabetic;
  }

  ///isNullOrAlphaNumeric: checks if the string is null or alpha numeric
  bool get isNullOrAlphaNumeric {
    return this == null || isAlphaNumeric;
  }

  ///isNotNullOrAlphaNumeric: checks if the string is not null or alpha numeric
  bool get isNotNullOrAlphaNumeric {
    return !isNullOrAlphaNumeric;
  }

  ///isNullOrEmpty: checks if the string is null or empty
  bool get isNullOrEmpty {
    return this == null || this!.isEmpty;
  }

  ///isNotNullOrEmpty: checks if the string is not null or empty
  bool get isNotNullOrEmpty {
    return !isNullOrEmpty;
  }

  ///isNullOrWhiteSpace: checks if the string is null, empty, or whitespace
  bool get isNullOrWhiteSpace {
    return this == null || this!.trim().isEmpty;
  }

  ///isNotNullOrWhiteSpace: checks if the string is not null, empty, or whitespace
  bool get isNotNullOrWhiteSpace {
    return !isNullOrWhiteSpace;
  }

  ///isValidEmail([string regex]): checks if the string is a valid email address
  ///
  ///regex: optional parameter, if not specified, the default regex is used
  ///
  ///default regex: r'^[\w-]+(\.[\w-]+)*@[a-zA-Z\d-]+(\.[a-zA-Z\d-]+)*\.[a-zA-Z]{2,}$'
  bool isValidEmail({String? regex}) {
    if (regex.isNull) {
      regex = r'^[\w-]+(\.[\w-]+)*@[a-zA-Z\d-]+(\.[a-zA-Z\d-]+)*\.[a-zA-Z]{2,}$';
    }
    return isNull ? false : RegExp(regex!).hasMatch(this!);
  }

  ///toUpper: converts all characters to uppercase
  String get toUpper {
    return this?.toUpperCase() ?? "";
  }

  ///toLower: converts all characters to lowercase
  String get toLower {
    return this?.toLowerCase() ?? "";
  }

  ///toTitleCase: converts the first character of each word to uppercase
  String get trim {
    return this?.trim() ?? "";
  }

  ///trimStart: removes all leading whitespace from a string
  String get trimStart {
    return this?.trimLeft() ?? "";
  }

  ///trimEnd: removes all trailing whitespace from a string
  String get trimEnd {
    return this?.trimRight() ?? "";
  }

  ///trimAll: removes all spaces from a string
  String substring(int startIndex, [int? endIndex]) {
    return this?.substring(startIndex, endIndex) ?? "";
  }

  ///substringFromEnd: returns a substring from the end of the string
  String padLeft(int width, [String? paddingChar]) {
    return this?.padLeft(width, paddingChar ?? " ") ?? "";
  }

  ///padRight: pads the string on the right side if it is smaller than the specified width
  String padRight(int width, [String? paddingChar]) {
    return this?.padRight(width, paddingChar ?? " ") ?? "";
  }

  ///replace: replaces all occurrences of a substring
  String replace(String oldValue, String newValue) {
    return this?.replaceAll(oldValue, newValue) ?? "";
  }

  ///replaceFirst: replaces the first occurrence of a substring
  List<String> splitAndTrim(String delimiter) => this?.split(delimiter).map((str) => str.trim()).toList() ?? [];
  int countOccurrences(String subString) {
    if (isNull) return 0;
    return subString.allMatches(this!).length;
  }

  ///remove: removes all occurrences of a substring
  String removeAll(String subString) => this?.replace(subString, "") ?? "";

  ///removeSecond: removes the second occurrence of a substring
  String removeSecond(String subString) {
    if (isNull) return "";
    int index = this!.indexOf(subString);
    if (index == -1) return this!;
    return this!.substring(0, index) + this!.substring(index + subString.length);
  }

  ///removeLastNCharacters: removes the last n characters
  String removeLastNCharacters(int n) {
    if (isNull) return "";
    return this!.substring(0, this!.length - n);
  }

  ///removeFirstNCharacters: removes the first n characters
  String removeFirstNCharacters(int n) {
    if (isNull) return "";
    return this!.substring(n);
  }

  ///removeFirst: removes the first occurrence of a substring
  String removeFirst(String subString) => this?.replaceFirst(subString, "") ?? "";

  ///removeLast: removes the last occurrence of a substring
  String removeLast(String subString) => this?.replaceFirst(subString, "") ?? "";

  ///removeRange: removes all characters in the range
  String removeRange(int startIndex, int endIndex) => this?.replaceRange(startIndex, endIndex, "") ?? "";

  ///removeWhere: removes all characters that satisfy the test
  String removeWhere(bool Function(String element) test) => this?.replaceAllMapped(RegExp(r''), (Match match) => "") ?? "";

  ///removeExtraSpaces: removes extra spaces from a string
  String get removeEmptyLines => this?.replaceAll(RegExp(r'\n\s*\n'), '\n') ?? "";

  ///removeExtraSpaces: removes extra spaces from a string
  String get removeExtraSpaces => this?.replaceAll(RegExp(r' +'), ' ') ?? "";

  ///removeExtraNewLines: removes extra new lines from a string
  String get removeExtraNewLines => this?.replaceAll(RegExp(r'\n+'), '\n') ?? "";

  ///removeExtraTabs: removes extra tabs from a string
  String get removeExtraTabs => this?.replaceAll(RegExp(r'\t+'), '\t') ?? "";

  ///removeExtraReturns: removes extra returns from a string
  String get removeExtraReturns => this?.replaceAll(RegExp(r'\r+'), '\r') ?? "";

  ///removeUnCommonCharacters: removes common characters from a string
  String get removeUnCommonCharacters => this?.replaceAll(RegExp(r'[^a-zA-Z0-9\s]'), '') ?? "";

  ///removeExtraCharactersExcept: removes extra characters from a string except the ones specified
  String removeExtraCharactersExcept(String allowedCharacters) => this?.replaceAll(RegExp('[^$allowedCharacters]'), '') ?? "";

  ///removeExtraCharactersOnly: removes extra characters from a string
  String removeExtraCharactersOnly(String charactersToRemove) => this?.replaceAll(RegExp('[$charactersToRemove]'), '') ?? "";

  ///removeExtraCharactersFromStart: removes extra characters from the start of a string
  String removeExtraCharactersFromStart(String charactersToRemove) => this?.replaceFirst(RegExp('^[$charactersToRemove]+'), '') ?? "";

  ///removeExtraCharactersFromEnd: removes extra characters from the end of a string
  String removeExtraCharactersFromEnd(String charactersToRemove) => this?.replaceFirst(RegExp('[$charactersToRemove]+\$'), '') ?? "";

  ///toBool: convert a string to bool ('true' == true, 'false' == false, '1' == true, '0' == false)
  bool get toBool {
    if (isNull) return false;
    if (toLower == "true") return true;
    if (toLower == "false") return false;
    if (this is num) return (this as num).toBool;
    return false;
  }

  ///isEmptyTrim: Is this empty (trimmed)
  bool get isEmptyTrim {
    if (isNull) return false;
    return this!.trim().isEmpty;
  }

  ///isNotEmptyTrim: Is this not empty (trimmed)
  bool get isNotEmptyTrim {
    if (isNull) return false;
    return this!.trim().isNotEmpty;
  }

  ///prefixWith: Is this null or empty
  String prefixWith(String prefix) {
    return '$prefix $this';
  }

  ///reverse: reverses a string
  String get reverse {
    if (isNull) return "";
    return this!.split('').reversed.join('');
  }
}
