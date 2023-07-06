import 'package:flutter/material.dart';
import '../engine.dart';
import '../fly.dart';
import '../vehicle.dart';

import '../../../widgets/optionalShow/options/snackbar.dart';
import '../../../widgets/optionalShow/show_options.dart';

class GoodAirPlane implements Vehicle, Engine, Fly {
  final ShowOptions options;
  final BuildContext context;
  GoodAirPlane({
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
  fly() {
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
