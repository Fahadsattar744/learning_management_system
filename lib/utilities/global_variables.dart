import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void setUserLoggedIn(bool key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("isLoggedIn", key);
}

Future getUserLoggedIn() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var log = prefs.getBool("isLoggedIn") ?? false;
  return log;
}

void saveUserDataToken({@required token}) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.setString("token", token);
}

Future getUserDataToken() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  String? result = pref.getString("token");
  return result;
}

final DEVICE_LOCALE = ValueNotifier("");
final LANG_CODE = ValueNotifier("en");
