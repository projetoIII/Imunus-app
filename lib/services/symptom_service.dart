import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:imunus/domain/entities/symptom.dart';
import 'package:imunus/services/interfaces/isymptom_service.dart';

class SymptomService implements ISymptomService {
  final _repo =
      FirebaseFirestore.instance.collection('Symptoms').withConverter<Symptom>(
            fromFirestore: ((snapshot, options) =>
                Symptom.fromJson(snapshot.data()!)),
            toFirestore: ((report, options) => report.toJson()),
          );
  @override
  Future delete(Symptom symptom) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Symptom> getById(id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<List<Symptom>> list(DateTime dateTime) {
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future<Symptom> post(Symptom symptom) async {
    var response = await _repo.add(symptom).then((value) {
      var snapshot = value.get();
      return snapshot;
    });
    var data = response.data()!;

    return data;
  }
}
