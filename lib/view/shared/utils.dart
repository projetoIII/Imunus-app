import 'package:flutter/material.dart';
import 'package:imunus/core/enums/emotion_type.dart';

class _EmotionAssets {
  String title, iconPath;

  _EmotionAssets({required this.title, required this.iconPath});
}

class Utils {
  static Size getScreenSizes(BuildContext context) =>
      MediaQuery.of(context).size;

  static String errorMessage(Object e) {
    var error = e as Exception;
    return error.toString();
  }

  static String getUserFirstName(String username) => username.split(" ")[0];

  static List<DateTime> getDateTimeInformedDayRange(DateTime dateTime) {
    var start = DateTime(dateTime.year, dateTime.month, dateTime.day);
    var end = DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);

    return [start, end];
  }

  static bool dateIsInRange(DateTime value, DateTime selectedDay) {
    var range = Utils.getDateTimeInformedDayRange(selectedDay);

    return value.isAfter(range[0]) && value.isBefore(range[1]);
  }

  static String formatDate(DateTime date) =>
      "${date.day}/${date.month}/${date.year}";

  static _EmotionAssets getEmotionAssets(EmotionType emotion) {
    switch (emotion) {
      case EmotionType.happy:
        return _EmotionAssets(
            title: "Feliz",
            iconPath: "assets/feelings/faces/icons8-happy-100 1.png");
      case EmotionType.sad:
        return _EmotionAssets(
            title: "Triste",
            iconPath: "assets/feelings/faces/icons8-sad-100 1.png");
      case EmotionType.confident:
        return _EmotionAssets(
            title: "Confiante",
            iconPath: "assets/feelings/faces/icons8-confident-96 1.png");
      case EmotionType.sensible:
        return _EmotionAssets(
            title: "Sensível",
            iconPath: "assets/feelings/faces/icons8-crying-64 1.png");
      case EmotionType.distracted:
        return _EmotionAssets(
            title: "Distraído",
            iconPath: "assets/feelings/faces/icons8-thinking-64 1.png");
      case EmotionType.focused:
        return _EmotionAssets(
            title: "Focado",
            iconPath:
                "assets/feelings/faces/icons8-leaning-against-wall-100 1.png");
      case EmotionType.relaxed:
        return _EmotionAssets(
            title: "Tranquilo",
            iconPath: "assets/feelings/faces/icons8-relax-100 1.png");
      case EmotionType.active:
        return _EmotionAssets(
            title: "Disposto",
            iconPath: "assets/feelings/faces/icons8-battle-ropes-100 1.png");
      case EmotionType.down:
        return _EmotionAssets(
            title: "Desanimado",
            iconPath: "assets/feelings/faces/icons8-disappointed-100 1.png");
      case EmotionType.sociable:
        return _EmotionAssets(
            title: "Sociável",
            iconPath: "assets/feelings/faces/icons8-friends-100 1.png");
      case EmotionType.keyedUp:
        return _EmotionAssets(
            title: "Tenso",
            iconPath:
                "assets/feelings/faces/icons8-grimacing-nervous-emoji-face-shared-on-internet-96 1.png");
      case EmotionType.nervous:
      default:
        return _EmotionAssets(
            title: "Nervoso",
            iconPath: "assets/feelings/faces/icons8-sad-58 1.png");
    }
  }
}
