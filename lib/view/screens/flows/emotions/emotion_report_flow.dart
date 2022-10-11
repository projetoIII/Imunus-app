import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/emotion_report.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/view/controllers/emotions_controller.dart';

class EmotionReportFlow extends StatefulWidget {
  const EmotionReportFlow({Key? key}) : super(key: key);

  @override
  State<EmotionReportFlow> createState() => _EmotionReportFlowState();
}

class _EmotionReportFlowState extends State<EmotionReportFlow> {
  final _controller = locator<EmotionsController>();

  Future<EmotionReport>? _future;

  @override
  Widget build(BuildContext context) {
    _future ??= _controller.postReport(context);

    return FutureBuilder(
        future: _future!,
        builder: (_, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child:
                  Text("Não foi possível carregar os dados: ${snapshot.error}"),
            );
          } else if (snapshot.hasData ||
              snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                _title(),
              ],
            );
          }

          return const Center(child: CircularProgressIndicator());
        });
  }

  _title() => const Padding(
        padding: EdgeInsets.only(top: 16.0, bottom: 40),
        child: Text(
          "Hoje (${''})",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      );
}
