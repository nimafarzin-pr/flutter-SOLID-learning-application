import 'print_tasks.dart';

class Duplex implements PrintTasks {
  @override
  printDuplexContent() {
    throw UnimplementedError();
  }

  /// we don't need below method and this is our problem
  @override
  faxContent() {
    // TODO: implement faxContent
    throw UnimplementedError();
  }

  @override
  photoCopyContent() {
    // TODO: implement photoCopyContent
    throw UnimplementedError();
  }

  @override
  printCount() {
    // TODO: implement printCount
    throw UnimplementedError();
  }

  @override
  scanContent() {
    // TODO: implement scanContent
    throw UnimplementedError();
  }
}
