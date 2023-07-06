import 'package:flutter/material.dart';
import '../vehicle.dart';

import '../../../widgets/optionalShow/options/snackbar.dart';
import '../../../widgets/optionalShow/show_options.dart';

class BadCar extends Vehicle {
  final ShowOptions options;
  final BuildContext context;
  BadCar({
    required this.options,
    required this.context,
  });
  // true
  @override
  doMovement() {
    options.show(
        option: SnackBarView(), context: context, text: 'Can Have this');
  }

  // false car do not behave like this
  @override
  fly() {
    options.show(
        option: SnackBarView(color: Colors.red),
        context: context,
        text: "Can't Have this");
  }

  // true
  @override
  startEngine() {
    options.show(
        option: SnackBarView(), context: context, text: "Can Have this");
  }
}
