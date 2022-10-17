import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:imunus/core/enums/symptom_type.dart';
import 'package:imunus/domain/entities/report/report.dart';
import 'package:imunus/domain/entities/symptom/symptom.dart';
import 'package:imunus/services/interfaces/isymptom_service.dart';
import 'package:imunus/view/shared/utils.dart';

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
  Future<List<Symptom>> list(DateTime dateTime) async {
    var result = await _repo.get().then((value) => value.docs);

    var data = result.map((e) => e.data()).where((element) =>
        element.deletedAt == null &&
        Utils.dateIsInRange(element.reportedAt, dateTime));

    return data.toList();
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

  @override
  Future<List<Report>> report(DateTime dateTime) async {
    List<Report> reports = [];

    var result = await _repo.get().then((value) => value.docs);

    Map<SymptomType, List<Symptom>> table = {
      SymptomType.visionProblem: [],
      SymptomType.muscleWeakness: [],
      SymptomType.confusion: [],
      SymptomType.speakProblem: [],
      SymptomType.muscleTremor: [],
      SymptomType.other: [],
    };

    var data = result.map((e) => e.data()).where((element) =>
        element.deletedAt == null &&
        element.updatedAt != null &&
        Utils.isSameMonth(element.updatedAt!, dateTime));

    for (var symptom in data) {
      table[symptom.symptomType]!.add(symptom);
    }

    for (var symptomType in table.keys) {
      var symptom = table[symptomType]!;

      if (symptom.isNotEmpty) {
        var report = Report(
          symptom: symptomType,
          days: symptom.map((e) => e.reportedAt.day).toList(),
          comments: symptom.map((e) => e.comment ?? "").toList(),
        );
        reports.add(report);
      }
    }

    // Ordering
    reports.sort((b, a) => a.days.length.compareTo(b.days.length));

    return reports;
  }
}
