import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/domain/core/value_objects.dart';
import 'package:notes/domain/core/value_validators.dart';
import 'package:notes/domain/core/failures.dart';

@immutable
class EmailAddress extends ValueObject<String>{
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}
