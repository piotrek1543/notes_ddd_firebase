import 'package:auto_route/auto_route_annotations.dart';
import 'package:notes/presentaton/sign_in/sign_in_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SignInPage signInPage;
}