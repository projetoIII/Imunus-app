import 'package:flutter/material.dart';

class RatingProvider extends ChangeNotifier {
  num? _rating;

  num get rating => _rating ?? 3;

  void setRating(num value, {notify = true}) {
    _rating = value;
    if (notify) notifyListeners();
  }
}
