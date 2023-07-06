import 'package:flutter/material.dart';
import 'package:solid_base_application/dependencyInversion/good/user/database_service.dart';

import '../../../widgets/optionalShow/options/snackbar.dart';
import '../../../widgets/optionalShow/show_options.dart';

class LocalStorage implements DatabaseService {
  final ShowOptions options;
  final BuildContext context;
  LocalStorage({
    required this.options,
    required this.context,
  });

  @override
  add() {
    options.show(
        option: SnackBarView(),
        context: context,
        text: 'User added to local storage');
  }

  @override
  delete() {
    options.show(
        option: SnackBarView(),
        context: context,
        text: 'User deleted from local storage');
  }
}
