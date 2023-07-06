import 'package:flutter/material.dart';
import 'show.dart';

class ShowOptions {
  void show(
      {required Show option,
      required BuildContext context,
      required String text}) {
    option.show(context, text);
  }
}
