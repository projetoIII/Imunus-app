import 'package:flutter/material.dart';
import 'package:imunus/view/screens/flows/report_flows.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/shared/navigation.dart';
import 'package:imunus/view/states/report_provider.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:provider/provider.dart';

class SelectMonthFlow extends StatefulWidget {
  const SelectMonthFlow({Key? key}) : super(key: key);

  @override
  State<SelectMonthFlow> createState() => _SelectMonthFlowState();
}

class _SelectMonthFlowState extends State<SelectMonthFlow> {
  ReportProvider? _provider;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<ReportProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          _label(),
          _monthPicker(context),
          _image(),
          if (_provider!.month != null) _saveButton(),
        ],
      ),
    );
  }

  _label() => Padding(
        padding: const EdgeInsets.only(top: 38.0),
        child: Text(
          "Selecione o mês do ano que deseja consultar sua caminhada"
              .toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      );

  _monthPicker(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: TextButton(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: AppColors.primaryOrange,
                ),
                const SizedBox(width: 10),
                Text(
                  "Selecionar data".toUpperCase(),
                  style: const TextStyle(color: AppColors.primaryOrange),
                )
              ],
            ),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.orange200)),
          onPressed: () async {
            var date = await showMonthYearPicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2019),
                lastDate: DateTime(2100));

            if (date != null) {
              _provider!.setDateTime(date);
            }
          },
        ),
      );

  _image() =>
      Image.asset("assets/report/sammy-man-with-pencil-and-calendar 1.png");

  _saveButton() => Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.blue),
            ),
            onPressed: () {
              _provider!.setFlow(ReportFlows.showMonthReport);
            },
            child: SizedBox(
              width: 200,
              height: 28,
              child: Center(
                child: Text(
                  "Consultar".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )),
      );
}
