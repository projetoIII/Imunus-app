import 'package:flutter/material.dart';
import 'package:imunus/core/enums/symptom_type.dart';
import 'package:imunus/view/screens/flows/symptoms_flow.dart';

class SymptomsProvider extends ChangeNotifier {
  SymptomsFlow? _flow;

  String? _comment;

  SymptomType? _symptomType;

  bool? hasSelectedSymptom;
  bool dataHasBeenSent = false;

  SymptomsFlow? get flow => _flow ?? SymptomsFlow.selectSymptom;
  SymptomType? get symptom => _symptomType;
  String? get comment => _comment;

  void setFlow(SymptomsFlow value) {
    _flow = value;
    notifyListeners();
  }

  void setSymptom(SymptomType value, {notify = true}) {
    if (value != _symptomType) {
      _symptomType = value;

      if (hasSelectedSymptom != true) {
        hasSelectedSymptom = true;
      }

      if (notify) notifyListeners();
    }
  }

  void setComment(String value, {notify = true}) {
    _comment = value;
    if (notify) notifyListeners();
  }

  void clear({notify = true, backToSelectFlow = true}) {
    _comment = null;
    _symptomType = null;
    hasSelectedSymptom = false;

    if (notify) notifyListeners();
  }
}
