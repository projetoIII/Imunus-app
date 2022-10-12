import 'package:flutter/material.dart';
import 'package:imunus/domain/entities/symptom.dart';
import 'package:imunus/infrastructure/locator.dart';
import 'package:imunus/view/components/symptom_card.dart';
import 'package:imunus/view/controllers/symptom_controller.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/utils.dart';
import 'package:imunus/view/states/date_filter_provider.dart';
import 'package:provider/provider.dart';

class ListSymptomFlow extends StatefulWidget {
  const ListSymptomFlow({Key? key}) : super(key: key);

  @override
  State<ListSymptomFlow> createState() => _ListSymptomFlowState();
}

class _ListSymptomFlowState extends State<ListSymptomFlow> {
  DateFilterProvider? _dateFilterProvider;

  final _controller = locator<SymptomController>();

  Future<List<Symptom>>? _future;

  @override
  Widget build(BuildContext context) {
    _future = _controller.list(context);
    _dateFilterProvider ??= Provider.of<DateFilterProvider>(context);

    return FutureBuilder(
        future: _future!,
        builder: (_, AsyncSnapshot<List<Symptom>?> snapshot) {
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
            List<Symptom> symptoms = [];
            List<String> comments = [];

            for (var symptom in snapshot.data!) {
              symptoms.add(symptom);
              if (symptom.comment != null) comments.add(symptom.comment!);
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _title(),
                  _cards(symptoms),
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
            "Seus sintomas no dia (${Utils.formatDate(_dateFilterProvider!.selectedDate)})",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      );

  _cards(List<Symptom> symptoms) => GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: symptoms
            .map((e) => SymptomCard(
                  symptom: e.symptomType,
                  disableClick: true,
                ))
            .toList(),
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

  _noReport() => const Text("Nenhum sintoma foi informado neste dia.",
      style: TextStyle(fontSize: 18));
}
