import 'package:flutter/material.dart';
import 'package:imunus/core/enums/emotion_type.dart';
import 'package:imunus/domain/entities/emotion/emotion.dart';
import 'package:imunus/view/screens/flows/emotion_flows.dart';

class EmotionsProvider extends ChangeNotifier {
  EmotionFlow? _flow;

  String? _comment;

  final List<Emotion> _emotions = [];

  bool? hasSelectedEmotion;
  bool dataHasBeenSent = false;

  // Emotion controllers
  bool? _happy,
      _sad,
      _confident,
      _sensible,
      _distracted,
      _focused,
      _relaxed,
      _active,
      _down,
      _sociable,
      _keyedUp,
      _nervous;

  EmotionFlow get flow => _flow ?? EmotionFlow.selectEmotions;

  List<Emotion> get emotions => _emotions;

  String? get comment => _comment;

  setEmotionFlow(EmotionFlow newFlow) {
    _flow = newFlow;
    notifyListeners();
  }

  bool getEmotionState(EmotionType emotion) {
    switch (emotion) {
      case EmotionType.happy:
        return _happy ?? false;
      case EmotionType.sad:
        return _sad ?? false;
      case EmotionType.confident:
        return _confident ?? false;
      case EmotionType.sensible:
        return _sensible ?? false;
      case EmotionType.distracted:
        return _distracted ?? false;
      case EmotionType.focused:
        return _focused ?? false;
      case EmotionType.relaxed:
        return _relaxed ?? false;
      case EmotionType.active:
        return _active ?? false;
      case EmotionType.down:
        return _down ?? false;
      case EmotionType.sociable:
        return _sociable ?? false;
      case EmotionType.keyedUp:
        return _keyedUp ?? false;
      case EmotionType.nervous:
        return _nervous ?? false;
      default:
        return false;
    }
  }

  void setEmotion(EmotionType emotion, {value = true, notify = true}) {
    switch (emotion) {
      case EmotionType.happy:
        _happy = value;
        break;
      case EmotionType.sad:
        _sad = value;
        break;
      case EmotionType.confident:
        _confident = value;
        break;
      case EmotionType.sensible:
        _sensible = value;
        break;
      case EmotionType.distracted:
        _distracted = value;
        break;
      case EmotionType.focused:
        _focused = value;
        break;
      case EmotionType.relaxed:
        _relaxed = value;
        break;
      case EmotionType.active:
        _active = value;
        break;
      case EmotionType.down:
        _down = value;
        break;
      case EmotionType.sociable:
        _sociable = value;
        break;
      case EmotionType.keyedUp:
        _keyedUp = value;
        break;
      case EmotionType.nervous:
        _nervous = value;
        break;
      default:
        break;
    }

    if (hasSelectedEmotion != true) {
      hasSelectedEmotion = true;
    }

    _emotions.add(Emotion(emotion: emotion, reportedAt: DateTime.now()));

    notifyListeners();
  }

  void setComment(String value, {notify = true}) {
    _comment = value;
    if (notify) notifyListeners();
  }

  void cleanState({notify = false}) {
    if (hasSelectedEmotion == true) {
      for (var item in EmotionType.values) {
        setEmotion(item, notify: notify, value: false);
      }

      hasSelectedEmotion = false;
      emotions.clear();
      _comment = null;
      dataHasBeenSent = true;
    }
  }
}
