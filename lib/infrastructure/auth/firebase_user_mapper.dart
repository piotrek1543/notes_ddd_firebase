import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes/domain/auth/user.dart';
import 'package:notes/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
