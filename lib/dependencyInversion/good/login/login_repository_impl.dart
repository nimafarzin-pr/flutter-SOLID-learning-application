import 'package:solid_base_application/dependencyInversion/good/login/login_repository.dart';

import 'login_service.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginService service;
  LoginRepositoryImpl(this.service);

  @override
  login() {
    service.login();
  }

  @override
  signUp() {
    service.signUp();
  }
}
