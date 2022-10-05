import 'package:flutter/material.dart';

class NotImplementedScreen extends StatelessWidget {
  const NotImplementedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Em desenvolvimento...")),
      body: const Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
            "Esta tela ainda não está pronta! Aguarde as próximas versões. ;)"),
      )),
    );
  }
}
