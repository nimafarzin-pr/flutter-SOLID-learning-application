import 'package:flutter/material.dart';
import '../vehicle.dart';

import '../../../widgets/optionalShow/options/snackbar.dart';
import '../../../widgets/optionalShow/show_options.dart';

class BadBike extends Vehicle {
  final ShowOptions options;
  final BuildContext context;
  BadBike({
    required this.options,
    required this.context,
  });
  // true
  @override
  doMovement() {
    options.show(
        option: SnackBarView(), context: context, text: 'Can Have this');
  }

  // bike do not behave like this
  @override
  fly() {
    options.show(
        option: SnackBarView(color: Colors.red),
        context: context,
        text: "Can't Have this");
  }

  // bike don't have engine
  @override
  startEngine() {
    options.show(
        option: SnackBarView(color: Colors.red),
        context: context,
        text: "Can't Have this");
  }
}
