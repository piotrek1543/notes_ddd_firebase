import 'package:flutter/foundation.dart';
import 'package:notes/domain/auth/value_objects.dart';

//TODO: Create FirebaseAuth and GoogleSignIn implementation
abstract class IAuthFacade {
  Future<void> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  
  Future<void> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  
  Future<void> signInWithGoogle();
}