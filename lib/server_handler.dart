import 'package:http/http.dart' as http;
import 'package:signup_test/models/login.dart';

class ServerHandler {
  Future<bool> checkLogin(String username, String password) async {
    var url = Uri.parse('http://172.16.0.194/login_api/api/login.php');

    var response = await http
        .post(url, body: {'username': username, 'password': password});

    Login login = loginFromJson(response.body);

    if (login.success == 1) {
      return true;
    } else {
      return false;
    }
  }
}
