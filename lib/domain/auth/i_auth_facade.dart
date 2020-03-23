import 'package:flutter/foundation.dart';
import 'package:dartz/dartz.dart';
import 'package:notes/domain/auth/value_objects.dart';
import 'package:notes/domain/auth/auth_failure.dart';

//TODO: Create FirebaseAuth and GoogleSignIn implementation
abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}