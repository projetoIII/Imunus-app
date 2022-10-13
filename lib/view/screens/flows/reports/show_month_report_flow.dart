import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imunus/core/enums/emotion_type.dart';
import 'package:imunus/core/enums/symptom_type.dart';
import 'package:imunus/domain/entities/report.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/view/controllers/report_controller.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/utils.dart';
import 'package:imunus/view/states/report_provider.dart';
import 'package:provider/provider.dart';

class MonthReportFlow extends StatefulWidget {
  const MonthReportFlow({Key? key}) : super(key: key);

  @override
  State<MonthReportFlow> createState() => _MonthReportFlowState();
}

class _MonthReportFlowState extends State<MonthReportFlow> {
  ReportProvider? _provider;
  final _controller = locator<ReportController>();

  Future<List<Report>>? _emotionReports;
  Future<List<Report>>? _symptomReports;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<ReportProvider>(context);

    if (_provider != null) {
      _emotionReports = _controller.getEmotionsReport(context);
      _symptomReports = _controller.getSymptomsReport(context);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_month(), _symptoms(), SizedBox(height: 48), _emotions()],
    );
  }

  _month() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
        child: Text(
          "${Utils.getMonthLabel(_provider!.month!)}, ${_provider!.dateTime!.year}",
          style: const TextStyle(
              color: AppColors.blue, fontWeight: FontWeight.bold, fontSize: 14),
        ),
      );

  _symptoms() => FutureBuilder(
      future: _symptomReports,
      builder: (context, AsyncSnapshot<List<Report>?> snapshot) {
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
                  _title(isSymptom: true),
                  _noReport(),
                ],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                _title(isSymptom: true),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: snapshot.data!
                        .map((e) => _card(e, isSymptom: true))
                        .toList(),
                  ),
                )
              ],
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      });

  _emotions() => FutureBuilder(
      future: _emotionReports,
      builder: (context, AsyncSnapshot<List<Report>?> snapshot) {
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
                  _title(isSymptom: false),
                  _noReport(),
                ],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                _title(isSymptom: false),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: snapshot.data!
                        .map((e) => _card(e, isSymptom: false))
                        .toList(),
                  ),
                )
              ],
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      });

  _title({isSymptom = true}) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
                text: "COM BASE EM SEUS ",
                children: [
                  TextSpan(
                      text: isSymptom ? "SINTOMAS" : "SENTIMENTOS",
                      style: TextStyle(
                          color: isSymptom
                              ? AppColors.primaryOrange
                              : AppColors.green))
                ],
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black)),
          ),
          const SizedBox(height: 5),
          Text(
            "Seus ${isSymptom ? "sintomas" : "sentimentos"} mais frequentes esse mês foram:"
                .toUpperCase(),
            style: const TextStyle(
                color: AppColors.gray, fontWeight: FontWeight.bold),
          )
        ],
      );

  Widget _card(Report report, {isSymptom = true}) {
    var assets = isSymptom
        ? Utils.getSymptomAssets(report.symptom!)
        : Utils.getEmotionAssets(report.emotion!);

    return Card(
      color: isSymptom ? AppColors.primaryOrange : AppColors.green,
      child: Container(
        width: MediaQuery.of(context).size.width,
        constraints: const BoxConstraints(minHeight: 150),
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  assets.iconPath,
                  width: 80,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      assets.title.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    const Text("DIAS",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(report.days.join(", "),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade100)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: Text("COMENTÁRIOS",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: report.comments!
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          "\"${e.toUpperCase()}\"",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade100),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }

  _noReport() => const Text("Nenhum sentimento foi informado neste mês.",
      style: TextStyle(fontSize: 18));
}
