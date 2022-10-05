import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/patient.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/services/login_service.dart';
import 'package:imunus/view/shared/navigation.dart';
import 'package:imunus/view/states/patient_provider.dart';
import 'package:provider/provider.dart';

class LoginController {
  final _service = locator<LoginService>();

  Future<Patient?> signinWithGoogle(BuildContext context) async {
    try {
      var patient = await _service.signinWithGoogle();
      var provider = Provider.of<PatientProvider>(context, listen: false);

      if (patient != null) {
        provider.setPatient(patient);
        Navigation.goToAndPopCurrent(context, Path.home);
      }

      return patient;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> signOutWithGoogle(BuildContext context) async {
    var provider = Provider.of<PatientProvider>(context, listen: false);

    await _service.signoutGoogle().then((_) {
      Navigation.backTo(context, Path.login);
      provider.clear();
    });
  }
}
