import 'package:solid_base_application/dependencyInversion/bad/google_login_service.dart';

class LoginRepository {
  final GoogleLoginService operation;

  LoginRepository(this.operation);

  login() {
    operation.login();
  }
}
