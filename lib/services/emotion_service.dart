import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:imunus/core/enums/emotion_type.dart';
import 'package:imunus/domain/entities/emotion.dart';
import 'package:imunus/domain/entities/emotion_report.dart';
import 'package:imunus/domain/entities/report.dart';
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

  @override
  Future<List<Report>> report(DateTime dateTime) async {
    List<Report> reports = [];

    var result = await _repo.get().then((value) => value.docs);

    Map<EmotionType, List<Emotion>> table = {
      EmotionType.happy: [],
      EmotionType.sad: [],
      EmotionType.confident: [],
      EmotionType.sensible: [],
      EmotionType.distracted: [],
      EmotionType.focused: [],
      EmotionType.relaxed: [],
      EmotionType.active: [],
      EmotionType.down: [],
      EmotionType.sociable: [],
      EmotionType.keyedUp: [],
      EmotionType.nervous: [],
    };

    var data = result.map((e) => e.data()).where((element) =>
        element.deletedAt == null &&
        element.updatedAt != null &&
        Utils.isSameMonth(element.updatedAt!, dateTime));

    for (var emotionReport in data) {
      for (var emotion in emotionReport.emotions) {
        table[emotion.emotion]!.add(Emotion(
          emotion: emotion.emotion,
          comment: emotionReport.comment,
          reportedAt: emotionReport.createAt,
        ));
      }
    }

    for (var emotionType in table.keys) {
      var emotions = table[emotionType]!;

      if (emotions.isNotEmpty) {
        var report = Report(
          emotion: emotionType,
          days: emotions.map((e) => e.reportedAt!.day).toList(),
          comments: emotions.map((e) => e.comment ?? "").toList(),
        );
        reports.add(report);
      }
    }

    // Ordering
    reports.sort((b, a) => a.days.length.compareTo(b.days.length));

    return reports;
  }
}
