class RegisterData {
  static RegisterData instance = RegisterData();

  String user = '';
  String password = '';

  void clear() {
    user = '';
    password = '';
  }

  Map<String, String> toJson() {
    Map<String, String> data = {'username': user, 'password': password};

    return data;
  }
}
