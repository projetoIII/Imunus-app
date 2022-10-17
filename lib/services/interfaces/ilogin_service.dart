import 'package:imunus/domain/entities/patient/patient.dart';

abstract class ILoginService {
  Future<Patient?> signinWithGoogle();
  Future<void> signoutGoogle();

  Future<Patient> signinWithFacebook();
  Future<void> signoutFacebook();
}
