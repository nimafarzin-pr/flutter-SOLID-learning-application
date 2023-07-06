import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/optionalShow/show_options.dart';

import 'bad/car/car.dart';
import 'bad/airplane/airplane.dart';
import 'bad/bike/bike.dart';
import 'good/car/car.dart';
import 'good/airplane/airplane.dart';
import 'good/bike/bike.dart';

class LiskovSubstitution extends StatelessWidget {
  const LiskovSubstitution({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text('Liskov Substitution'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/Liskov-Substitution-Principle.jpg'),
              const SizedBox(height: 10),
              const Text(
                  'Liskov Substitution Principle (LSP) states: Objects of a superclass should be replaceable with objects of its subclasses without breaking the application. In other words, what we want is to have the objects of our subclasses behaving the same way as the objects of our superclass'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// bad
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'BAD',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text('Car'),
                      CustomButton(
                        text: 'Move',
                        onPressed: () {
                          final car =
                              BadCar(context: context, options: ShowOptions());
                          car.doMovement();
                        },
                      ),
                      CustomButton(
                        text: 'Engine',
                        onPressed: () {
                          final car =
                              BadCar(context: context, options: ShowOptions());
                          car.startEngine();
                        },
                      ),
                      CustomButton(
                        text: 'Fly',
                        onPressed: () {
                          final car =
                              BadCar(context: context, options: ShowOptions());
                          car.fly();
                        },
                      ),
                      const Text('Bike'),
                      CustomButton(
                        text: 'Move',
                        onPressed: () {
                          final bike =
                              BadBike(context: context, options: ShowOptions());
                          bike.doMovement();
                        },
                      ),
                      CustomButton(
                        text: 'Engine',
                        onPressed: () {
                          final bike =
                              BadBike(context: context, options: ShowOptions());
                          bike.startEngine();
                        },
                      ),
                      CustomButton(
                        text: 'Fly',
                        onPressed: () {
                          final bike =
                              BadBike(context: context, options: ShowOptions());
                          bike.fly();
                        },
                      ),
                      const Text('AirPlane'),
                      CustomButton(
                        text: 'Move',
                        onPressed: () {
                          final airPlane = BadAirPlane(
                              context: context, options: ShowOptions());
                          airPlane.doMovement();
                        },
                      ),
                      CustomButton(
                        text: 'Engine',
                        onPressed: () {
                          final airPlane = BadAirPlane(
                              context: context, options: ShowOptions());
                          airPlane.startEngine();
                        },
                      ),
                      CustomButton(
                        text: 'Fly',
                        onPressed: () {
                          final airPlane = BadAirPlane(
                              context: context, options: ShowOptions());
                          airPlane.fly();
                        },
                      ),
                    ],
                  ),

                  /// good
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'GOOD',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text('Car'),
                      CustomButton(
                        text: 'Move',
                        onPressed: () {
                          final car =
                              GoodCar(context: context, options: ShowOptions());
                          car.doMovement();
                        },
                      ),
                      CustomButton(
                        text: 'Engine',
                        onPressed: () {
                          final car =
                              GoodCar(context: context, options: ShowOptions());
                          car.startEngine();
                        },
                      ),
                      const Text('Bike'),
                      CustomButton(
                        text: 'Move',
                        onPressed: () {
                          final bike = GoodBike(
                              context: context, options: ShowOptions());
                          bike.doMovement();
                        },
                      ),
                      const Text('AirPlane'),
                      CustomButton(
                        text: 'Move',
                        onPressed: () {
                          final airPlane = GoodAirPlane(
                              context: context, options: ShowOptions());
                          airPlane.doMovement();
                        },
                      ),
                      CustomButton(
                        text: 'Engine',
                        onPressed: () {
                          final airPlane = GoodAirPlane(
                              context: context, options: ShowOptions());
                          airPlane.startEngine();
                        },
                      ),
                      CustomButton(
                        text: 'Fly',
                        onPressed: () {
                          final airPlane = GoodAirPlane(
                              context: context, options: ShowOptions());
                          airPlane.fly();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
