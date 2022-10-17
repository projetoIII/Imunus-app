import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/patient/patient.dart';

class PatientProvider extends ChangeNotifier {
  String? _id;
  String? _username;
  String? _email;
  String? _photo;

  String? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get photo => _photo;

  setPatient(Patient patient, {notify = true}) {
    _id = patient.id;
    _username = patient.name;
    _email = patient.email;
    _photo = patient.photo;

    if (notify) notifyListeners();
  }

  clear({notify = true}) {
    _username = null;
    _email = null;
    _photo = null;

    if (notify) notifyListeners();
  }

  updateUsername(String name, {notify = true}) {
    _username = name;
    if (notify) notifyListeners();
  }

  updateEmail(String email, {notify = true}) {
    _email = email;
    if (notify) notifyListeners();
  }

  updatePhoto(String photoUrl, {notify = true}) {
    _photo = photoUrl;
    if (notify) notifyListeners();
  }
}
