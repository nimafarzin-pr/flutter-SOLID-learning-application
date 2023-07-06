import 'package:flutter/material.dart';
import 'package:solid_base_application/dependencyInversion/good/login/facebook_login.dart';
import 'package:solid_base_application/dependencyInversion/good/login/google_login.dart';
import 'package:solid_base_application/dependencyInversion/good/login/login.dart';
import 'package:solid_base_application/dependencyInversion/good/login/login_repository_impl.dart';
import 'package:solid_base_application/dependencyInversion/good/user/firebase_storage.dart';
import 'package:solid_base_application/dependencyInversion/good/user/local_storage.dart';
import 'package:solid_base_application/dependencyInversion/good/user/user.dart';
import 'package:solid_base_application/dependencyInversion/good/user/user_repository_impl.dart';

import '../widgets/custom_button.dart';
import '../widgets/optionalShow/show_options.dart';

class DependencyInversionPrinciple extends StatelessWidget {
  const DependencyInversionPrinciple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const FittedBox(child: Text('Dependency Inversion Principle')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/dependency-inversion-Principle.png'),
              Image.asset('assets/dependency-inversion.png'),
              const SizedBox(height: 10),
              const Text(
                  'Dependency inversion principle states: Entities must depend on abstractions, not on concretions. It states that the high-level module must not depend on the low-level module, but they should depend on abstractions.'),

              /// Problem solved by add abstraction for Storage service and repository, we simply can change storage and repository
              /// this is power of interface inversion as we can see in below code
              /// we can change FirebaseStorage to LocalStorage(low level modules) without effecting on our high level modules
              CustomButton(
                text: 'Login with facebook',
                onPressed: () {
                  final operation =
                      FaceBookLogin(context: context, options: ShowOptions());
                  final loginRepository = LoginRepositoryImpl(operation);
                  final Login user = Login(loginRepository);
                  user.login();
                },
              ),
              CustomButton(
                text: 'Login with Google',
                onPressed: () {
                  final operation =
                      GoogleLogin(context: context, options: ShowOptions());
                  final loginRepository = LoginRepositoryImpl(operation);
                  final Login user = Login(loginRepository);
                  user.login();
                },
              ),
              CustomButton(
                text: 'Add to firebase database',
                onPressed: () {
                  final storage =
                      FirebaseStorage(context: context, options: ShowOptions());
                  final databaseRepository = UserRepositoryImpl(storage);
                  final User user = User(databaseRepository);
                  user.add();
                },
              ),
              CustomButton(
                text: 'Add to LocalStorage database',
                onPressed: () {
                  final storage =
                      LocalStorage(context: context, options: ShowOptions());
                  final databaseRepository = UserRepositoryImpl(storage);
                  final User user = User(databaseRepository);
                  user.add();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
