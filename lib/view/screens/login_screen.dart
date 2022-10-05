import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/view/controllers/login_controller.dart';
import 'package:imunus/view/shared/utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _controller = locator<LoginController>();

  @override
  Widget build(BuildContext context) {
    var sizes = Utils.getScreenSizes(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          _topDetail(sizes.width),
          _form(context, sizes),
          _bottomDetail(sizes.width)
        ],
      ),
    );
  }

  Widget _logo() => SizedBox(
        width: 200,
        child: SvgPicture.asset('assets/logo.svg'),
      );

  Widget _form(BuildContext context, Size sizes) {
    return Positioned(
      bottom: sizes.height * 0.5 - 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          _loginOptions(context),
        ],
      ),
    );
  }

  Widget _loginOptions(BuildContext context) => Column(
        children: [
          SignInButton(
            Buttons.GoogleDark,
            onPressed: () async => await _controller.signinWithGoogle(context),
          ),
          SignInButton(Buttons.FacebookNew, onPressed: () {}),
        ],
      );

  Widget _topDetail(double width) => Positioned(
      top: 0,
      child: SvgPicture.asset(
        'assets/login/login-top.svg',
        width: width,
      ));

  Widget _bottomDetail(double width) => Positioned(
      bottom: 0,
      left: 0,
      child: SvgPicture.asset(
        'assets/login/login-bottom.svg',
        width: width * 0.3,
      ));
}
