class UserData {
  static UserData instance = UserData();

  String user = '';
  String password = '';

  Map<String, String> toJson() {
    Map<String, String> data = {'username': user, 'password': password};

    return data;
  }
}

class AuthData {
  static AuthData instance = AuthData();

  String uniqueId = '';
  String token = '';
  String user = '';
}
