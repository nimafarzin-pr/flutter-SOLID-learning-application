// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:solid_base_application/widgets/optionalShow/options/modal.dart';
import 'package:solid_base_application/widgets/optionalShow/show_options.dart';

import '../../widgets/optionalShow/options/snackbar.dart';

class BadWrench {
  final BuildContext context;
  final ShowOptions showOptions;
  BadWrench({
    required this.context,
    required this.showOptions,
  });
  void wrenchAction() {
    showOptions.show(option: Modal(), context: context, text: 'Wrench Action');
  }

  void hammerAction() {
    showOptions.show(
        option: SnackBarView(), context: context, text: 'Hammer Action');
  }
}
