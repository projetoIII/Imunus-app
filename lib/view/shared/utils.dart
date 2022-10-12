import 'package:flutter/material.dart';
import 'package:imunus/core/enums/emotion_type.dart';
import 'package:imunus/core/enums/symptom_type.dart';

class _Assets {
  String title, iconPath;
  _Assets({required this.title, required this.iconPath});
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

  static _Assets getSymptomAssets(SymptomType symptom) {
    switch (symptom) {
      case SymptomType.visionProblem:
        return _Assets(
            title: "Problema de visão",
            iconPath: "assets/symptoms/icons/icons8-eyelashes-3d-90 1.png");
      case SymptomType.muscleWeakness:
        return _Assets(
            title: "Fraqueza muscular",
            iconPath: "assets/symptoms/icons/icons8-watch-your-step-100 1.png");
      case SymptomType.confusion:
        return _Assets(
            title: "Confusão",
            iconPath: "assets/symptoms/icons/icons8-confused-100 1.png");

      case SymptomType.speakProblem:
        return _Assets(
            title: "Problema de fala",
            iconPath: "assets/symptoms/icons/icons8-voice-100 1.png");

      case SymptomType.muscleTremor:
        return _Assets(
            title: "Tremor muscular",
            iconPath: "assets/symptoms/icons/icons8-shaking-100 1.png");

      case SymptomType.other:
      default:
        return _Assets(
            title: "Outro",
            iconPath: "assets/symptoms/icons/icons8-plus-100 1.png");
    }
  }

  static _Assets getEmotionAssets(EmotionType emotion) {
    switch (emotion) {
      case EmotionType.happy:
        return _Assets(
            title: "Feliz",
            iconPath: "assets/feelings/faces/icons8-happy-100 1.png");
      case EmotionType.sad:
        return _Assets(
            title: "Triste",
            iconPath: "assets/feelings/faces/icons8-sad-100 1.png");
      case EmotionType.confident:
        return _Assets(
            title: "Confiante",
            iconPath: "assets/feelings/faces/icons8-confident-96 1.png");
      case EmotionType.sensible:
        return _Assets(
            title: "Sensível",
            iconPath: "assets/feelings/faces/icons8-crying-64 1.png");
      case EmotionType.distracted:
        return _Assets(
            title: "Distraído",
            iconPath: "assets/feelings/faces/icons8-thinking-64 1.png");
      case EmotionType.focused:
        return _Assets(
            title: "Focado",
            iconPath:
                "assets/feelings/faces/icons8-leaning-against-wall-100 1.png");
      case EmotionType.relaxed:
        return _Assets(
            title: "Tranquilo",
            iconPath: "assets/feelings/faces/icons8-relax-100 1.png");
      case EmotionType.active:
        return _Assets(
            title: "Disposto",
            iconPath: "assets/feelings/faces/icons8-battle-ropes-100 1.png");
      case EmotionType.down:
        return _Assets(
            title: "Desanimado",
            iconPath: "assets/feelings/faces/icons8-disappointed-100 1.png");
      case EmotionType.sociable:
        return _Assets(
            title: "Sociável",
            iconPath: "assets/feelings/faces/icons8-friends-100 1.png");
      case EmotionType.keyedUp:
        return _Assets(
            title: "Tenso",
            iconPath:
                "assets/feelings/faces/icons8-grimacing-nervous-emoji-face-shared-on-internet-96 1.png");
      case EmotionType.nervous:
      default:
        return _Assets(
            title: "Nervoso",
            iconPath: "assets/feelings/faces/icons8-sad-58 1.png");
    }
  }
}
