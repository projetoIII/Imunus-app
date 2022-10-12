import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/emotion.dart';
import 'package:imunus/domain/entities/emotion_report.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/view/components/emotion_card.dart';
import 'package:imunus/view/controllers/emotions_controller.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/utils.dart';
import 'package:imunus/view/states/date_filter_provider.dart';
import 'package:provider/provider.dart';

class EmotionReportFlow extends StatefulWidget {
  const EmotionReportFlow({Key? key}) : super(key: key);

  @override
  State<EmotionReportFlow> createState() => _EmotionReportFlowState();
}

class _EmotionReportFlowState extends State<EmotionReportFlow> {
  DateFilterProvider? _dateFilterProvider;

  final _controller = locator<EmotionsController>();

  Future<List<EmotionReport>>? _future;

  @override
  Widget build(BuildContext context) {
    _future = _controller.list(context);
    _dateFilterProvider ??= Provider.of<DateFilterProvider>(context);

    return FutureBuilder(
        future: _future!,
        builder: (_, AsyncSnapshot<List<EmotionReport>?> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child:
                  Text("Não foi possível carregar os dados: ${snapshot.error}"),
            );
          } else if (snapshot.hasData ||
              snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data!.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    _title(),
                    _noReport(),
                  ],
                ),
              );
            }
            List<Emotion> emotions = [];
            List<String> comments = [];

            for (var report in snapshot.data!) {
              emotions.addAll(report.emotions);
              if (report.comment != null) comments.add(report.comment!);
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _title(),
                  _emotions(emotions),
                  _comments(comments),
                ],
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        });
  }

  _title() => Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 30),
        child: Center(
          child: Text(
            "Seus sentimentos no dia (${Utils.formatDate(_dateFilterProvider!.selectedDate)})",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      );

  _emotions(List<Emotion> emotions) => GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: emotions.map((e) {
          var values = Utils.getEmotionAssets(e.emotion);
          return EmotionCard(
            title: values.title,
            iconPath: values.iconPath,
            emotionType: e.emotion,
            color: AppColors.primaryOrange,
          );
        }).toList(),
      );

  _comments(List<String> comments) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 22),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 18.0),
                child: Text(
                  "Comentários:",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              comments.isEmpty
                  ? const Text("Nenhum comentário foi informado.")
                  : Column(
                      children: comments.map((e) => _commentCard(e)).toList()),
            ],
          ),
        ),
      );

  Widget _commentCard(String comment) => Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Card(
            color: AppColors.gray300,
            child: Container(
              width: MediaQuery.of(context).size.width,
              constraints: const BoxConstraints(minHeight: 72),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(comment, style: const TextStyle(fontSize: 16)),
              ),
            )),
      );

  _noReport() => const Text("Nenhum sentimento foi informado neste dia.",
      style: TextStyle(fontSize: 18));
}
