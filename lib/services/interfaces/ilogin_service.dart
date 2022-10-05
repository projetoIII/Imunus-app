import 'package:imunus/domain/entities/patient.dart';

abstract class ILoginService {
  Future<Patient?> signinWithGoogle();
  Future<void> signoutGoogle();

  Future<Patient> signinWithFacebook();
  Future<void> signoutFacebook();
}
