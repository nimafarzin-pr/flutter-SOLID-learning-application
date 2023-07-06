import 'print_tasks.dart';

class Fax implements PrintTasks {
  @override
  faxContent() {
    throw UnimplementedError();
  }

  /// we don't need below method and this is our problem
  @override
  photoCopyContent() {
    throw UnimplementedError();
  }

  @override
  printCount() {
    throw UnimplementedError();
  }

  @override
  printDuplexContent() {
    throw UnimplementedError();
  }

  @override
  scanContent() {
    throw UnimplementedError();
  }
}
