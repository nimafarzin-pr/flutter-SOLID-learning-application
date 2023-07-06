import 'package:solid_base_application/dependencyInversion/good/user/database_service.dart';
import 'package:solid_base_application/dependencyInversion/good/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final DatabaseService service;
  UserRepositoryImpl(this.service);
  @override
  add() {
    service.add();
  }

  @override
  delete() {
    service.delete();
  }
}
