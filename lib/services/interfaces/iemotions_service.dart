import 'package:imunus/domain/entities/emotion.dart';

abstract class IEmotionsService {
  Future<List<Emotion>> list(DateTime dateTime);
  Future<Emotion> getById(dynamic id);
  Future<Emotion> post(Emotion emotion);
  Future<dynamic> delete(Emotion emotion);
}
