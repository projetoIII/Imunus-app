import 'package:imunus/domain/entities/emotion.dart';
import 'package:imunus/domain/entities/emotion_report.dart';

abstract class IEmotionsService {
  Future<List<EmotionReport>> list(DateTime dateTime);
  Future<EmotionReport> getById(dynamic id);
  Future<EmotionReport> post(EmotionReport emotion);
  Future<dynamic> delete(Emotion emotion);
}
