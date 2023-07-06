import 'package:flutter/material.dart';

import '../../widgets/optionalShow/options/modal.dart';
import '../../widgets/optionalShow/show_options.dart';

class GoodWrench {
  final BuildContext context;
  final ShowOptions showOptions;
  GoodWrench({
    required this.context,
    required this.showOptions,
  });
  void wrenchAction() {
    showOptions.show(option: Modal(), context: context, text: 'Wrench Action');
  }
}
