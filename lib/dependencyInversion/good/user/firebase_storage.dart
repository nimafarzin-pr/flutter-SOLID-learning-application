import 'package:flutter/material.dart';
import 'package:solid_base_application/dependencyInversion/good/user/database_service.dart';
import 'package:solid_base_application/widgets/optionalShow/options/snackbar.dart';

import '../../../widgets/optionalShow/show_options.dart';

class FirebaseStorage implements DatabaseService {
  final ShowOptions options;
  final BuildContext context;
  FirebaseStorage({
    required this.options,
    required this.context,
  });

  @override
  add() {
    options.show(
        option: SnackBarView(),
        context: context,
        text: 'User added to firebase storage');
  }

  @override
  delete() {
    options.show(
        option: SnackBarView(),
        context: context,
        text: 'User deleted from firebase');
  }
}
