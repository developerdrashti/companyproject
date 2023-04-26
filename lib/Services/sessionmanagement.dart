import 'dart:convert';
import 'package:dropikmed001/Model/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/login_model.dart';

class SessionManagement {
  SessionManagement() {
    intialization();
  }
  static String isLogin = "Login";
  static late SharedPreferences pref;

  static Future intialization() async {
    pref = await SharedPreferences.getInstance();
  }

  static bool? CheckLogin() {
    if (pref.getBool(isLogin) == null) {
      return false;
    }
    return pref.getBool(isLogin);
  }

  void CreateSession(LoginModel login) async {
    SaveModel('Driver', login);
  }

  void SaveModel(String key, LoginModel login) async {
    SharedPreferences prefrence = await SharedPreferences.getInstance();
    await prefrence.setString(key, json.encode(login));
  }

  Future<LoginModel> getModel(String? string) async {
    SharedPreferences prefrence = await SharedPreferences.getInstance();
    return LoginModel.fromJson(
        json.decode(prefrence.getString('Driver').toString()));
  }

  Future<Future<bool>> setlogin(String login) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setString("Login", login);
  }

  void DestroySessionparent() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('Driver');
  }
}
