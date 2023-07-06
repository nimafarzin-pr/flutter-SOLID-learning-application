import 'package:flutter/material.dart';
import 'package:solid_base_application/dependencyInversion/dependency_inversion.dart';
import '../widgets/custom_button.dart';

import '../interfaceSegregation/interface_segregation.dart';
import '../liskovSubstitution/liskov_substitution.dart';
import '../openClose/open_close.dart';
import '../singleResponsibility/single_responsibility.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              text: 'Single responsibility Principle',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const SingleResponsibility(),
                  ),
                );
              },
            ),
            CustomButton(
              text: 'Open / Close Principle',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const OpenClose(),
                  ),
                );
              },
            ),
            CustomButton(
              text: 'Liskov Substitution Principle',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const LiskovSubstitution(),
                  ),
                );
              },
            ),
            CustomButton(
              text: 'Interface segregation Principle',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const InterfaceSegregationPrinciple(),
                  ),
                );
              },
            ),
            CustomButton(
              text: 'Dependency Inversion Principle',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const DependencyInversionPrinciple(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
