import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/report/report.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/services/emotion_service.dart';
import 'package:imunus/services/symptom_service.dart';
import 'package:imunus/view/states/report_provider.dart';
import 'package:provider/provider.dart';

class ReportController {
  ReportProvider? _provider;
  final _emotionsService = locator<EmotionService>();
  final _symptomService = locator<SymptomService>();

  ReportProvider _getProvider(BuildContext context) {
    _provider ??= Provider.of<ReportProvider>(context, listen: false);
    return _provider!;
  }

  Future<List<Report>> getEmotionsReport(BuildContext context) async {
    var provider = _getProvider(context);

    var reports = await _emotionsService.report(provider.dateTime!);

    return reports;
  }

  Future<List<Report>> getSymptomsReport(BuildContext context) async {
    var provider = _getProvider(context);

    var reports = await _symptomService.report(provider.dateTime!);

    return reports;
  }
}
