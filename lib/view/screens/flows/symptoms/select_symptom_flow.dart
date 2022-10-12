import 'package:flutter/material.dart';
import 'package:imunus/core/enums/symptom_type.dart';
import 'package:imunus/view/components/home_card.dart';
import 'package:imunus/view/components/symptom_card.dart';
import 'package:imunus/view/screens/flows/symptoms_flow.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/states/symptoms_provider.dart';
import 'package:provider/provider.dart';

class SelectSymptomFlow extends StatefulWidget {
  const SelectSymptomFlow({Key? key}) : super(key: key);

  @override
  State<SelectSymptomFlow> createState() => _SelectSymptomFlowState();
}

class _SelectSymptomFlowState extends State<SelectSymptomFlow> {
  SymptomsProvider? _provider;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<SymptomsProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          _title(),
          _butterfly(),
          _cards(),
          _saveButton(),
        ],
      ),
    );
  }

  _title() => const Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Text(
          "Registro de sintomas",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      );

  _butterfly() => Padding(
        padding: const EdgeInsets.only(
          top: 38.0,
        ),
        child: Image.asset("assets/symptoms/Group 31.png"),
      );

  _cards() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            childAspectRatio: .8,
            children: const [
              SymptomCard(symptom: SymptomType.visionProblem),
              SymptomCard(symptom: SymptomType.muscleWeakness),
              SymptomCard(symptom: SymptomType.confusion),
              SymptomCard(symptom: SymptomType.speakProblem),
              SymptomCard(symptom: SymptomType.muscleTremor),
              SymptomCard(symptom: SymptomType.other),
            ]),
      );

  _saveButton() => TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            _provider!.hasSelectedSymptom != true
                ? Colors.grey.shade300
                : AppColors.blue500),
      ),
      onPressed: _provider!.hasSelectedSymptom != true
          ? null
          : () {
              _provider!.symptom != SymptomType.other
                  ? _provider!.setFlow(SymptomsFlow.comment)
                  : _provider!.setFlow(SymptomsFlow.newSymptom);
            },
      child: SizedBox(
        width: 200,
        height: 28,
        child: Center(
          child: Text(
            "Salvar".toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ));
}
