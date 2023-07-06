import 'package:flutter/material.dart';
import '../../widgets/optionalShow/options/snackbar.dart';
import '../../widgets/optionalShow/show_options.dart';

import 'cutter.dart';

class Knife implements Cutter {
  final BuildContext context;
  final ShowOptions options;

  Knife({
    required this.options,
    required this.context,
  });

  @override
  cut() {
    ///just for show what action run
    options.show(
      option: SnackBarView(),
      context: context,
      text: 'Knife is being used to cut',
    );
  }
}
