// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:solid_base_application/widgets/optionalShow/show.dart';

class SnackBarView implements Show {
  final Color? color;
  SnackBarView({this.color});
  @override
  show(BuildContext context, String text) {
    final snackBar = SnackBar(
      backgroundColor: color ?? Colors.indigoAccent,
      duration: const Duration(seconds: 1),
      content: Text(text),
      action: SnackBarAction(
        label: '',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
