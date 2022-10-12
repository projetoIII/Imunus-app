import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/emotion.dart';
import 'package:imunus/domain/entities/emotion_report.dart';
import 'package:imunus/services/interfaces/iemotions_service.dart';
import 'package:imunus/view/shared/utils.dart';

class EmotionService implements IEmotionsService {
  final _repo = FirebaseFirestore.instance
      .collection('Emotions')
      .withConverter<EmotionReport>(
        fromFirestore: ((snapshot, options) =>
            EmotionReport.fromJson(snapshot.data()!)),
        toFirestore: ((report, options) => report.toJson()),
      );

  @override
  Future delete(Emotion emotion) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<EmotionReport> getById(id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<List<EmotionReport>> list(DateTime dateTime) async {
    var result = await _repo.get().then((value) => value.docs);

    var data = result.map((e) => e.data()).where((element) =>
        element.deletedAt == null &&
        element.updatedAt != null &&
        Utils.dateIsInRange(element.updatedAt!, dateTime));

    return data.toList();
  }

  @override
  Future<EmotionReport> post(EmotionReport report) async {
    var response = await _repo.add(report).then((value) {
      var snapshot = value.get();
      return snapshot;
    });
    var data = response.data()!;

    return data;
  }
}
