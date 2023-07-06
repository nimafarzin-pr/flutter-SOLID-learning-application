import 'package:solid_base_application/dependencyInversion/good/login/login_repository.dart';

class Login {
  final LoginRepository loginRepository;
  Login(this.loginRepository);

  login() {
    loginRepository.login();
  }

  signUp() {
    loginRepository.signUp();
  }
}
