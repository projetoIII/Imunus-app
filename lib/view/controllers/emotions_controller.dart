import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/emotion/emotion.dart';
import 'package:imunus/domain/entities/emotion_report/emotion_report.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/services/emotion_service.dart';
import 'package:imunus/services/ml_service.dart';
import 'package:imunus/view/states/date_filter_provider.dart';
import 'package:imunus/view/states/emotion_provider.dart';
import 'package:imunus/view/states/patient_provider.dart';
import 'package:provider/provider.dart';

class EmotionsController {
  final EmotionService _service = locator<EmotionService>();
  // final SentimentalAnalysisService _analysisService =
  //     locator<SentimentalAnalysisService>();

  EmotionsProvider? _provider;
  PatientProvider? _patientProvider;
  DateFilterProvider? _dateFilterProvider;

  EmotionsProvider _getProvider(BuildContext context) {
    _provider ??= Provider.of<EmotionsProvider>(context, listen: false);
    return _provider!;
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

  Future<List<EmotionReport>> list(BuildContext context) async {
    var dateFilterProvider = _getDateProvider(context);

    var response = await _service.list(dateFilterProvider.selectedDate);

    return response;
  }

  Future<EmotionReport> postReport(BuildContext context) async {
    var provider = _getProvider(context);
    var patientProvider = _getPatientProvider(context);

    String? analysis;

    // if (provider.comment != null) {
    //   analysis = await _getSentimentalAnalysis(provider.comment!);
    // }

    var report = _createReportBody(
        patientProvider.id!, provider.emotions, provider.comment, analysis);

    var response = await _service.post(report);

    provider.cleanState();

    return response;
  }

  // Future<String> _getSentimentalAnalysis(String comment) async {
  //   var result = await _analysisService.getAnalysis(comment);

  //   String? sentimental;
  //   num maxValue = 0.0;

  //   for (var item in result.entries) {
  //     if (item.value > maxValue) {
  //       sentimental = item.key;
  //       maxValue = item.value;
  //     }
  //   }

  //   return sentimental!;
  // }

  EmotionReport _createReportBody(String userId, List<Emotion> emotions,
          String? comment, String? commentAnalysis) =>
      EmotionReport(
        userId: userId,
        emotions: emotions,
        comment: comment,
        commentAnalysis: commentAnalysis,
        createAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
