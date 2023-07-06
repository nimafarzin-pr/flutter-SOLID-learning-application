// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:solid_base_application/liskovSubstitution/bad/vehicle.dart';
import 'package:solid_base_application/widgets/optionalShow/options/snackbar.dart';
import 'package:solid_base_application/widgets/optionalShow/show_options.dart';

class BadAirPlane extends Vehicle {
  final ShowOptions options;
  final BuildContext context;
  BadAirPlane({
    required this.options,
    required this.context,
  });

  // true
  @override
  doMovement() {
    options.show(
        option: SnackBarView(), context: context, text: 'Can Have this');
  }

  // true
  @override
  fly() {
    options.show(
        option: SnackBarView(), context: context, text: 'Can Have this');
  }

  // true
  @override
  startEngine() {
    options.show(
        option: SnackBarView(), context: context, text: 'Can Have this');
  }
}
