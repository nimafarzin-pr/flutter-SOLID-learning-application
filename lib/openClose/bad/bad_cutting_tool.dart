class BadCuttingTool {
  void cut(String type) {
    switch (type) {
      case '1':
        print('Cut with knife');
        break;
      case '2':
        print('Cut with scissors');
        break;
      default:
        print('Cut with knife');
    }
  }
}
