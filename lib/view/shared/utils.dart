import 'package:flutter/material.dart';

class Utils {
  static Size getScreenSizes(BuildContext context) =>
      MediaQuery.of(context).size;

  static String errorMessage(Object e) {
    var error = e as Exception;
    return error.toString();
  }

  static String getUserFirstName(String username) => username.split(" ")[0];
}
