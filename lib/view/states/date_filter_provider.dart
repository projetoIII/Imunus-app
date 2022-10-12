import 'package:flutter/material.dart';

class DateFilterProvider extends ChangeNotifier {
  DateTime? _selectedDate;

  DateTime get selectedDate => _selectedDate ?? DateTime.now();

  void set(DateTime? dateTime, {notify = true}) {
    if (dateTime != null) {
      _selectedDate = dateTime;

      if (notify) notifyListeners();
    }
  }
}
