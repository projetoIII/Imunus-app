import 'package:flutter/material.dart';
import 'package:imunus/core/enums/symptom_type.dart';
import 'package:imunus/domain/entities/symptom.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/services/symptom_service.dart';
import 'package:imunus/view/states/date_filter_provider.dart';
import 'package:imunus/view/states/patient_provider.dart';
import 'package:imunus/view/states/rating_provider.dart';
import 'package:imunus/view/states/symptoms_provider.dart';
import 'package:provider/provider.dart';

class SymptomController {
  final _service = locator<SymptomService>();

  SymptomsProvider? _symptomsProvider;
  PatientProvider? _patientProvider;
  DateFilterProvider? _dateFilterProvider;
  RatingProvider? _ratingProvider;

  SymptomsProvider _getSymptomProvider(BuildContext context) {
    _symptomsProvider ??= Provider.of<SymptomsProvider>(context, listen: false);
    return _symptomsProvider!;
  }

  PatientProvider _getPatientProvider(BuildContext context) {
    _patientProvider ??= Provider.of<PatientProvider>(context, listen: false);
    return _patientProvider!;
  }

  DateFilterProvider _getDateProvider(BuildContext context) {
    _dateFilterProvider ??=
        Provider.of<DateFilterProvider>(context, listen: false);
    return _dateFilterProvider!;
  }

  RatingProvider _getRatingProvider(BuildContext context) {
    _ratingProvider ??= Provider.of<RatingProvider>(context, listen: false);
    return _ratingProvider!;
  }

  Future<List<Symptom>> list(BuildContext context) async {
    var dateFilterProvider = _getDateProvider(context);

    var response = await _service.list(dateFilterProvider.selectedDate);

    return response;
  }

  Future<Symptom> post(BuildContext context) async {
    var symptomProvider = _getSymptomProvider(context);
    var patientProvider = _getPatientProvider(context);
    var dateProvider = _getDateProvider(context);
    var ratingProvider = _getRatingProvider(context);

    var symptomBody = _createBody(
      patientProvider.id!,
      symptomProvider.symptom!,
      ratingProvider.rating,
      dateProvider.selectedDate,
      symptomProvider.comment,
    );

    var response = await _service.post(symptomBody);
    symptomProvider.clear(notify: false, backToSelectFlow: false);

    return response;
  }

  Symptom _createBody(String userId, SymptomType symptomType, num rating,
          DateTime reportedAt, String? comment) =>
      Symptom(
        userId: userId,
        symptomType: symptomType,
        rating: rating,
        comment: comment,
        reportedAt: reportedAt,
        createAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
