class RegisterData {
  static RegisterData instance = RegisterData();

  String user = '';
  String password = '';

  void clear() {
    user = '';
    password = '';
  }
}
