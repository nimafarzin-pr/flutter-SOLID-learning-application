import 'package:flutter/material.dart';
import 'bad/attacker.dart';
import 'good/good_attacker.dart';
import '../widgets/custom_button.dart';
import '../widgets/optionalShow/show_options.dart';

class SingleResponsibility extends StatelessWidget {
  const SingleResponsibility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text('Open / Close Principle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/single-responsibility-principle.png'),
              const SizedBox(height: 10),
              const Text(
                  'Single-responsibility Principle (SRP) states:  class should have one and only one reason to change, meaning that a class should have only one job.'),
              CustomButton(
                text: 'Good Wrench',
                onPressed: () {
                  final tool =
                      GoodWrench(context: context, showOptions: ShowOptions());
                  tool.wrenchAction();
                },
              ),
              CustomButton(
                text: 'Bad Wrench',
                onPressed: () {
                  final tool =
                      BadWrench(context: context, showOptions: ShowOptions());
                  tool.wrenchAction();
                  tool.hammerAction();
                },
              ),
            ]),
      ),
    );
  }
}
