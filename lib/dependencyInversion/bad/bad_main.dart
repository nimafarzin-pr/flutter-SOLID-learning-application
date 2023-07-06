import 'package:solid_base_application/dependencyInversion/bad/user.dart';
import 'package:solid_base_application/dependencyInversion/bad/google_login_service.dart';

import 'login_repository.dart';

void main(List<String> args) {
  /// Problem occurred when we change Google login service to facebook login service then we most fix all the high level operation
  /// like GoogleLoginService and UserLoginService
  final GoogleLoginService operation = GoogleLoginService();
  final loginRepository = LoginRepository(operation);
  final User user = User(loginRepository);
  user.login();
}
