import 'package:flutter/material.dart';
import 'package:imunus/view/screens/home_screen.dart';
import 'package:imunus/view/screens/login_screen.dart';

class Path {
  static const login = '/login';
  static const home = '/home';
}

final routes = {
  Path.login: (context) => LoginScreen(),
  Path.home: (context) => HomeScreen(),
};

class Navigation {
  // Método para ir para uma nova tela
  static to(BuildContext context, String path) =>
      Navigator.pushNamed(context, path);

  // Método para ir à próxima tela e remover a tela atual da árvore de widgets.
  static goToAndPopCurrent(BuildContext context, String path) =>
      Navigator.popAndPushNamed(context, path);

  // Método para voltar para uma tela anterior
  static back(BuildContext context) => Navigator.pop(context);

  static backTo(BuildContext context, String path) {
    Navigator.popUntil(context, ModalRoute.withName(path));
    Navigator.pushNamed(context, path);
  }
}
