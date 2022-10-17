import 'package:imunus/domain/entities/emotion/emotion.dart';
import 'package:imunus/domain/entities/emotion_report/emotion_report.dart';
import 'package:imunus/domain/entities/report/report.dart';

abstract class IEmotionsService {
  Future<List<EmotionReport>> list(DateTime dateTime);
  Future<EmotionReport> getById(dynamic id);
  Future<EmotionReport> post(EmotionReport emotion);
  Future<dynamic> delete(Emotion emotion);
  Future<List<Report>> report(DateTime dateTime);
}
