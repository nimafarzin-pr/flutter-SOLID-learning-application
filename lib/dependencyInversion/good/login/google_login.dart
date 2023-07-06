import 'package:flutter/material.dart';
import 'package:solid_base_application/dependencyInversion/good/login/login_service.dart';

import '../../../widgets/optionalShow/options/snackbar.dart';
import '../../../widgets/optionalShow/show_options.dart';

class GoogleLogin implements LoginService {
  final ShowOptions options;
  final BuildContext context;
  GoogleLogin({
    required this.options,
    required this.context,
  });

  @override
  login() {
    options.show(
        option: SnackBarView(),
        context: context,
        text: 'Login with google login service');
  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
