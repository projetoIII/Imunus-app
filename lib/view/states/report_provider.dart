import 'package:flutter/material.dart';
import 'package:imunus/view/screens/flows/report_flows.dart';

class ReportProvider extends ChangeNotifier {
  ReportFlows? _flow;
  DateTime? _selectedDateTime;

  ReportFlows get flow => _flow ?? ReportFlows.selectMonth;
  DateTime? get dateTime => _selectedDateTime;
  int? get month => _selectedDateTime?.month;

  void setFlow(ReportFlows value, {notify = true}) {
    _flow = value;
    if (notify) notifyListeners();
  }

  void setDateTime(DateTime value, {notify = true}) {
    _selectedDateTime = value;
    if (notify) notifyListeners();
  }
}
