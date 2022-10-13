import 'package:flutter/material.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/view/controllers/login_controller.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/navigation.dart';

class Logout extends StatelessWidget {
  Logout({Key? key}) : super(key: key);

  final _loginController = locator<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
        icon: const Icon(
          Icons.power_settings_new,
          color: AppColors.blue,
          size: 32,
        ),
        onPressed: () async => await _signoutDialog(context),
      ),
    );
  }

  Future<void> _signoutDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Tem certeza que você quer sair do aplicativo?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _cancelButton(context),
                        const SizedBox(width: 20),
                        _confirmSignoutButton(context),
                      ],
                    )
                  ],
                )),
          );
        });
  }

  _cancelButton(BuildContext context) => TextButton(
        onPressed: () => Navigation.back(context),
        child: const Text("Cancelar"),
      );

  _confirmSignoutButton(BuildContext context) => SizedBox(
        width: 100,
        child: TextButton(
          onPressed: () async {
            await _loginController.signOutWithGoogle(context);
          },
          child: const Text("Sair", style: TextStyle(color: Colors.white)),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.blue),
          ),
        ),
      );
}
