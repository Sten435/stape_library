extension ObjectExt on Object? {
  ///isNull: Checks if the object is null.
  bool get isNull {
    return this == null;
  }

  ///isNotNull: Checks if the object is not null.
  bool get isNotNull {
    return !isNull;
  }

  ///isNullOrZero: Checks if the object is null or zero.
  bool get isNullOrZero {
    if (this is num) {
      return this == null || this == 0;
    }
    return this == null || this == '';
  }

  ///isNotNullOrZero: Checks if the object is not null and zero.
  bool get isNotNullOrZero {
    return !isNullOrZero;
  }

  ///isNullOrFalse: Checks if the object is null or false.
  bool get isNullOrFalse {
    if (this is bool) {
      return this == null || this == false;
    }
    return this == null || this == '';
  }

  ///isNotNullOrFalse: Checks if the object is not null and false.
  bool get isNotNullOrFalse {
    return !isNullOrFalse;
  }

  ///isNullOrTrue: Checks if the object is null or true.
  bool get isNullOrTrue {
    if (this is bool) {
      return this == null || this == true;
    }
    return this == null || this == '';
  }

  ///isNotNullOrTrue: Checks if the object is not null and true.
  bool get isNotNullOrTrue {
    return !isNullOrTrue;
  }

  ///isNullOrNegative: Checks if the object is null or negative.
  bool get isNullOrNegative {
    if (this is num) {
      return this == null || (this! as num) < 0;
    }
    return this == null || this == '';
  }

  ///isNotNullOrNegative: Checks if the object is not null and negative.
  bool get isNotNullOrNegative {
    return !isNullOrNegative;
  }

  ///isNullOrPositive: Checks if the object is null or positive.
  bool get isNullOrPositive {
    if (this is num) {
      return this == null || (this! as num) > 0;
    }
    return this == null || this == '';
  }

  ///isNotNullOrPositive: Checks if the object is not null and positive.
  bool get isNotNullOrPositive {
    return !isNullOrPositive;
  }

  ///isNullOrZeroOrNegative: Checks if the object is null, zero or negative.
  bool get isNullOrZeroOrNegative {
    if (this is num) {
      return this == null || (this! as num) <= 0;
    }
    return this == null || this == '';
  }

  ///isNotNullOrZeroOrNegative: Checks if the object is not null, not zero and not negative.
  bool get isNotNullOrZeroOrNegative {
    return !isNullOrZeroOrNegative;
  }

  ///asOrNull: Attempts to cast the object to a specified type, returning null if the cast fails.
  T? asOrNull<T>() {
    return this is T ? this as T : null;
  }

  bool instanceOf(Type type) {
    var runtimeType = this.runtimeType;
    return runtimeType == type;
  }

  ///instanceOfAny: Check if any of the types given are of the same (runtimeType) type as this
  bool instanceOfAny(List<Type> types) {
    var runtimeType = this.runtimeType;
    return types.any((type) => runtimeType == type);
  }

  ///isOfType: Checks if the object is of the specified (runtimeType) type.
  bool isOfType(Type type) {
    var runtimeType = this.runtimeType;
    return runtimeType == type;
  }

  ///isOfTypeAny: Checks if the object is of any of the specified (runtimeType) types.
  bool isOfTypeAny(List<Type> types) {
    var runtimeType = this.runtimeType;
    return types.any((type) => runtimeType == type);
  }

  ///isNotOfType: Checks if the object is not of the specified (runtimeType) type.
  bool isNotOfType(Type type) {
    var runtimeType = this.runtimeType;
    return runtimeType != type;
  }

  ///isNotOfTypeAny: Checks if the object is not of any of the specified (runtimeType) types.
  bool isNotOfTypeAny(List<Type> types) {
    var runtimeType = this.runtimeType;
    return types.any((type) => runtimeType != type);
  }

  ///log: Logs the object.
  void get log {
    if (this.isNull) print('null');
    print(this);
  }

  ///logIf: Logs the object if the condition is true.
  void logIf(bool condition) {
    if (condition) {
      log;
    }
  }
}
