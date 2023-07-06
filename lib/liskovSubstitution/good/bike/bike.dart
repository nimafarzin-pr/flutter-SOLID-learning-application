import 'package:flutter/material.dart';
import '../vehicle.dart';

import '../../../widgets/optionalShow/options/snackbar.dart';
import '../../../widgets/optionalShow/show_options.dart';

class GoodBike implements Vehicle {
  final ShowOptions options;
  final BuildContext context;
  GoodBike({
    required this.options,
    required this.context,
  });

  // true
  @override
  doMovement() {
    options.show(
        option: SnackBarView(), context: context, text: 'Can Have this');
  }
}
