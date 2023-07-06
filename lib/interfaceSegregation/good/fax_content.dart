import 'package:flutter/material.dart';

import '../../widgets/optionalShow/options/snackbar.dart';
import '../../widgets/optionalShow/show_options.dart';
import 'fax_content_task.dart';

class FaxContent implements FaxContentTask {
  final ShowOptions options;
  final BuildContext context;
  FaxContent({
    required this.options,
    required this.context,
  });
  @override
  fax() {
    options.show(
        option: SnackBarView(color: Colors.green),
        context: context,
        text: "Can do this");
  }
}
