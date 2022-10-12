import 'package:flutter/material.dart';
import 'package:imunus/core/enums/symptom_type.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/utils.dart';
import 'package:imunus/view/states/symptoms_provider.dart';
import 'package:provider/provider.dart';

class SymptomCard extends StatefulWidget {
  final SymptomType symptom;
  final bool? disableClick;

  const SymptomCard({Key? key, required this.symptom, this.disableClick})
      : super(key: key);

  @override
  State<SymptomCard> createState() => _SymptomCardState();
}

class _SymptomCardState extends State<SymptomCard> {
  late String imagePath, title;
  late SymptomType symptomType;
  late bool disableClick;

  SymptomsProvider? _provider;

  @override
  void initState() {
    super.initState();

    symptomType = widget.symptom;
    var assets = Utils.getSymptomAssets(symptomType);
    imagePath = assets.iconPath;
    title = assets.title;
    disableClick = widget.disableClick ?? false;
  }

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<SymptomsProvider>(context);

    return Card(
      color: _provider!.symptom == symptomType
          ? AppColors.primaryOrange
          : AppColors.helperOrange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
      child: InkWell(
        onTap: disableClick
            ? null
            : () {
                _provider!.setSymptom(symptomType);
              },
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath),
              const SizedBox(height: 10),
              Text(title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
