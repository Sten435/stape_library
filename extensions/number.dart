import 'object.dart';

extension numberExt on num? {
  ///isNegative: check if this is negative
  bool get isNegative {
    if (this.isNull) return false;
    if (this! < 0) return true;
    return false;
  }

  ///isPositive: Check if this is positive
  bool get isPositive {
    if (this.isNull) return false;
    if (this! > 0) return true;
    return false;
  }

  ///isZero: check if this is 0
  bool get isZero {
    if (this.isNull) return false;
    if (this! == 0) return true;
    return false;
  }

  ///isInRange: Check if this is in range
  bool isInRange(num min, num max) {
    if (this.isNull) return false;
    return this! >= min && this! <= max;
  }

  ///toCurrencyString place a currencySymbol next to the number
  String toCurrencyString({int decimalPlaces = 2, String currencySymbol = '\$'}) {
    if (this.isNull) return '';

    if (this is int) {
      return '${currencySymbol}${this.toString()}';
    }

    final doubleValue = this!.toDouble();
    final fixedValue = doubleValue.toStringAsFixed(decimalPlaces);
    return '${currencySymbol}${fixedValue}';
  }

  ///toBool: convert a string to bool (1 == true, 0 == false)
  bool get toBool {
    if (isNull) return false;
    if (this == 0) return false;
    if (this == 1) return true;
    return false;
  }
}
