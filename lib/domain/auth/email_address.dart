import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class EmailAddress {
  final String value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  EmailAddress copyWith({
    String value,
  }) {
    return EmailAddress(
      value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
    };
  }

  static EmailAddress fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return EmailAddress(
      map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  static EmailAddress fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'EmailAddress(value: $value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is EmailAddress &&
      o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

String validateEmailAddress(String input) {
  //FIXME: change this regexp pattern with more robust
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return input;
  } else {
    throw InvalidEmailException(failedValue: input);
  }
}

class InvalidEmailException implements Exception {
  final String failedValue;

  InvalidEmailException({@required this.failedValue});
}
