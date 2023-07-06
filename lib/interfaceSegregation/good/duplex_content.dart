import 'package:flutter/material.dart';
import 'duplex_content_task.dart';

import '../../widgets/optionalShow/options/snackbar.dart';
import '../../widgets/optionalShow/show_options.dart';

class DuplexContent implements DuplexContentTask {
  final ShowOptions options;
  final BuildContext context;
  DuplexContent({
    required this.options,
    required this.context,
  });
  @override
  printDuplexContent() {
    options.show(
        option: SnackBarView(color: Colors.red),
        context: context,
        text: "Can't do this");
  }
}
