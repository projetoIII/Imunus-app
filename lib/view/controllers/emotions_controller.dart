import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/emotion.dart';
import 'package:imunus/domain/entities/emotion_report.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/services/emotion_service.dart';
import 'package:imunus/view/states/emotion_provider.dart';
import 'package:imunus/view/states/patient_provider.dart';
import 'package:provider/provider.dart';

class EmotionsController {
  final EmotionService _service = locator<EmotionService>();
  EmotionsProvider? _provider;
  PatientProvider? _patientProvider;

  EmotionsProvider _getProvider(BuildContext context) {
    _provider ??= Provider.of<EmotionsProvider>(context);
    return _provider!;
  }

  PatientProvider _getPatientProvider(BuildContext context) {
    _patientProvider ??= Provider.of<PatientProvider>(context);
    return _patientProvider!;
  }

  Future<EmotionReport> postReport(BuildContext context) async {
    var provider = _getProvider(context);
    var patientProvider = _getPatientProvider(context);

    var report = _createReportBody(
        patientProvider.id!, provider.emotions, provider.comment);

    var response = await _service.post(report);
    provider.cleanState();

    return response;
  }

  EmotionReport _createReportBody(
          String userId, List<Emotion> emotions, String? comment) =>
      EmotionReport(
        userId: userId,
        emotions: emotions,
        comment: comment,
        createAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
