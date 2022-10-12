import 'package:flutter/material.dart';
import 'package:imunus/view/components/date_filter.dart';
import 'package:imunus/view/screens/flows/symptoms/select_symptom_flow.dart';
import 'package:imunus/view/screens/flows/symptoms_flow.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/navigation.dart';
import 'package:imunus/view/states/symptoms_provider.dart';
import 'package:provider/provider.dart';

class SymptomsScreen extends StatefulWidget {
  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  SymptomsProvider? _provider;

  @override
  void dispose() {
    _provider!.clear(notify: false);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<SymptomsProvider>(context);

    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: _body(),
      ),
    );
  }

  _appBar() => AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: AppColors.blue,
          onPressed: () {
            switch (_provider!.flow) {
              case SymptomsFlow.selectSymptom:
              default:
                Navigation.back(context);
                break;
            }
          },
        ),
        actions: [
          DateFilter(callback: () {
            _provider!.setFlow(SymptomsFlow.listSymptoms);
          })
        ],
      );

  _body() {
    switch (_provider!.flow) {
      case SymptomsFlow.selectSymptom:
        return const SelectSymptomFlow();
      case SymptomsFlow.newSymptom:
      case SymptomsFlow.comment:
      case SymptomsFlow.listSymptoms:
      default:
        return Container();
    }
  }
}
