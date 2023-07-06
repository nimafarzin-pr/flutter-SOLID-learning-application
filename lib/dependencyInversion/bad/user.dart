import 'package:solid_base_application/dependencyInversion/bad/login_repository.dart';

class User {
  final LoginRepository repository;
  User(this.repository);
  login() {
    repository.login();
  }
}
