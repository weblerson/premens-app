import 'package:http/http.dart' as http;
import 'dart:convert';

class LersonBack {
  String link = 'https://9hegx3.deta.dev';

  Future<Map<String, String>> auth(Map<String, String> data) async {
    Uri url = Uri.parse('$link/auth');
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    String body = jsonEncode(data);
    final res = await http.post(url, headers: headers, body: body);

    return res.statusCode == 200 ? jsonDecode(res.body) : res.statusCode;
  }

  Future<Map<String, String>> register(Map<String, String> data) async {
    Uri url = Uri.parse('$link/register');
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    String body = jsonEncode(data);
    final res = await http.post(url, headers: headers, body: body);

    return res.statusCode == 200 ? jsonDecode(res.body) : res.statusCode;
  }
}
