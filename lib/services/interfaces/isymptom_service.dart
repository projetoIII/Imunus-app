import 'package:imunus/domain/entities/symptom.dart';

abstract class ISymptomService {
  Future<List<Symptom>> list(DateTime dateTime);
  Future<Symptom> getById(dynamic id);
  Future<Symptom> post(Symptom emotion);
  Future<dynamic> delete(Symptom emotion);
}
