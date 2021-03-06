import 'package:shared_preferences/shared_preferences.dart';

class TokenUtil {
  static Future<bool> isLogin() async {
    String token = "";
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = await prefs.getString('token');
    if (token == "" || token == null) {
      return false;
    }
    return true;
  }

  static Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = await prefs.getString('token');
    return token;
  }
}
