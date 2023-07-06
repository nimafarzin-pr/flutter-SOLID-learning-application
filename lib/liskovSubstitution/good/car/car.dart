import 'package:flutter/material.dart';
import '../vehicle.dart';
import '../engine.dart';

import '../../../widgets/optionalShow/options/snackbar.dart';
import '../../../widgets/optionalShow/show_options.dart';

class GoodCar implements Vehicle, Engine {
  final ShowOptions options;
  final BuildContext context;
  GoodCar({
    required this.options,
    required this.context,
  });

  // true
  @override
  doMovement() {
    options.show(
        option: SnackBarView(), context: context, text: 'Can Have this');
  }

  // true
  @override
  startEngine() {
    options.show(
        option: SnackBarView(), context: context, text: 'Can Have this');
  }
}
