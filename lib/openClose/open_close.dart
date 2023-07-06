import 'package:flutter/material.dart';
import 'good/good_cutting_tool.dart';
import '../widgets/custom_button.dart';
import '../widgets/optionalShow/show_options.dart';

import 'good/scissors.dart';
import 'good/knife.dart';

class OpenClose extends StatelessWidget {
  const OpenClose({super.key});

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
              Image.asset('assets/open_closed.png'),
              const SizedBox(height: 10),
              const Text(
                  'A software module (it can be a class or method) should be open for extension but close for modification'),
              CustomButton(
                text: 'Apply Knife',
                onPressed: () {
                  final tool = GoodCuttingTool();
                  tool.cut(
                    Knife(
                      options: ShowOptions(),
                      context: context,
                    ),
                  );
                },
              ),
              CustomButton(
                text: 'Apply Scissors',
                onPressed: () {
                  final tool = GoodCuttingTool();
                  tool.cut(Scissors(
                    options: ShowOptions(),
                    context: context,
                  ));
                },
              ),
            ]),
      ),
    );
  }
}
