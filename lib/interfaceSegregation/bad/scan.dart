import 'print_tasks.dart';

class Scan implements PrintTasks {
  @override
  photoCopyContent() {
    throw UnimplementedError();
  }

  @override
  printCount() {
    throw UnimplementedError();
  }

  @override
  scanContent() {
    throw UnimplementedError();
  }

  /// we don't need below method and this is our problem
  @override
  faxContent() {
    throw UnimplementedError();
  }

  @override
  printDuplexContent() {
    throw UnimplementedError();
  }
}
