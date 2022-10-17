import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:imunus/core/shared/strings.dart';
import 'package:imunus/domain/entities/patient/patient.dart';
import 'package:imunus/domain/exceptions/login_exception.dart';
import 'package:imunus/services/interfaces/ilogin_service.dart';
import 'package:imunus/view/shared/utils.dart';

class LoginService implements ILoginService {
  final _GoogleSigninService _google = _GoogleSigninService();

  @override
  Future<Patient> signinWithFacebook() async {
    // TODO: implement signinWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Patient?> signinWithGoogle() async {
    try {
      return await _google.signIn();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  signoutFacebook() {
    // TODO: implement signoutFacebook
    throw UnimplementedError();
  }

  @override
  Future<void> signoutGoogle() async {
    try {
      await _google.signOut();
    } catch (e) {
      throw Error();
    }
  }
}

class _GoogleSigninService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
      // Optional clientId
      // clientId: '479882132969-9i9aqik3jfjd7qhci1nqf0bm2g71rm1u.apps.googleusercontent.com',
      scopes: const <String>[
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ]);

  Future<Patient?> signIn() async {
    try {
      var googleAccount = await _googleSignIn.signIn();

      if (googleAccount == null) {
        throw LoginException(message: Strings.noUserFound);
      }

      var patient = Patient(
        id: googleAccount.id,
        name: googleAccount.displayName!,
        email: googleAccount.email,
        photo: googleAccount.photoUrl,
      );

      return patient;
    } catch (e) {
      throw LoginException(message: Utils.errorMessage(e));
    }
  }

  signOut() async {
    await _googleSignIn.disconnect();
  }
}
