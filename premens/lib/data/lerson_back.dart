import 'package:http/http.dart' as http;
import 'dart:convert';

class LersonBack {
  static LersonBack instance = LersonBack();

  String link = 'https://9hegx3.deta.dev';

  Future<Map<String, dynamic>> auth(Map<String, String> data) async {
    Uri url = Uri.parse('$link/auth');
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    String body = jsonEncode(data);
    final res = await http.post(url, headers: headers, body: body);

    return res.statusCode == 200
        ? jsonDecode(utf8.decode(res.bodyBytes))
        : {'success': false, 'body': 'Ocorreu um erro no sistema.'};
  }

  Future<Map<String, dynamic>> register(Map<String, String> data) async {
    Uri url = Uri.parse('$link/register');
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    String body = jsonEncode(data);
    final res = await http.post(url, headers: headers, body: body);

    return res.statusCode == 200
        ? jsonDecode(utf8.decode(res.bodyBytes))
        : {'success': false, 'body': 'Ocorreu um erro no sistema.'};
  }
}
