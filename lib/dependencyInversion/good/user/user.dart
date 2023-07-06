import 'package:solid_base_application/dependencyInversion/good/user/user_repository.dart';

class User {
  final UserRepository repository;
  User(this.repository);
  add() {
    repository.add();
  }

  delete() {
    repository.delete();
  }
}
