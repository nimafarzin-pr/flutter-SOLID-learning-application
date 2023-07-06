import 'package:flutter/material.dart';
import 'print_scan_content_task.dart';

import '../../widgets/optionalShow/options/snackbar.dart';
import '../../widgets/optionalShow/show_options.dart';

class PrintScanContent implements PrintScanContentTask {
  final ShowOptions options;
  final BuildContext context;
  PrintScanContent({
    required this.options,
    required this.context,
  });

  @override
  photoCopyContent() {
    // TODO: implement photoCopyContent
    throw UnimplementedError();
  }

  @override
  printCount() {
    options.show(
        option: SnackBarView(color: Colors.red),
        context: context,
        text: "Can't do this");
  }

  @override
  scanContent() {
    options.show(
        option: SnackBarView(color: Colors.red),
        context: context,
        text: "Can't do this");
  }
}
