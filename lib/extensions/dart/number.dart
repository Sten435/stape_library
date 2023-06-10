import 'object.dart';

extension NumberExt on num? {
  ///isNegative: check if this is negative
  bool get isNegative {
    if (isNull) return false;
    if (this! < 0) return true;
    return false;
  }

  ///isPositive: Check if this is positive
  bool get isPositive {
    if (isNull) return false;
    if (this! > 0) return true;
    return false;
  }

  ///isZero: check if this is 0
  bool get isZero {
    if (isNull) return false;
    if (this! == 0) return true;
    return false;
  }

  ///isInRange: Check if this is in range
  bool isInRange(num min, num max) {
    if (isNull) return false;
    return this! >= min && this! <= max;
  }

  ///toCurrencyString place a currencySymbol next to the number
  String toCurrencyString(
      {int decimalPlaces = 2, String currencySymbol = '\$'}) {
    if (isNull) return '';

    if (this is int) {
      return '$currencySymbol${toString()}';
    }

    final doubleValue = this!.toDouble();
    final fixedValue = doubleValue.toStringAsFixed(decimalPlaces);
    return '$currencySymbol$fixedValue';
  }

  ///toBool: convert a string to bool (1 == true, 0 == false)
  bool get toBool {
    if (isNull) return false;
    if (this == 0) return false;
    if (this == 1) return true;
    return false;
  }
}
