import 'package:flutter/material.dart';
import 'good/fax_content.dart';
import 'good/print_scan_content.dart';

import '../widgets/custom_button.dart';
import '../widgets/optionalShow/show_options.dart';

class InterfaceSegregationPrinciple extends StatelessWidget {
  const InterfaceSegregationPrinciple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const FittedBox(child: Text('Interface Segregation Principle')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/interface-segregation-2.png'),
                Image.asset('assets/interface-segregation.png'),
                const SizedBox(height: 10),
                const Text(
                    'Interface segregation principle (ISP) states: No code should be forced to depend on method it does not use. ISP splits interfaces that are very large into smaller and more specific ones so that clients will only have to know about the methods that are of interest to them. Such shrunken interfaces are also called role interfaces.ISP is intended to keep a system decoupled and thus easier to refactor, change, and redeploy.'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'If we use fax Content tool then we can not do print or scan ',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                CustomButton(
                  text: 'Fax',
                  onPressed: () {
                    final tool =
                        FaxContent(context: context, options: ShowOptions());
                    tool.fax();
                  },
                ),
                CustomButton(
                  text: 'Print',
                  onPressed: () {
                    final tool = PrintScanContent(
                        context: context, options: ShowOptions());
                    tool.printCount();
                  },
                ),
                CustomButton(
                  text: 'Scan',
                  onPressed: () {
                    final tool = PrintScanContent(
                        context: context, options: ShowOptions());
                    tool.scanContent();
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
