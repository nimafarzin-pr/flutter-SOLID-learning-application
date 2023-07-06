import 'package:flutter/material.dart';
import '../../widgets/optionalShow/options/snackbar.dart';
import '../../widgets/optionalShow/show_options.dart';

import 'cutter.dart';

class Scissors implements Cutter {
  final BuildContext context;
  final ShowOptions options;

  Scissors({
    required this.options,
    required this.context,
  });

  @override
  cut() {
    options.show(
        option: SnackBarView(),
        context: context,
        text: 'Scissors is being used to cut');
  }
}
